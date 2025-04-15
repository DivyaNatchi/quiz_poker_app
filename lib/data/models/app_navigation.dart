import 'package:flutter/material.dart';
import 'package:flutter_basics/extensions/buildcontext/loc.dart'; // Import the extension

class AppNavigationItem {
  final String label;
  final IconData icon;
  final String routeName;

  AppNavigationItem({
    required this.label,
    required this.icon,
    required this.routeName,
  });
}

class AppNavigation {
  static List<AppNavigationItem> items(BuildContext context) => [
    AppNavigationItem(
      label: context.loc.home,
      icon: Icons.home,
      routeName: '/',
    ),
    AppNavigationItem(
      label: context.loc.addQuestion,
      icon: Icons.add,
      routeName: '/add_question',
    ),
  ];
}
