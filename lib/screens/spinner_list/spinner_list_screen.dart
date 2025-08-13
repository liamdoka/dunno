import 'package:auto_route/auto_route.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/router.gr.dart';
import 'package:dunno/screens/spinner_list/components/favorite_spinner_list.dart';
import 'package:dunno/screens/spinner_list/components/recent_spinner_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class SpinnerListScreen extends ConsumerWidget {
  const SpinnerListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allSpinners = ref.watch(allSpinnersProvider);

    return Container(
      padding: const EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              right: 0,
              child: FloatingActionButton.extended(
                  elevation: 2,
                  onPressed: () => context.router.push(EditSpinnerRoute()),
                  icon: const Icon(Icons.add),
                  label: const Text('New Spinner')
              )
          ),
          if (allSpinners.isEmpty) const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(child: Text('Create a spinner and check back later!')),
              SizedBox.shrink()
            ],
          ) else const Column(
            spacing: 48,
            mainAxisSize: MainAxisSize.min,
            children: [
              RecentSpinnerList(),
              FavoriteSpinnerList()
            ],
          )
        ],
      ),
    );
  }
}