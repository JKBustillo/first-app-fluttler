import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          new Icon(
            Icons.home,
            size: 170.0,
            color: Colors.blue
          ),
          new Text("First tab")
        ],
      ),
    );
  }
}