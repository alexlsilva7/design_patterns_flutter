import 'package:design_patters_flutter/repository_pattern/todo_data_source.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class DioMock extends Mock implements Dio {}

const jsonResponse = r'''[
  {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false
  },
  {
    "userId": 1,
    "id": 2,
    "title": "quis ut nam facilis et officia qui",
    "completed": false
  },
  {
    "userId": 1,
    "id": 3,
    "title": "fugiat veniam minus",
    "completed": false
  },
  {
    "userId": 1,
    "id": 4,
    "title": "et porro tempora",
    "completed": true
  },
]''';

void main() {
  late Dio dio;

  group("todo data source", () {
    setUp(() {
      dio = Dio();
    });

    test("deve retornar List<Map>", () async {
      final dataSource = TodoDataSource(dio: dio);
      final todos = await dataSource.fetchTodos();
      expect(todos, isA<List<Map>>());
    });
  });
}
