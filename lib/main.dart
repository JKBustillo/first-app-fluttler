import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(new MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => new _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String text = "";

  void onPressButton() {
    setState(() {
      text = new Random().nextInt(100).toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateful Widget"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: new Container(
        child: new Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(text, style: new TextStyle(fontSize: 50.0)),
              new Padding(padding: new EdgeInsets.all(10.0)),
              new RaisedButton(
                child: new Text("Update", style: new TextStyle(color: Colors.white)),
                color: Colors.blueAccent,
                onPressed: onPressButton,
              )
            ],
          ),
        )
      ),
    );
  }
}