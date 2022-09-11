// ignore_for_file: public_member_api_docs, sort_constructors_first
class Person {
  final String name;
  final int old;
  final int cpf;
  final String nickname;

  Person(
      {required this.name,
      required this.old,
      required this.cpf,
      required this.nickname});

  Person copyWith({
    String? name,
    int? old,
    int? cpf,
    String? nickname,
  }) {
    return Person(
      name: name ?? this.name,
      old: old ?? this.old,
      cpf: cpf ?? this.cpf,
      nickname: nickname ?? this.nickname,
    );
  }
}
