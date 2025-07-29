import 'package:auto_route/auto_route.dart';
import 'package:dunno/components/dunno_scaffold.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/router.gr.dart';
import 'package:dunno/screens/spinner_list/components/spinner_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class DeletedSpinnersScreen extends ConsumerWidget {
  const DeletedSpinnersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deletedSpinners = ref.watch(deletedSpinnersProvider);
    final palette = ref.watch(userPreferencesProvider).defaultColorPalette;

    return DunnoScaffold(
      child: Column(
        spacing: 24.0,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Text(
                "Deleted Spinners",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),

          if (deletedSpinners.isNotEmpty)
            Flexible(
              child: ListView.separated(
                itemCount: deletedSpinners.length,
                separatorBuilder: (_, _) => const SizedBox(height: 8.0),
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  final spinner = deletedSpinners[index];
                  return SpinnerTile(
                    spinner: spinner,
                    color: palette.forIndex(index),
                    dismissBackground: Row(
                      children: [
                        Icon(Icons.delete_forever_rounded, color: Theme.of(context).colorScheme.error),
                      ],
                    ),
                    onDismiss: (_) => ref
                        .read(spinnerListProvider.notifier)
                        .deleteSpinnerFromDevice(spinner.id),
                    onTap: () =>
                        context.router.push(SpinnerRoute(spinner: spinner)),
                  );
                },
              ),
            )
          else
            Expanded(
              child: Center(
                child: Text("Deleted spinners will end up here..."),
              ),
            ),

          if (deletedSpinners.isNotEmpty)
            TextButton(
              onPressed: ref
                  .read(spinnerListProvider.notifier)
                  .clearDeletedSpinners,
              child: Text("Empty bin", style: TextStyle(color: Theme.of(context).colorScheme.error)),
            ),
        ],
      ),
    );
  }
}
