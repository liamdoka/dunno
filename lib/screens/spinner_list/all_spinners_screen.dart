
import 'package:auto_route/auto_route.dart';
import 'package:dunno/components/dunno_scaffold.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/router.gr.dart';
import 'components/spinner_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class AllSpinnersScreen extends ConsumerWidget {

  const AllSpinnersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allSpinners = ref.watch(allSpinnersProvider);
    final palette = ref.watch(userPreferencesProvider).defaultColorPalette;

    return DunnoScaffold(
      child: Column(
        spacing: 24.0,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text("All Spinners",
                  style: Theme.of(context).textTheme.titleMedium
              ),
            ],
          ),
          Flexible(
            child: ListView.separated(
                itemCount: allSpinners.length,
                separatorBuilder: (_, _) => const SizedBox(height: 8.0),
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  final spinner = allSpinners[index];
                  return SpinnerTile(
                    spinner: spinner,
                    color: palette.forIndex(index),
                    dismissBackground: Row(
                      children: [Icon(Icons.delete_rounded, color: Colors.red,)],
                    ),
                    onDismiss: (direction) => ref
                          .read(spinnerListProvider.notifier)
                          .deleteSpinner(spinner.id),
                      onTap: () => context.router.push(SpinnerRoute(spinner: spinner)),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}