// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthTokenModel _$AuthTokenModelFromJson(Map<String, dynamic> json) =>
    AuthTokenModel(
      message: json['message'] as String,
      token: json['token'] as String?,
      error: json['error'] as String?,
      data: json['data'] == null
          ? null
          : UserModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthTokenModelToJson(AuthTokenModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'token': instance.token,
      'error': instance.error,
      'data': instance.data,
    };
