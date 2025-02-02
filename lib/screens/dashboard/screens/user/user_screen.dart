import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';
import 'package:sbdv_web/screens/dashboard/screens/user/model/user_model.dart';
import 'package:sbdv_web/util/colors.dart';
import 'package:sbdv_web/util/contants.dart';
import 'package:sbdv_web/util/styles.dart';
import 'package:sbdv_web/widgets/custom_text_button.dart';

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

  @override
  void initState() {
    context.read<UserListCubit>().init();
    super.initState();
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

  List<DataColumn> get _columns => UserModel.tableColumns
      .map((column) => DataColumn(label: Text(column)))
      .toList();

  List<String> filters = ['All', 'Admin', 'User'];
  String selectedFilter = 'All';

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
                    columnSpacing: 16,
                    horizontalMargin: 8,
                    headingRowColor:
                        WidgetStateProperty.all(CustomColors.primaryGreenColor),
                    headingTextStyle: Theme.of(context)
                        .defaultTheme
                        .fontSize16
                        ?.bold
                        .primaryWhiteColor,
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
                            onSubmit:
                                context.read<UserListCubit>().searchOnChange,
                            onTextChanged:
                                context.read<UserListCubit>().searchOnChange,
                          ),
                        ),
                        Flexible(
                          flex: 8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 6),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: selectedFilter,
                                    dropdownColor: CustomColors.graySoftColor,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color:
                                                CustomColors.primaryBlackColor),
                                    icon: Icon(Icons.arrow_drop_down,
                                        color: CustomColors.primaryGreenColor),
                                    items: filters.map((String filter) {
                                      return DropdownMenuItem<String>(
                                        value: filter,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 12),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          child: Text(filter),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      print(newValue);
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    renderEmptyRowsInTheEnd: false,
                    onPageChanged: (value) =>
                        context.read<UserListCubit>().nextPage(value),
                    source: state.userSource,
                    dataRowHeight: 80,
                    dataTextStyle:
                        Theme.of(context).defaultTheme.fontSize16?.bold,
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
                    style: Theme.of(context)
                        .defaultTheme
                        .fontSize16, // TODO: add colors
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
                style: Theme.of(context)
                    .defaultTheme
                    .fontSize16
                    ?.bold
                    .primaryWhiteColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
