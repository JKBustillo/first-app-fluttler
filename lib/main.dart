import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyTabs(),
  ));
}

class MyTabs extends StatefulWidget {
  MyTabs({Key key}) : super(key: key);

  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
         title: new Text("My Tabs"),
         backgroundColor: Colors.redAccent,
         bottom: new TabBar(
           tabs: <Widget>[
             new Tab(
               icon: new Icon(Icons.home),
             ),
             new Tab(
               icon: new Icon(Icons.video_library),
             ),
             new Tab(
               icon: new Icon(Icons.contacts),
             )
           ],
           controller: controller,
         ),
       ),
    );
  }
}