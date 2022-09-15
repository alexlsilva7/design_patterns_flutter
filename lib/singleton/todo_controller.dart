//https://medium.com/flutter-community/flutter-design-patterns-1-singleton-437f04e923ce

class TodoController {
  static final TodoController _instance = TodoController._internal();

  factory TodoController() => _instance;

  TodoController._internal() {
    print('new instance created');
  }
}
