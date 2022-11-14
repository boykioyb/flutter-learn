// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    nickname: json['nickname'],
    anchorId: json['anchorId'],
    avatar: json['avatar'],
    liveId: json['liveId'],
    type: json['type'],
    price: json['price'],
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'nickname': instance.nickname,
      'anchorId': instance.anchorId,
      'avatar': instance.avatar,
      'liveId': instance.liveId,
      'type': instance.type,
      'price': instance.price,
    };
