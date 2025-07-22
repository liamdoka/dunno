
import 'package:auto_route/auto_route.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/router.gr.dart';
import './spinner_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentSpinnerList extends ConsumerWidget {

  const RecentSpinnerList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recentSpinners = ref.watch(recentSpinnersProvider);
    final totalSpinnerCount = ref.watch(spinnerListProvider).spinners.length;

    return Column(
      spacing: 16.0,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text("Recent Spinners",
                style: Theme.of(context).textTheme.titleMedium
            ),
          ],
        ),

        recentSpinners.isEmpty
        ? Text("No recent spinners")
        : Flexible(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: recentSpinners.length,
              itemBuilder: (context, index) {
                final spinner = recentSpinners[index];
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  child: SpinnerTile(
                      spinner: spinner,
                      onDismiss: (direction) => ref
                          .read(spinnerListProvider.notifier)
                          .deleteSpinner(spinner.id),
                      onTap: () {
                        ref.read(spinnerListProvider.notifier)
                            .setSelectedSpinner(spinner.id);
                        context.pushRoute(SpinnerRoute(spinner: spinner));
                      }
                  ),
                );
              }
          ),
        ),

        if (totalSpinnerCount > recentSpinners.length)
          TextButton(
              onPressed: () {
                // TODO navigate to all spinners list
              },
              child: Row(
                spacing: 8.0,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("All spinners"),
                  Icon(Icons.arrow_right_alt_rounded)
                ],
              )
          )
      ],
    );
  }
}