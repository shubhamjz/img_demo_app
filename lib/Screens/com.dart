import 'package:flutter/material.dart';


class Com extends StatefulWidget {
  Com ({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ComState createState() => _ComState();
}

class _ComState extends State<Com> {
  int _n = 0;
  void add() {
    setState(() {
      _n++;
    });
  }
  void minus() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }
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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Commers',
          style: TextStyle(color: Colors.black, fontSize: 15.0),
        ),
        actions: [
          // action button
          IconButton(
            icon: Icon( Icons.add_shopping_cart, color: Colors.black,),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),

        ],
      ),
      body:Container(
        child: Column(
          children: [
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
                    hintText: "search Item ",
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
                     // Navigator.pushNamed(context, '/orderskudetails');

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
                                      'Refrigerator',
                                      style: TextStyle(
                                          fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.orange),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 5.0),
                                    // child: Text(
                                    //   'Do # 8417747649',
                                    //   // subjectList[position],
                                    //   style: TextStyle(fontSize: 10.0, color: Colors.grey,),
                                    // ),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        new   IconButton(
                                          icon: Icon(
                                            Icons.add_circle_outline,
                                          ),
                                          iconSize: 17,
                                          color: Colors.grey,
                                          onPressed: () {
                                            add();
                                          },
                                        ),
                                        new Text('$_n',
                                            style: new TextStyle(fontSize: 15.0,color:Colors.grey)),
                                        IconButton(
                                          icon: Icon(
                                            Icons.remove_circle_outline,
                                          ),
                                          iconSize: 17,
                                          color: Colors.grey,
                                          onPressed: () {
                                            minus();
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: FlatButton(
                                  textColor: Colors.green,
                                  onPressed: () {
                                    // Respond to button press
                                  },
                                  child: Text(
                                    "Add to cart",
                                  ),
                                ),
                                // child: new Row(
                                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                //   children: <Widget>[
                                //     new   IconButton(
                                //       icon: Icon(
                                //         Icons.add_circle_outline,
                                //       ),
                                //       iconSize: 20,
                                //       color: Colors.orangeAccent,
                                //       onPressed: () {
                                //         add();
                                //       },
                                //     ),
                                //     new Text('$_n',
                                //         style: new TextStyle(fontSize: 15.0)),
                                //     IconButton(
                                //       icon: Icon(
                                //         Icons.remove_circle_outline,
                                //       ),
                                //       iconSize: 20,
                                //       color: Colors.orangeAccent,
                                //       onPressed: () {
                                //         minus();
                                //       },
                                //     ),
                                //   ],
                                // ),

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
      )
    );
  }
}

