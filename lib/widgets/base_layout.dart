// lib/widgets/base_layout.dart
import 'package:flutter/material.dart';
import 'package:flutter_basics/data/models/app_navigation.dart';
import 'package:flutter_basics/extensions/buildcontext/loc.dart';

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
    final themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Builder(
          builder: (context) {
            return Text(
              context.loc.appName,
              style: Theme.of(context).textTheme.titleLarge,
            );
          },
        ),

        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body:
          isDesktop
              ? Row(
                children: [
                  NavigationRail(
                    selectedIndex: AppNavigation.items(
                      context,
                    ).indexWhere((item) => item.routeName == currentRoute),
                    onDestinationSelected: (index) {
                      Navigator.pushReplacementNamed(
                        context,
                        AppNavigation.items(context)[index].routeName,
                      );
                    },
                    labelType: NavigationRailLabelType.all,
                    destinations:
                        AppNavigation.items(context)
                            .map(
                              (item) => NavigationRailDestination(
                                icon: Icon(item.icon),
                                label: Text(
                                  item.label,
                                  style: themeData.textTheme.bodyMedium,
                                ),
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
                currentIndex: AppNavigation.items(
                  context,
                ).indexWhere((item) => item.routeName == currentRoute),
                onTap: (index) {
                  Navigator.pushReplacementNamed(
                    context,
                    AppNavigation.items(context)[index].routeName,
                  );
                },
                items:
                    AppNavigation.items(context)
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
