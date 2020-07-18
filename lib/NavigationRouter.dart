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
            Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new Second())
            );
          },
        )
      ),
    );
  }
}

class Second extends StatelessWidget {
  const Second({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Second screen")
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text("Go back"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}