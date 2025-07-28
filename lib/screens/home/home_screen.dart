import 'package:auto_route/auto_route.dart';
import 'package:dunno/components/dunno_navigation_bar.dart';
import 'package:dunno/router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        SpinnerListRoute(),
        QuickSpinRoute(),
        StatsRoute(),
        AccountRoute()
      ],
      homeIndex: 0,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            forceMaterialTransparency: true,
            centerTitle: true,
            title: Text("Dunno",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          body: child,

          // `const` here prevents rebuilds, who would have thought.
          bottomNavigationBar: DunnoNavigationBar()
        );
      },
    );
  }
}