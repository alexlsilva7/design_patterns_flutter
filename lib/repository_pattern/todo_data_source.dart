import 'package:dio/dio.dart';

class TodoDataSource {
  final dio = Dio();
  final url = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<Map>> fetchTodos() async {
    final response = await dio.get(url);
    return response.data;
  }
}
