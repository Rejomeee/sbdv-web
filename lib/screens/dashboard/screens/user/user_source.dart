import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class UserModel {
  UserModel(
    this.first_name,
    this.last_name,
    this.email,
    this.phone,
    this.address,
  );

  bool selected = false;

  final String first_name;
  final String last_name;
  final String email;
  final String phone;
  final String address;
}

class UserSource extends DataTableSource {
  void sort<T>(Comparable<T> Function(UserModel d) getField, bool ascending) {
    users.sort((a, b) {
      final aValue = getField(a);
      final bValue = getField(b);
      return ascending ? Comparable.compare(aValue, bValue) : Comparable.compare(bValue, aValue);
    });
    notifyListeners();
  }

  List<UserModel> users = [
    UserModel('sadf', ' weavf', 'wavasfeoaiwj fowaijef oaewjf aowifj aofij awo fjawoijf efa', 'vvvr', 'ge'),
    UserModel('sasdf', ' weaf', 'waebfa', 'vxvv', 'sada'),
    UserModel('sa', ' wexaf', 'waxefha', 'vvhv', 's'),
    UserModel('Aronej', 'Dore', '', '', ''),
    UserModel('sadf', ' weavf', 'wavasfeoaiwj fowaijef oaewjf aowifj aofij awo fjawoijf efa', 'vvvr', 'ge'),
    UserModel('sasdf', ' weaf', 'waebfa', 'vxvv', 'sada'),
    UserModel('sa', ' wexaf', 'waxefha', 'vvhv', 's'),
    UserModel('sadf', ' weavf', 'wavasfeoaiwj fowaijef oaewjf aowifj aofij awo fjawoijf efa', 'vvvr', 'ge'),
    UserModel('sadf', ' weavf', 'wavasfeoaiwj fowaijef oaewjf aowifj aofij awo fjawoijf efa', 'vvvr', 'ge'),
    UserModel('sasdf', ' weaf', 'waebfa', 'vxvv', 'sada'),
    UserModel('sa', ' wexaf', 'waxefha', 'vvhv', 's'),
    UserModel('sasdf', ' weaf', 'waebfa', 'vxvv', 'sada'),
    UserModel('sadf', ' weavf', 'wavasfeoaiwj fowaijef oaewjf aowifj aofij awo fjawoijf efa', 'vvvr', 'ge'),
    UserModel('sasdf', ' weaf', 'waebfa', 'vxvv', 'sada'),
    UserModel('sa', ' wexaf', 'waxefha', 'vvhv', 's'),
    UserModel('sa', ' wexaf', 'waxefha', 'vvhv', 's'),
    UserModel('sadf', ' weavf', 'wavasfeoaiwj fowaijef oaewjf aowifj aofij awo fjawoijf efa', 'vvvr', 'ge'),
    UserModel('sasdf', ' weaf', 'waebfa', 'vxvv', 'sada'),
    UserModel('sa', ' wexaf', 'waxefha', 'vvhv', 's'),
    UserModel('sadf', ' weavf', 'wavasfeoaiwj fowaijef oaewjf aowifj aofij awo fjawoijf efa', 'vvvr', 'ge'),
    UserModel('sadf', ' weavf', 'wavasfeoaiwj fowaijef oaewjf aowifj aofij awo fjawoijf efa', 'vvvr', 'ge'),
    UserModel('sasdf', ' weaf', 'waebfa', 'vxvv', 'sada'),
    UserModel('sa', ' wexaf', 'waxefha', 'vvhv', 's'),
    UserModel('sasdf', ' weaf', 'waebfa', 'vxvv', 'sada'),
    UserModel('sadf', ' weavf', 'wavasfeoaiwj fowaijef oaewjf aowifj aofij awo fjawoijf efa', 'vvvr', 'ge'),
    UserModel('sasdf', ' weaf', 'waebfa', 'vxvv', 'sada'),
    UserModel('sa', ' wexaf', 'waxefha', 'vvhv', 's'),
    UserModel('sadf', ' weavf', 'wavasfeoaiwj fowaijef oaewjf aowifj aofij awo fjawoijf efa', 'vvvr', 'ge'),
    UserModel('sasdf', ' weaf', 'waebfa', 'vxvv', 'sada'),
    UserModel('sa', ' wexaf', 'waxefha', 'vvhv', 's'),
    UserModel('sa', ' wexaf', 'waxefha', 'vvhv', 's'),
    UserModel('sadxxf', ' weaf', 'wa5efa', 'vevv', 'vdvsa'),
  ];

  @override
  DataRow2? getRow(int index) {
    final user = users[index];

    return DataRow2.byIndex(
      index: index,
      selected: user.selected,
      // color: color != null
      //     ? WidgetStateProperty.all(color)
      //     : (hasZebraStripes && index.isEven
      //         ? WidgetStateProperty.all(Theme.of(context).highlightColor)
      //         : null),
      // onSelectChanged: (value) {
      //   if (user.selected != value) {
      //     _selectedCount += value! ? 1 : -1;
      //     assert(_selectedCount >= 0);
      //     user.selected = value;
      //     notifyListeners();
      //   }
      // },
      // onTap: hasRowTaps
      //     ? () => _showSnackbar(context, 'Tapped on row ${user.name}')
      //     : null,
      // onDoubleTap: hasRowTaps
      //     ? () => _showSnackbar(context, 'Double Tapped on row ${user.name}')
      //     : null,
      // onLongPress: hasRowTaps
      //     ? () => _showSnackbar(context, 'Long pressed on row ${user.name}')
      //     : null,
      // onSecondaryTap: hasRowTaps
      //     ? () => _showSnackbar(context, 'Right clicked on row ${user.name}')
      //     : null,
      // onSecondaryTapDown: hasRowTaps
      //     ? (d) =>
      //         _showSnackbar(context, 'Right button down on row ${user.name}')
      //     : null,
      // specificRowHeight: hasRowHeightOverrides && user.fat >= 25 ? 100 : null,
      cells: [
        DataCell(Text(user.first_name)),
        DataCell(Text(user.last_name)),
        DataCell(Text(user.email)),
        DataCell(Text(user.phone)),
        DataCell(Text(user.address)),
        // DataCell(Text('${user.calories}'),
        //     onTap: () => _showSnackbar(context,
        //         'Tapped on a cell with "${user.calories}"', Colors.red)),
        // DataCell(Text(user.fat.toStringAsFixed(1))),
        // DataCell(Text('${user.carbs}')),
        // DataCell(Text(user.protein.toStringAsFixed(1))),
        // DataCell(Text('${user.sodium}')),
        // DataCell(Text(format.format(user.calcium / 100))),
        // DataCell(Text(format.format(user.iron / 100))),
      ],
    );
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => users.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
