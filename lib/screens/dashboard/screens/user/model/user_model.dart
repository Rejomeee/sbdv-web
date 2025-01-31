import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'role_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String username,
    required String email,
    required RoleModel role,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  static List<String> get tableColumns => ['First Name', 'Last Name', 'Email', 'Username', 'Role'];

  factory UserModel.empty() => UserModel(
        id: '',
        firstName: '',
        lastName: '',
        username: '',
        email: '',
        role: RoleModel.empty(),
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

  factory UserModel.mock() => UserModel(
        id: '1',
        firstName: 'John',
        lastName: 'Doe',
        username: 'johndoe',
        email: 'john.doe@email.com',
        role: RoleModel.mock(),
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
}

class UserSource<T> extends DataTableSource {
  List<T> data = [];
  List<Widget> dataCellsBuilder = [];
  List<DataCell> dataCells({bool hasButtonOnLast = false}) => dataCellsBuilder.asMap().entries.map((entry) {
        int idx = entry.key;
        Widget cell = entry.value;
        bool isButton = hasButtonOnLast && idx == dataCellsBuilder.length - 1;
        return DataCell(cellWidget(cell, isButton: isButton));
      }).toList();

  @override
  DataRow2? getRow(int index) {
    return DataRow2.byIndex(
      index: index,
      cells: [
        DataCell(cellWidget(Text('hehe'))),
        DataCell(cellWidget(Text('hehe'))),
        DataCell(cellWidget(Text('hehe'))),
        DataCell(cellWidget(Text('hehe'))),
        DataCell(cellWidget(Text('hehe')))
      ],
    );
  }

  Widget cellWidget(Widget widget, {bool isButton = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: SingleChildScrollView(child: widget)),
        Visibility(
          visible: isButton,
          child: TextButton(
            onPressed: () {},
            child: Text('Button'),
          ),
        )
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data.length;

  @override
  int get selectedRowCount => 0;
}
