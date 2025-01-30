import 'package:auto_route/auto_route.dart';
import 'package:rive/rive.dart';
import 'package:sbdv_web/data/side_menu_data.dart';
import 'package:flutter/material.dart';

import '../di/injection.dart';
import '../screens/login/cubit/auth/auth_cubit.dart';
import '../util/colors.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();

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
              itemCount: data.menu.length,
              itemBuilder: (context, index) => buildMenuEntry(data, index),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuEntry(SideMenuData data, int index) {
    final isSelected = AutoTabsRouter.of(context).activeIndex == index;

    return Column(
      children: [
        Visibility(
          visible: index + 1 == data.menu.length,
          child: Divider(color: Colors.grey), // Divider or line at the top
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(6.0),
            ),
            color: isSelected ? CustomColors.primaryGreenSelectedColor : Colors.transparent,
          ),
          child: InkWell(
            hoverColor: CustomColors.primaryGreenHoverColor,
            onTap: () {
              if (index + 1 == data.menu.length) {
                serviceLocator<AuthCubit>().logout();
              } else {
                AutoTabsRouter.of(context).setActiveIndex(index);
                if (Scaffold.of(context).isDrawerOpen) Scaffold.of(context).closeDrawer();
              }
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                  child: Icon(
                    data.menu[index].icon,
                    color: CustomColors.primaryWhiteColor,
                  ),
                ),
                Text(
                  data.menu[index].title,
                  style: TextStyle(
                    fontSize: 16,
                    color: CustomColors.primaryWhiteColor,
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
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
