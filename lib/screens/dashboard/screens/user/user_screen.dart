import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:sbdv_web/screens/dashboard/screens/user/user_source.dart';
import 'package:sbdv_web/util/styles.dart';

import '../../widgets/dashboard_base.dart';

@RoutePage()
class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  TextEditingController _searchController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  void sort<T>(
    Comparable<T> Function(UserModel d) getField,
    int columnIndex,
    bool ascending,
  ) {
    // _usersSource.sort<T>(getField, ascending);
    // setState(() {
    //   _sortColumnIndex = columnIndex;
    //   _sortAscending = ascending;
    // });
  }

  @override
  void dispose() {
    _searchController.dispose();
    // _usersSource.dispose();
    super.dispose();
  }

  List<DataColumn> get _columns {
    return [
      DataColumn(
        label: const Text('First Name'),
        onSort: (columnIndex, ascending) => sort<String>((d) => d.first_name, columnIndex, ascending),
      ),
      DataColumn(
        label: const Text('Last Name'),
        onSort: (columnIndex, ascending) => sort<String>((d) => d.last_name, columnIndex, ascending),
      ),
      DataColumn(
        label: const Text('Email'),
        onSort: (columnIndex, ascending) => sort<String>((d) => d.email, columnIndex, ascending),
      ),
      DataColumn(
        label: const Text('Phone'),
        onSort: (columnIndex, ascending) => sort<String>((d) => d.phone, columnIndex, ascending),
      ),
      DataColumn(
        label: const Text('Address'),
        onSort: (columnIndex, ascending) => sort<String>((d) => d.address, columnIndex, ascending),
      ),

      // DataColumn(
      //   label: const Text('Last Name'),
      //   onSort: (columnIndex, ascending) =>
      //       sort<String>((d) => d.calories, columnIndex, ascending),
      // ),
      // DataColumn(
      //   label: const Text('Email'),
      //   onSort: (columnIndex, ascending) =>
      //       sort<num>((d) => d.fat, columnIndex, ascending),
      // ),
      // DataColumn(
      //   label: const Text('Phone'),
      //   onSort: (columnIndex, ascending) =>
      //       sort<num>((d) => d.carbs, columnIndex, ascending),
      // ),
      // DataColumn(
      //   label: const Text('Address'),
      //   onSort: (columnIndex, ascending) =>
      //       sort<num>((d) => d.protein, columnIndex, ascending),
      // ),
      // DataColumn(
      //   label: const Text('Calories'),
      //   numeric: true,
      //   onSort: (columnIndex, ascending) =>
      //       sort<num>((d) => d.calories, columnIndex, ascending),
      // ),
      // DataColumn(
      //   label: const Text('Fat (gm)'),
      //   numeric: true,
      //   onSort: (columnIndex, ascending) =>
      //       sort<num>((d) => d.fat, columnIndex, ascending),
      // ),
      // DataColumn(
      //   label: const Text('Carbs (gm)'),
      //   numeric: true,
      //   onSort: (columnIndex, ascending) =>
      //       sort<num>((d) => d.carbs, columnIndex, ascending),
      // ),
      // DataColumn(
      //   label: const Text('Protein (gm)'),
      //   numeric: true,
      //   onSort: (columnIndex, ascending) =>
      //       sort<num>((d) => d.protein, columnIndex, ascending),
      // ),
      // DataColumn(
      //   label: const Text('Sodium (mg)'),
      //   numeric: true,
      //   onSort: (columnIndex, ascending) =>
      //       sort<num>((d) => d.sodium, columnIndex, ascending),
      // ),
      // DataColumn(
      //   label: const Text('Calcium (%)'),
      //   numeric: true,
      //   onSort: (columnIndex, ascending) =>
      //       sort<num>((d) => d.calcium, columnIndex, ascending),
      // ),
      // DataColumn(
      //   label: const Text('Iron (%)'),
      //   numeric: true,
      //   onSort: (columnIndex, ascending) =>
      //       sort<num>((d) => d.iron, columnIndex, ascending),
      // ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      textStyle: TextStyle(fontSize: 16),
    );

    return DashboardBase(
      singleChildScrollViewEnable: false,
      child: Expanded(
        child: Column(
          children: [
            headerSection(context, elevatedButtonStyle),
            Expanded(
              child: PaginatedDataTable2(
                columnSpacing: 16,
                horizontalMargin: 12,
                checkboxHorizontalMargin: 8,
                headingRowColor: WidgetStateProperty.all(Colors.grey[900]),
                headingTextStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                showCheckboxColumn: true,
                rowsPerPage: 8,
                minWidth: 800,
                columns: _columns,
                header: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          labelText: 'Search',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          // Implement search logic here
                        },
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: const SizedBox(),
                    ),
                  ],
                ),
                source: UserSource(),
                dataRowHeight: 100,
                dataTextStyle: Theme.of(context).defaultTheme.fontSize16?.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget headerSection(BuildContext context, ButtonStyle elevatedButtonStyle) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Users',
                style: Theme.of(context).h5,
              ),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).defaultTheme.fontSize16, // TODO: add colors
                  children: [
                    TextSpan(
                      text: 'You have ',
                    ),
                    TextSpan(
                      text: '100',
                      style: Theme.of(context).defaultTheme.fontSize16?.bold,
                    ),
                    TextSpan(
                      text: ' residents in ',
                    ),
                    TextSpan(
                      text: 'Tsarina Grand Villas',
                      style: Theme.of(context).defaultTheme.fontSize16?.bold,
                    ),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
            style: elevatedButtonStyle,
            onPressed: () {},
            child: const Text(
              'Add Resident',
            ),
          ),
        ],
      ),
    );
  }
}
