import 'package:design_patters_flutter/adapter/contact.dart';

abstract class IContactsAdapter {
  List<Contact> getContacts();
}
