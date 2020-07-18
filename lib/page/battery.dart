import 'package:flutter/material.dart';

class Battery extends StatelessWidget {
  static const String routeName = "/battery";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Battery"),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Battery")
        ),
      ),
    );
  }
}