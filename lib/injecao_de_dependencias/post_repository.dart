import 'package:design_patters_flutter/injecao_de_dependencias/post.dart';
import 'package:design_patters_flutter/injecao_de_dependencias/post_data_source.dart';
import 'package:design_patters_flutter/injecao_de_dependencias/services/interface/ihttp_service.dart';

class PostRepository {
  final IHttpService service;
  late PostDataSource _postDataSource;

  PostRepository(this.service) {
    _postDataSource = PostDataSource(service);
  }

  Future<List<Post>> getAll() async {
    final json =
        await _postDataSource.fetchPosts() as List<Map<String, dynamic>>;
    return json.map(Post.fromJson).toList();
  }
}
