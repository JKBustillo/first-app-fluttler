import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyFirst(),
  ));
}

class MyFirst extends StatelessWidget {
  const MyFirst({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("First Screen")
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text("Show new screen"),
          onPressed: () {

          },
        )
      ),
    );
  }
}