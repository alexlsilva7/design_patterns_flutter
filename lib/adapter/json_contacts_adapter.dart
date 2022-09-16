import 'dart:convert';

import 'package:design_patters_flutter/adapter/api/json_contacts_api.dart';
import 'package:design_patters_flutter/adapter/interface/i_contacts_adapter.dart';
import 'package:design_patters_flutter/adapter/models/contact.dart';

class JsonContactsAdapter implements IContactsAdapter {
  final JsonContactsAPI api = JsonContactsAPI();

  @override
  List<Contact> getContacts() {
    final contactsJson = api.getContactsJson();
    final contactsList = _parseContactsJson(contactsJson);
    return contactsList;
  }

  List<Contact> _parseContactsJson(String contactsJson) {
    var contactsMap = jsonDecode(contactsJson);
    var contacts = contactsMap['contacts'] as List;
    return contacts.map((contact) => Contact.fromJson(contact)).toList();
  }
}
