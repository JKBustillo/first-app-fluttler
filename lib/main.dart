import 'package:flutter/material.dart';
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