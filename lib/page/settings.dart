import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static const String routeName = "/settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Settings"),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Settings")
        ),
      ),
    );
  }
}