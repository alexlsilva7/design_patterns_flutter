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
}
