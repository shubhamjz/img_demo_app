import 'package:flutter/material.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation:0.0,
        title: Text(
          'More', style:TextStyle(
          color: Colors.black,
        ),
        ),
      ),
      body:Column(
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
                          'Request PI Count',
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.grey),
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
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:12.0),
                child: Divider(
                  height: 2.0,
                  color: Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  //  final snackBar = SnackBar(content: Text("${items[index]}"));
                  // Scaffold.of(context).showSnackBar(snackBar);
                  // print(items[index]);
                  Navigator.pushNamed(context, '/settings');

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                          const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
                          child: Text(
                            'Settings',
                            style: TextStyle(
                                fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.grey),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:12.0),
                child: Divider(
                  height: 2.0,
                  color: Colors.grey,
                ),
              )
            ],
          ),
    );
  }
}
