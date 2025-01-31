import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sbdv_web/screens/dashboard/screens/user/model/user_model.dart';
import 'package:sbdv_web/util/colors.dart';
import 'package:sbdv_web/util/styles.dart';
import 'package:sbdv_web/widgets/custom_text_button.dart';

import '../../../../di/injection.dart';
import '../../../../widgets/custom_search_bar.dart';
import '../../widgets/dashboard_base.dart';
import 'cubit/user_list/user_list_cubit.dart';

@RoutePage()
class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  TextEditingController _searchController = TextEditingController();
  final usersSource = UserSource<UserModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    serviceLocator<UserListCubit>().init();
  }

  @override
  void didChangeDependencies() {
    print('heheeee');
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<DataColumn> get _columns => UserModel.tableColumns.map((column) => DataColumn(label: Text(column))).toList();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      textStyle: TextStyle(fontSize: 16),
    );
//TODO arone: fix userSource
    return DashboardBase(
      singleChildScrollViewEnable: false,
      child: Expanded(
        child: BlocBuilder<UserListCubit, UserListState>(
          builder: (context, state) {
            // usersSource.data = state.userTable.data;
            // print(state);
            return Column(
              children: [
                headerSection(context, elevatedButtonStyle),
                Expanded(
                  child: PaginatedDataTable2(
                    empty: Text('empty'),
                    columnSpacing: 16,
                    horizontalMargin: 8,
                    headingRowColor: WidgetStateProperty.all(CustomColors.primaryGreenColor),
                    headingTextStyle: Theme.of(context).defaultTheme.fontSize16?.bold.primaryWhiteColor,
                    rowsPerPage: 10,
                    minWidth: 800,
                    border: TableBorder.all(
                      color: CustomColors.shadowGray60Color,
                    ),
                    columns: _columns,
                    header: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: CustomSearchBar(
                            controller: _searchController,
                            hintText: 'Search',
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: const SizedBox(),
                        ),
                      ],
                    ),
                    source: usersSource,
                    dataRowHeight: 80,
                    dataTextStyle: Theme.of(context).defaultTheme.fontSize16?.bold,
                  ),
                ),
              ],
            );
          },
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
          Flexible(
            flex: 10,
            child: Column(
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
          ),
          Flexible(
            flex: 2,
            child: RoundedTextButton(
              style: CustomButtonStyle.blackMedium,
              onPressed: () {},
              child: Text(
                'Add Resident',
                style: Theme.of(context).defaultTheme.fontSize16?.bold.primaryWhiteColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
