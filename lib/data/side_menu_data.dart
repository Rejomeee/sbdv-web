import 'package:sbdv_web/model/menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menu = <MenuModel>[
    MenuModel(
      icon: Icons.home,
      title: 'Dashboard',
    ),
    MenuModel(
      icon: Icons.phonelink,
      title: 'Announcements',
    ),
    MenuModel(
      icon: Icons.person_pin_circle,
      title: 'Residents',
    ),
    MenuModel(
      icon: Icons.house,
      title: 'Subdivisions',
    ),
    MenuModel(
      icon: Icons.co_present_rounded,
      title: 'Roles',
    ),
    MenuModel(
      icon: Icons.receipt_long_sharp,
      title: 'Logs',
    ),
    MenuModel(
      icon: Icons.person,
      title: 'My Profile',
    ),
    MenuModel(
      icon: Icons.logout,
      title: 'SignOut',
    ),
  ];
}
