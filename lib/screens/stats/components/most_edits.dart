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

class MostEditsList extends ConsumerWidget {
  const MostEditsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spinners = ref.watch(mostEditsProvider);

    return AppearanceSettingsPanel(
      title: "Most Edits",
      children: spinners
          .mapIndexed((index, spinner) => EditCountTile(index: index, spinner: spinner))
          .toList(),
    );
  }
}

class EditCountTile extends StatelessWidget {
  final SpinnerModel spinner;
  final int index;

  const EditCountTile({super.key, required this.spinner, required this.index});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: defaultBorderRadius,
      child: Material(
        child: ListTile(
          title: Text(spinner.title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold
            ),
          ),
          leading: index == 0
              ? Icon(Icons.workspace_premium_rounded, color: Colors.amber.shade600,)
              : Text((index + 1).toOrdinal()),
          tileColor: Theme.of(context).colorScheme.onPrimary,
          trailing: Text("${spinner.stats.editCount} edits"),
          onTap: () => context.router.push(SpinnerRoute(spinner: spinner)),
        ),
      ),
    );
  }
}
