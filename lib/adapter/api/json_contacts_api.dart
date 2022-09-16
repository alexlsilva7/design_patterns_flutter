class JsonContactsAPI {
  final String _contacts = '''{
    "contacts": [
      "full_name":"Alex Lopes",
      "email": "alex@gmail.com",
      "favorite":true,
    ]
  }''';
  String getContactsJson() => _contacts;
}
