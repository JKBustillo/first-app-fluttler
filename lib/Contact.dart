import 'package:flutter/material.dart';
import 'package:first_app/contact/contact.dart';

void main() {
  runApp(new MaterialApp(
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text("Contacts")
      ),
      body: new Contact(),
    ),
  ));
}