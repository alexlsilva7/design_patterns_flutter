import 'package:design_patters_flutter/adapter/models/contact.dart';

abstract class IContactsAdapter {
  List<Contact> getContacts();
}
