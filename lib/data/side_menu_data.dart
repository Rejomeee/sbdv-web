import 'package:sbdv_web/model/menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menu = <MenuModel>[
    MenuModel(
      icon: Icons.home,
      title: 'Dashboard',
      onTap: () {
        // serviceLocator<SBDVRouter>().push(DashboardWidget());
      },
    ),
    MenuModel(
      icon: Icons.person,
      title: 'Profile',
      onTap: () {
        // serviceLocator<SBDVRouter>().push(UserRoute());
      },
    ),
    // MenuModel(
    //   icon: Icons.run_circle,
    //   title: 'Exersice',
    //   onTap: () {
    //     // serviceLocator<SBDVRouter>().push(DashboardWidget());
    //   },
    // ),
    // MenuModel(
    //   icon: Icons.settings,
    //   title: 'Settings',
    //   onTap: () {
    //     // serviceLocator<SBDVRouter>().push(DashboardWidget());
    //   },
    // ),
    // MenuModel(
    //   icon: Icons.history,
    //   title: 'History',
    //   onTap: () {
    //     // serviceLocator<SBDVRouter>().push(DashboardWidget());
    //   },
    // ),
    MenuModel(
      icon: Icons.logout,
      title: 'SignOut',
      onTap: () {
        // serviceLocator<SBDVRouter>().push(DashboardWidget());
      },
    ),
  ];
}
