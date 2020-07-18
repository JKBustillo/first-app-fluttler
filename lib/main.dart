import 'package:flutter/material.dart';
import 'package:first_app/page/home.dart';
import 'package:first_app/page/settings.dart';
import 'package:first_app/page/battery.dart';

void main() {
  runApp(new MaterialApp(
    home: Home(),
    routes: <String, WidgetBuilder> {
      Settings.routeName: (BuildContext context) => new Settings(),
      Battery.routeName: (BuildContext context) => new Battery(),
    },
  ));
}