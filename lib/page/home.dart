import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  ListView listView = new ListView(children: <Widget>[
    new ListTile(
      title: new Text("Home"),
      leading: new Icon(Icons.home),
    ),
    new ListTile(
      title: new Text("Battery"),
      leading: new Icon(Icons.battery_charging_full),
    ),
    new ListTile(
      title: new Text("Settings"),
      leading: new Icon(Icons.settings)
    )
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
         title: new Text("Home page")
       ),
       drawer: new Drawer(
         child: listView,
       ),
    );
  }
}