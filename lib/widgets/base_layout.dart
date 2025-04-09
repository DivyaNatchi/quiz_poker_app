// lib/widgets/base_layout.dart
import 'package:flutter/material.dart';
import 'package:flutter_basics/data/models/app_navigation.dart';

class BaseLayout extends StatelessWidget {
  final Widget child;
  final String currentRoute;

  const BaseLayout({
    super.key,
    required this.child,
    required this.currentRoute,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Poker'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body:
          isDesktop
              ? Row(
                children: [
                  NavigationRail(
                    selectedIndex: AppNavigation.items.indexWhere(
                      (item) => item.routeName == currentRoute,
                    ),
                    onDestinationSelected: (index) {
                      Navigator.pushReplacementNamed(
                        context,
                        AppNavigation.items[index].routeName,
                      );
                    },
                    labelType: NavigationRailLabelType.all,
                    destinations:
                        AppNavigation.items
                            .map(
                              (item) => NavigationRailDestination(
                                icon: Icon(item.icon),
                                label: Text(item.label),
                              ),
                            )
                            .toList(),
                  ),
                  Expanded(child: child),
                ],
              )
              : child,
      bottomNavigationBar:
          isDesktop
              ? null
              : BottomNavigationBar(
                currentIndex: AppNavigation.items.indexWhere(
                  (item) => item.routeName == currentRoute,
                ),
                onTap: (index) {
                  Navigator.pushReplacementNamed(
                    context,
                    AppNavigation.items[index].routeName,
                  );
                },
                items:
                    AppNavigation.items
                        .map(
                          (item) => BottomNavigationBarItem(
                            icon: Icon(item.icon),
                            label: item.label,
                          ),
                        )
                        .toList(),
              ),
    );
  }
}
