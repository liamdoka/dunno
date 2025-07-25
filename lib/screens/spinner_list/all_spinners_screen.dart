
import 'package:auto_route/auto_route.dart';
import 'package:dunno/components/dunno_scaffold.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/router.gr.dart';
import 'components/spinner_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class AllSpinnersScreen extends ConsumerWidget {

  const AllSpinnersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allSpinners = ref.watch(spinnerListProvider);

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
            child: ListView.builder(
                itemCount: allSpinners.length,
                itemBuilder: (context, index) {
                  final spinner = allSpinners[index];
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    child: SpinnerTile(
                        spinner: spinner,
                        onDismiss: (direction) => ref
                            .read(spinnerListProvider.notifier)
                            .deleteSpinner(spinner.id),
                        onTap: () => context.router.push(SpinnerRoute(spinner: spinner)),
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}