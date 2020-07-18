import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MySnackBar(),
  ));
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("SnackBar"),
      ),
      body: new Center(
        child: new MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: new Text("Press me"),
      onPressed: () {
        Scaffold.of(context).showSnackBar(new SnackBar(
          content: new Text("Couldn't you help it, huh?"),
          duration: new Duration(seconds: 5),
        ));
      },
    );
  }
}