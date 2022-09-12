import 'dart:convert';

import 'package:design_patters_flutter/injecao_de_dependencias/services/interface/ihttp_service.dart';
import 'package:http/http.dart' as http;

class HttpService implements IHttpService {
  final http.Client client;

  HttpService(this.client);

  @override
  Future get(String url) async {
    return jsonDecode((await client.get(Uri.parse(url))).body);
  }
}
