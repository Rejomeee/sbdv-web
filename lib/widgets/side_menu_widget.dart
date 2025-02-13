import 'package:auto_route/auto_route.dart';
import 'package:rive/rive.dart';
import 'package:sbdv_web/data/side_menu_data.dart';
import 'package:flutter/material.dart';
import 'package:sbdv_web/model/menu_model.dart';

import '../di/injection.dart';
import '../screens/login/cubit/auth/auth_cubit.dart';
import '../util/colors.dart';
import '../services/user_service.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();

    return FutureBuilder<bool>(
      future: serviceLocator<UserService>().isAdmin(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }

        final isAdmin = snapshot.data ?? false;
        final menuItems = isAdmin
            ? data.menu
            : data.menu.where((item) => !item.adminAccessOnly).toList();

        return Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          color: CustomColors.primaryGreenColor,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: const RiveAnimation.asset(
                    'assets/animations/cat_playing.riv',
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: menuItems.length,
                  itemBuilder: (context, index) =>
                      buildMenuEntry(menuItems, index),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildMenuEntry(List<MenuModel> menuItems, int index) {
    final isSelected = AutoTabsRouter.of(context).activeIndex == index;

    return Column(
      children: [
        Visibility(
          visible: index + 1 == menuItems.length,
          child: Divider(color: Colors.grey), // Divider or line at the top
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(6.0),
            ),
            color: isSelected
                ? CustomColors.primaryGreenSelectedColor
                : Colors.transparent,
          ),
          child: InkWell(
            hoverColor: CustomColors.primaryGreenHoverColor,
            onTap: () {
              if (index + 1 == menuItems.length) {
                serviceLocator<AuthCubit>().logout();
              } else {
                AutoTabsRouter.of(context).setActiveIndex(index);
                if (Scaffold.of(context).isDrawerOpen)
                  Scaffold.of(context).closeDrawer();
              }
            },
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                  child: Icon(
                    menuItems[index].icon,
                    color: CustomColors.primaryWhiteColor,
                  ),
                ),
                Text(
                  menuItems[index].title,
                  style: TextStyle(
                    fontSize: 16,
                    color: CustomColors.primaryWhiteColor,
                    fontWeight:
                        isSelected ? FontWeight.w600 : FontWeight.normal,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
