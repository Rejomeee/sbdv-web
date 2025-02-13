import 'package:json_annotation/json_annotation.dart';

import '../../../screens/dashboard/screens/user/model/user_model.dart';

part 'auth_token_model.g.dart';

@JsonSerializable()
class AuthTokenModel {
  final String message;
  final String? token;
  final String? error;
  final UserModel? data;

  AuthTokenModel({
    required this.message,
    this.token,
    this.error,
    this.data,
  });

  factory AuthTokenModel.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenModelFromJson(json);
  Map<String, dynamic> toJson() => _$AuthTokenModelToJson(this);
}
