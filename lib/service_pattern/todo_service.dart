import 'package:design_patters_flutter/models/todo_model.dart';
import 'package:dio/dio.dart';

class TodoService {
  final dio = Dio();
  final url = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<TodoModel>> fetchTodos() async {
    final response = await dio.get(url);
    final list = response.data as List<Map<String, dynamic>>;
    return list.map(TodoModel.fromJson).toList();
  }
}
