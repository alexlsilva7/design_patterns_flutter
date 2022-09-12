import 'package:dio/dio.dart';

class TodoDataSource {
  final Dio dio;
  final url = 'https://jsonplaceholder.typicode.com/todos';

  TodoDataSource({required this.dio});

  Future<List<Map>> fetchTodos() async {
    final response = await dio.get(url);
    return (response.data as List).map((e) => e as Map).toList();
  }
}
