import 'package:flutter/material.dart';
import 'package:first_app/contact/model/contactModel.dart';
import 'package:first_app/contact/pages/contactItem.dart';

class ContactList extends StatelessWidget {
  final List<ContactModel> _contacts;

  ContactList(this._contacts);

  List<ContactItem> _buildContactList() {
    return _contacts
      .map((contact) => new ContactItem(contact))
      .toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _buildContactList(),
    );
  }
}