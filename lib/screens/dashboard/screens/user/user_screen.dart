import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:rive/rive.dart';

import '../../../../di/injection.dart';
import '../../../../util/colors.dart';
import '../../../../util/contants.dart';
import '../../../../util/styles.dart';
import '../../../../widgets/custom_search_bar.dart';
import '../../../../widgets/custom_text_button.dart';
import '../../widgets/dashboard_base.dart';
import 'cubit/user_list/user_list_cubit.dart';
import 'model/role_model.dart';
import 'model/user_model.dart';

@RoutePage()
class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<UserListCubit>().init();
  }

  Future<List<RoleModel>> getRoles() async {
    final roles = await serviceLocator<FlutterSecureStorage>().read(key: 'roles');
    if (roles != null) {
      final rolesModel = RoleModel.modelListFromJson(roles);
      return [RoleModel.all(), ...rolesModel.map((e) => e).toList()];
    }
    return [];
  }

  @override
  void didChangeDependencies() {
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

    return DashboardBase(
      singleChildScrollViewEnable: false,
      child: Expanded(
        child: BlocBuilder<UserListCubit, UserListState>(
          builder: (context, state) {
            return Column(
              children: [
                headerSection(context, elevatedButtonStyle),
                Expanded(
                  child: PaginatedDataTable2(
                    empty: RiveAnimation.asset(
                      'assets/animations/empty_table.riv',
                    ),
                    controller: state.paginatorController,
                    columnSpacing: 16,
                    horizontalMargin: 8,
                    headingRowColor: WidgetStateProperty.all(CustomColors.primaryGreenColor),
                    headingTextStyle: Theme.of(context).defaultTheme.fontSize16?.bold.primaryWhiteColor,
                    rowsPerPage: Constants.tableLimit,
                    minWidth: 800,
                    border: TableBorder.all(
                      color: CustomColors.shadowGray60Color,
                    ),
                    columns: _columns,
                    header: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 4,
                          child: CustomSearchBar(
                            controller: _searchController,
                            hintText: 'Search',
                            onSubmit: context.read<UserListCubit>().searchOnChange,
                            onTextChanged: context.read<UserListCubit>().searchOnChange,
                          ),
                        ),
                        Flexible(
                          flex: 8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              _dropdownBuild(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    renderEmptyRowsInTheEnd: false,
                    onPageChanged: (value) => context.read<UserListCubit>().nextPage(value),
                    source: state.userSource,
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

  FutureBuilder<List<RoleModel>> _dropdownBuild() {
    return FutureBuilder<List<RoleModel>>(
      future: getRoles(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 6),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<RoleModel>(
                  value: context.read<UserListCubit>().role ?? RoleModel.all(),
                  dropdownColor: CustomColors.graySoftColor,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold, color: CustomColors.primaryBlackColor),
                  icon: Icon(Icons.arrow_drop_down, color: CustomColors.primaryGreenColor),
                  onChanged: context.read<UserListCubit>().filterByRole,
                  items: snapshot.data?.map((RoleModel role) {
                    return DropdownMenuItem<RoleModel>(
                      value: role,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(role.name),
                      ),
                    );
                  }).toList()),
            ),
          );
        }
      },
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
                    style: Theme.of(context).defaultTheme.fontSize16,
                    children: [
                      TextSpan(
                        text: 'You have ',
                      ),
                      TextSpan(
                        text: context.read<UserListCubit>().state.userTable.total.toString(),
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
