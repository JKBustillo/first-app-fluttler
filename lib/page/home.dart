import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Drawer _getDrawer(BuildContext context) {
    var header = new DrawerHeader(child: new Text("Drawer"),);
    var info = new AboutListTile(
      child: new Text("About app"),
      applicationVersion: "v1.0.0",
      applicationName: "Drawer",
      applicationIcon: new Icon(Icons.note),
      icon: new Icon(Icons.info),
    );

    ListTile _getItem(Icon icon, String description, String route) {
      return new ListTile(
        title: new Text(description),
        leading: icon,
        onTap: () {
          setState(() {
            Navigator.of(context).pushNamed(route);
          });
        }
      ); 
    }

    ListView listView = new ListView(children: <Widget>[
      header,
      _getItem(new Icon(Icons.home), "Home", "/"),
      _getItem(new Icon(Icons.settings), "Settings", "/settings"),
      _getItem(new Icon(Icons.battery_charging_full), "Battery", "/battery"),
      info
    ]);

    return new Drawer(
      child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
         title: new Text("Home page")
       ),
       drawer: _getDrawer(context),
    );
  }
}