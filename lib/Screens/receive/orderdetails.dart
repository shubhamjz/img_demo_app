import 'package:flutter/material.dart';


class OrderDetails extends StatefulWidget {
  OrderDetails({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  FocusNode myFocusNode;
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(10, (i) => "TRK1Z0MY89202005161 $i");
  var items = List<String>();


  @override
  void initState() {
    items.addAll(duplicateItems);
    myFocusNode = FocusNode();
    super.initState();
  }


  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if(query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if(item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          title:Text('Do # 8417747649',
            style: TextStyle(color: Colors.black, fontSize: 15.0),
          ),
        ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Center(child: Text('Order Details (Recipt)')),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Text('From DC55'),
                  Text('Total Items : 2')
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Text('To:Store 403'),
                  Text('Created Date : 05/16/2020')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0,right: 20.0,left: 20,),
              child: TextField(
                focusNode: myFocusNode,
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                style: TextStyle(
                    fontSize: 13.0,
                ),
                decoration: InputDecoration(
                    isDense: true,                      // Added this
                    contentPadding: EdgeInsets.all(0),

                    labelStyle: TextStyle(
                        color: Colors.orangeAccent,
                    ),
                    labelText: "Search",
                    hintText: "Start Scanning or entered manually",
                    prefixIcon: Icon(Icons.search,
                      color:  Colors.orangeAccent,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      borderSide: BorderSide(
                        color: Colors.orangeAccent,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  // return ListTile(
                  //   title: Text('${items[index]}'),
                  // );
                  return GestureDetector(
                    onTap: () {
                      //  final snackBar = SnackBar(content: Text("${items[index]}"));
                      // Scaffold.of(context).showSnackBar(snackBar);
                      // print(items[index]);
                      Navigator.pushNamed(context, '/orderskudetails');

                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
                                    child: Text(
                                        '${items[index]}',
                                      style: TextStyle(
                                          fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.orange),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                                    child: Text(
                                      'Do # 8417747649',
                                      // subjectList[position],
                                      style: TextStyle(fontSize: 10.0, color: Colors.grey,),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[

                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      size: 25.0,
                                      color: Colors.grey,
                                    ),
                                    // Padding(
                                    //   padding: const EdgeInsets.all(8.0),
                                    //   child: Text(
                                    //     "Overdue",
                                    //     style: TextStyle(color: Colors.grey, fontSize: 9.0),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            height: 2.0,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
