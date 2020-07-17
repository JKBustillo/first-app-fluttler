import 'package:flutter/material.dart';
import 'package:first_app/pages/home.dart';
import 'package:first_app/pages/video.dart';
import 'package:first_app/pages/contact.dart';
void main() {
  runApp(new MaterialApp(
    home: MyNavigator(),
  ));
}

class MyNavigator extends StatefulWidget {
  MyNavigator({Key key}) : super(key: key);

  @override
  _MyNavigatorState createState() => _MyNavigatorState();
}

class _MyNavigatorState extends State<MyNavigator> with SingleTickerProviderStateMixin {
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
        title: new Text("Bottom Navigation Bar"),
      ),
      body: new TabBarView(
        children: <Widget>[new Home(), new Contact(), new Video()],
        controller: controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.blueAccent,
        child: new TabBar(
          tabs: <Tab> [
            new Tab(
              icon: new Icon(Icons.alarm),
            ),new Tab(
              icon: new Icon(Icons.watch_later),
            ),new Tab(
              icon: new Icon(Icons.airplanemode_active),
            )
          ],
          controller: controller,
        ),
      ),
    );
  }
}