
import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/router.gr.dart';
import 'package:dunno/screens/spinner_list/components/spinner_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentSpinnerList extends ConsumerWidget {

  const RecentSpinnerList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recentSpinners = ref.watch(recentSpinnersProvider);
    final totalSpinnerCount = ref.watch(allSpinnersProvider).length;
    final palette = ref.watch(userPreferencesProvider).defaultColorPalette;

    return Column(
      spacing: 16,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text('Recent Spinners',
                style: Theme.of(context).textTheme.titleMedium
            ),
          ],
        ),

        if (recentSpinners.isEmpty) const Text('No recent spinners') else Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: recentSpinners.mapIndexed((index, spinner) => SpinnerTile(
              key: ValueKey(spinner.id),
              spinner: spinner,
              color: palette.forIndex(index),
              dismissBackground: Row(
                children: [Icon(Icons.delete_rounded, color: Theme.of(context).colorScheme.error)],
              ),
              onDismiss: (direction) => ref
                  .read(spinnerListProvider.notifier)
                  .deleteSpinner(spinner.id),
              onTap: () => context.router.push(SpinnerRoute(spinner: spinner)),
            )
          ).toList(),
        ),

        if (totalSpinnerCount > recentSpinners.length)
          TextButton.icon(
              onPressed: () => context.router.push(const AllSpinnersRoute()),
              label: const Text('All spinners'),
              iconAlignment: IconAlignment.end,
              icon: const Icon(Icons.arrow_right_alt_rounded)
          )
      ],
    );
  }
}