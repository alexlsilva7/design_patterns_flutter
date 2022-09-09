import 'package:design_patters_flutter/models/todo_model.dart';
import 'package:design_patters_flutter/repository_pattern/todo_data_source.dart';

class TodoRepository {
  //Repository
  //Basicamente é um service com mais de uma fonte de dados (data source).
  final TodoDataSource _todoDataSource = TodoDataSource();

  Future<List<TodoModel>> getAll() async {
    final json =
        await _todoDataSource.fetchTodos() as List<Map<String, dynamic>>;
    return json.map(TodoModel.fromJson).toList();
  }
}
