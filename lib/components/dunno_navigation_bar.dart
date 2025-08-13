import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DunnoNavigationBar extends StatelessWidget {
  const DunnoNavigationBar({super.key});

  static const iconSize = 28.0;

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);

    return NavigationBar(
      height: 64,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      selectedIndex: tabsRouter.activeIndex,
      onDestinationSelected: tabsRouter.setActiveIndex,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_rounded, size: iconSize),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.play_circle_fill_rounded, size: iconSize),
          label: 'Quick Spin',
        ),
        NavigationDestination(
          icon: Icon(Icons.bar_chart, size: iconSize),
          label: 'Stats',
        ),
        NavigationDestination(
          icon: Icon(Icons.person_rounded, size: iconSize),
          label: 'Account',
        ),
      ],
    );
  }
}
