import 'package:dio/dio.dart';

part 'user.g.dart';

class User {
  String? nickname;

  int? anchorId;

  String? avatar;

  int? liveId;

  int? type;

  int? price;

  User({
    this.nickname,
    this.anchorId,
    this.avatar,
    this.liveId,
    this.type,
    this.price,
  });

  static User fromResult(dynamic map) =>
      User.fromJson(map["user"] as Map<String, dynamic>);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  static Future<User> doGet(String url) async {
    final Dio _dio = Dio();

    final _baseUrl = 'http://mmlive.hoadenhat.com/api/mmlive/';
// Optionally the request above could also be done as
    Response response = await _dio.get(_baseUrl + url);
    User user = User.fromJson(response.data);
    return user;
  }
}
