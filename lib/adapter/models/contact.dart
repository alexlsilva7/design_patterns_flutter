import 'package:xml/xml.dart';

class Contact {
  final String fullName;
  final String email;
  final bool favorite;

  Contact({
    required this.fullName,
    required this.email,
    required this.favorite,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      fullName: json['full_name'],
      email: json['email'],
      favorite: json['favorite'],
    );
  }
  factory Contact.fromXML(XmlElement xml) {
    return Contact(
      fullName: xml.findElements('full_name').first.text,
      email: xml.findElements('email').first.text,
      favorite: xml.findElements('favorite').first.text == 'true',
    );
  }
}
