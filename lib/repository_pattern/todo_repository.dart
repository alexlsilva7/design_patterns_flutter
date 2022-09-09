import 'package:design_patters_flutter/repository_pattern/todo_model.dart';
import 'package:dio/dio.dart';

class TodoRepository {
  final dio = Dio();
  final url = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<TodoModel>> fetchTodos() async {
    final response = await dio.get(url);
    final list = response.data as List;
    List<TodoModel> todos = list.map((e) => TodoModel.fromJson(e)).toList();

    return todos;
  }
}
