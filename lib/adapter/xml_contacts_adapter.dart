import 'package:design_patters_flutter/adapter/api/xml_contacts_api.dart';
import 'package:design_patters_flutter/adapter/interface/i_contacts_adapter.dart';
import 'package:design_patters_flutter/adapter/models/contact.dart';
import 'package:xml/xml.dart';

class XMLContactsAdapter implements IContactsAdapter {
  final XMLContactsAPI api = XMLContactsAPI();

  @override
  List<Contact> getContacts() {
    final contactsXML = api.getContactsXML();
    final contactsList = _parseContactsXML(contactsXML);
    return contactsList;
  }

  List<Contact> _parseContactsXML(String contactsXML) {
    var contactsMap = XmlDocument.parse(contactsXML);
    var contacts = contactsMap.findAllElements('contact');
    return contacts.map((contact) => Contact.fromXML(contact)).toList();
  }
}
