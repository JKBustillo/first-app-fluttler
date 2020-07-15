import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          new Icon(
            Icons.videocam,
            size: 170.0,
            color: Colors.green
          ),
          new Text("Second tab")
        ],
      ),
    );
  }
}