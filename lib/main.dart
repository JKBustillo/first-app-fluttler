import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() {
  runApp(new MaterialApp(
    home: MyRandomWords(),
  ));
}

class MyRandomWords extends StatefulWidget {

  @override
  _MyRandomWordsState createState() => _MyRandomWordsState();
}

class _MyRandomWordsState extends State<MyRandomWords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
         title: new Text("Infinite List"),
         centerTitle: true,
       ),
    );
  }
}