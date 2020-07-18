import 'package:flutter/material.dart';
import 'package:first_app/contact/model/contactModel.dart';
import 'package:first_app/contact/pages/contactList.dart';

class Contact extends StatelessWidget {
  _buildList() {
    return <ContactModel>[
      const ContactModel(name: "Rodrigo Morales", email: "rodrigomorales@flutter.com"),
      const ContactModel(name: "Thomas S. Sanchez", email: "thomassanches@flutter.com"),
      const ContactModel(name: "Kellie B. Stephens", email: "kelliestephens@flutter.com"),
      const ContactModel(name: "Dale S. Hunt", email: "dalehunt@flutter.com"),
      const ContactModel(name: "Glenda T. Menzel", email: "glendamenzel@flutter.com"),
      const ContactModel(name: "Grazyna J. Moroney", email: "grazynamoroney@flutter.com"),
      const ContactModel(name: "Robert P. Purvis", email: "robertpurvis@flutter.com"),
      const ContactModel(name: "Rachel R. Nelson", email: "rachelnelson@flutter.com"),
      const ContactModel(name: "Florence W. Sharp", email: "florencesharp@flutter.com"),
      const ContactModel(name: "David C. Smith", email: "davidsmith@flutter.com"),
      const ContactModel(name: "Sarah W. Jackson", email: "sarahjackson@flutter.com"),
      const ContactModel(name: "Melinda W. Bryant", email: "melindabryant@flutter.com"),
      const ContactModel(name: "Josie M. Burruss", email: "josieburruss@flutter.com"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ContactList(_buildList()),
    );
  }
}