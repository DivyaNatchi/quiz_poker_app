// lib/models/app_navigation.dart
import 'package:flutter/material.dart';

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
  static List<AppNavigationItem> get items => [
    AppNavigationItem(label: 'Home', icon: Icons.home, routeName: '/'),
    AppNavigationItem(
      label: 'Add Question',
      icon: Icons.add,
      routeName: '/add_question',
    ),
  ];
}
