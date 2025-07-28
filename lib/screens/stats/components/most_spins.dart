import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dunno/constants/sizes.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:dunno/router.gr.dart';
import 'package:dunno/screens/account/appearance_settings_screen.dart';
import 'package:dunno/utils/math.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MostSpinsList extends ConsumerWidget {
  const MostSpinsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spinners = ref.watch(mostSpinsProvider);

    return AppearanceSettingsPanel(
      title: "Most Spun",
      children: spinners
          .mapIndexed((index, spinner) => SpinCountTile(index: index, spinner: spinner))
          .toList(),
    );
  }
}

class SpinCountTile extends StatelessWidget {
  final SpinnerModel spinner;
  final int index;

  const SpinCountTile({super.key, required this.spinner, required this.index});

  @override
  Widget build(BuildContext context) {
    // Have to do this ClipRRect + Material mumbo-jumbo because ListTile uses
    // a different rendering engine to the parent, so they freak out.
    return ClipRRect(
      borderRadius: defaultBorderRadius,
      child: Material(
        child: ListTile(
          leading: index == 0
              ? Icon(Icons.workspace_premium_rounded, color: Colors.amber.shade600,)
              : Text((index + 1).toOrdinal()),
          title: Text(spinner.title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold
            ),
          ),
          tileColor: Theme.of(context).colorScheme.onPrimary,
          trailing: Text("${spinner.stats.spinCount} spins"),
          onTap: () => context.router.push(SpinnerRoute(spinner: spinner)),
        ),
      ),
    );
  }
}