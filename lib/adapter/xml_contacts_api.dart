class XMLContactsAPI {
  final String _contactsXML = '''<?xml version="1.0" encoding="UTF-8"?>
  <contacts>
    <contact>
      <fullname>Alex Lopes</full_name>
      <email>alex@gmail.com</email>
      <favorite>true</favorite>
    </contact>
  </contacts>''';

  String getContactsXML() => _contactsXML;
}
