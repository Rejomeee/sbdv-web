import 'package:flutter/material.dart';

class MenuModel {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;
  final bool adminAccessOnly;

  const MenuModel({
    required this.icon,
    required this.title,
    this.onTap,
    this.adminAccessOnly = false,
  });
}
