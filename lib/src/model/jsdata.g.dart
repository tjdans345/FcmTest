// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jsdata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Jsdata _$_$_JsdataFromJson(Map<String, dynamic> json) {
  return _$_Jsdata(
    statusCode: json['statusCode'] as int,
    statusMessage: json['statusMessage'] as String,
    id: json['id'] as int,
    name: json['name'] as String?,
    email: json['email'] as String?,
    birthday: json['birthday'] as String?,
    gender: json['gender'] as String?,
    accessToken: json['accessToken'] as String?,
    state: json['state'] as String?,
  );
}

Map<String, dynamic> _$_$_JsdataToJson(_$_Jsdata instance) => <String, dynamic>{
      'statusCode': instance.statusCode,
      'statusMessage': instance.statusMessage,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'accessToken': instance.accessToken,
      'state': instance.state,
    };
