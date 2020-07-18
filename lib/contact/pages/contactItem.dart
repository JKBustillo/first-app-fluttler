import 'package:flutter/material.dart';
import 'package:first_app/contact/model/contactModel.dart';

class ContactItem extends StatelessWidget {
  final ContactModel _contact;
  ContactItem(this._contact);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: new CircleAvatar(child: new Text(_contact.name[0])),
      title: new Text(_contact.name),
      subtitle: new Text(_contact.email),
    );
  }
}