import 'package:design_patters_flutter/injecao_de_dependencias/services/interface/ihttp_service.dart';

class PostDataSource {
  final IHttpService service;
  final url = 'https://jsonplaceholder.typicode.com/posts';

  PostDataSource(this.service);

  Future<List<Map>> fetchPosts() async {
    final data = await service.get(url);
    return (data as List).map((e) => e as Map).toList();
  }
}
