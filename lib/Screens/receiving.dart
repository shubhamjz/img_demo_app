import 'package:flutter/material.dart';

class Receiving extends StatefulWidget {

  @override
  _ReceivingState createState() => _ReceivingState();
}

class _ReceivingState extends State<Receiving> {


  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Receive',
          style: TextStyle(color: Colors.black, fontSize: 15.0),
        ),
      ),
      body: new SingleChildScrollView(
        child: Column(
          children: [
            new SizedBox(
                width: width,
                height: height / 3,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.red, Colors.orange]),
                    // borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'What Kind of Shipment did you Receive ?',
                      style: TextStyle(color: Colors.white),
                    ),
                    // child: Column(
                    //   children: [
                    //     Text('What Kind Of of Shipment did you Receive ?'),
                    //   ],

                    //),
                  ),
                )),
            DefaultTabController(
                length: 2, // length of tabs
                initialIndex: 0,
                child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                  Container(
                    child: TabBar(
                      labelColor: Colors.orangeAccent,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.orangeAccent,
                      tabs: [
                        Tab(text: 'Store Shipment'),
                        Tab(text: 'DC Shipment'),
                        // Tab(text: 'Tab 3'),
                        // Tab(text: 'Tab 4'),
                      ],
                    ),
                  ),
                  Container(
                      height: height/2.5, //height of TabBarView
                      decoration: BoxDecoration(
                          border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                      ),
                      child: TabBarView(children: <Widget>[
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              // final snackBar = SnackBar(content: Text("Tap"));
                              Navigator.pushNamed(context, '/orderdetails');
                              // Scaffold.of(context).showSnackBar(snackBar);
                            },
                            child: ListView.builder(
                              itemBuilder: (context, position) {
                                return Column(
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
                                                'TRK 1Z0MY892020051611',
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
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Overdue",
                                                  style: TextStyle(color: Colors.grey, fontSize: 9.0),
                                                ),
                                              ),
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
                                );
                              },
                              itemCount: 10,

                            ),
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              // final snackBar = SnackBar(content: Text("Tap"));
                              Navigator.pushNamed(context, '/orderdetails');
                              // Scaffold.of(context).showSnackBar(snackBar);
                            },
                            child: ListView.builder(
                              itemBuilder: (context, position) {
                                return Column(
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
                                                'TRK 1Z0MY892020051611',
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
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Overdue",
                                                  style: TextStyle(color: Colors.grey, fontSize: 9.0),
                                                ),
                                              ),
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
                                );
                              },
                              itemCount: 10,

                            ),
                          ),
                        ),

                      ])
                  )
                ])
            ),
          ],
        ),
      ),
    );
  }
}
