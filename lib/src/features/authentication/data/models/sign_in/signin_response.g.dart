// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SigninResponse _$SigninResponseFromJson(Map<String, dynamic> json) =>
    _SigninResponse(
      status: json['status'] as String,
      statusCode: (json['statusCode'] as num).toInt(),
      message: json['message'] as String,
      data: DataModel.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'] as List<dynamic>,
    );

Map<String, dynamic> _$SigninResponseToJson(_SigninResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'errors': instance.errors,
    };

_DataModel _$DataModelFromJson(Map<String, dynamic> json) => _DataModel(
  type: json['type'] as String?,
  user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
  accessToken: json['accessToken'] as String,
);

Map<String, dynamic> _$DataModelToJson(_DataModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'user': instance.user,
      'accessToken': instance.accessToken,
    };

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  fullName: json['fullName'] as String,
  email: json['email'] as String,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{'fullName': instance.fullName, 'email': instance.email};
