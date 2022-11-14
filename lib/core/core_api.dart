import 'package:dio/dio.dart';
import 'package:learn_flutter/models/user.dart';

class CoreApi {
  final Dio _dio = Dio();

  final _baseUrl = 'http://mmlive.hoadenhat.com/api/mmlive/';

  Future<User> doGet(String url) async {
// Optionally the request above could also be done as
    Response response = await _dio.get(_baseUrl + url);
    print(response.data.toString());
    User user = User.fromJson(response.data);
    return user;
  }
}
