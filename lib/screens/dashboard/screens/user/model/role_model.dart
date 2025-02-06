import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_model.freezed.dart';
part 'role_model.g.dart';

@freezed
class RoleModel with _$RoleModel {
  factory RoleModel({
    @JsonKey(name: '_id') required String id,
    required String name,
    required String slug,
  }) = _RoleModel;

  factory RoleModel.fromJson(Map<String, dynamic> json) => _$RoleModelFromJson(json);

  factory RoleModel.empty() => RoleModel(
        id: '',
        name: '',
        slug: '',
      );

  factory RoleModel.mock() => RoleModel(
        id: '1',
        name: 'Home Owners',
        slug: 'home-owners',
      );

  factory RoleModel.all() => RoleModel(
        id: '',
        name: 'All',
        slug: '',
      );

  static List<RoleModel> modelListFromJson(String rolesJson) {
    final List<dynamic> rolesList = jsonDecode(rolesJson);
    return rolesList.map((role) => RoleModel.fromJson(role)).toList();
  }

  // static List<Map<String, dynamic>> listToJson(List<RoleModel> roles) {
  //   return roles.map((role) => role.toJson()).toList();
  // }
}
