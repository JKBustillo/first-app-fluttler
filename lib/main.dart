import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateless Widget")
      ),
      body: new Container(
        child: Center(
          child: new Column(
            children: <Widget>[
              new Text("Flutter"),
              new Text("se está poniendo"),
              new Text("bien pechi")
            ],
          ),
        )
      ),
    );
  }
}