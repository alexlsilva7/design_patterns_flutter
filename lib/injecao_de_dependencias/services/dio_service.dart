import 'package:design_patters_flutter/injecao_de_dependencias/services/interface/ihttp_service.dart';
import 'package:dio/dio.dart';

class DioService implements IHttpService {
  final Dio dio;

  DioService(this.dio);

  @override
  Future get(String url) async {
    return (await dio.get(url)).data;
  }
}
