import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyAlert(),
  ));
}

class MyAlert extends StatefulWidget {
  MyAlert({Key key}) : super(key: key);

  @override
  _MyAlertState createState() => _MyAlertState();
}

class _MyAlertState extends State<MyAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
         title: new Text("Demo Alert Dialog")
       ),
       body: new Container(
         child: new Center(
           child: new Column(
             children: <Widget>[
               new TextField(
                 decoration: new InputDecoration(
                   hintText: "Type something"
                 ),
               ),
               new RaisedButton(
                 child: new Text("See alert"),
                 onPressed: null
               )
             ],
           ),
         ),
       ),
    );
  }
}