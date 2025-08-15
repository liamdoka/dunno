import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:dunno/components/animation/confetti_emitter.dart';
import 'package:dunno/components/dunno_scaffold.dart';
import 'package:dunno/data/spinner_edit_provider.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:dunno/router.gr.dart';
import 'package:dunno/screens/spinner/components/save_spinner_dialog.dart';
import 'package:dunno/screens/spinner/components/spinner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rand = math.Random();

@RoutePage()
class SpinnerScreen extends ConsumerWidget {
  SpinnerScreen({required this.spinner, super.key});

  final SpinnerModel spinner;
  final emitterKey = GlobalKey<ConfettiEmitterState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spinnerState = ref.watch(spinnerEditProvider(spinner.id));
    final defaultConfetti = ref.watch(userPreferencesProvider).defaultConfetti;

    final isSaved = ref
        .watch(allSpinnersProvider)
        .any((savedSpinner) => savedSpinner.id == spinner.id);

    final emitterValue = spinnerState.confetti ?? defaultConfetti;

    return DunnoScaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leadingWidth: 80,
        leading: TextButton(
          onPressed: context.router.pop,
          child: Text(
            'Close',
            style: TextStyle(color: Theme.of(context).colorScheme.error),
          ),
        ),
      ),
      child: ConfettiEmitter(
        key: emitterKey,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final emitterOffset = Offset(
              constraints.maxWidth / 2,
              constraints.maxHeight * (1 / 3),
            );
            return Column(
              spacing: 24,
              children: [
                Text(
                  spinner.title,
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                Expanded(
                  child: Spinner(
                    segments: spinner.segments,
                    onComplete: () {
                      ref
                          .read(spinnerListProvider.notifier)
                          .logSpin(spinner.id);
                      emitterKey.currentState?.emitBurst(
                        emitterValue,
                        position: emitterOffset,
                      );
                    },
                  ),
                ),

                if (isSaved)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          ref.read(spinnerEditProvider(spinner.id).notifier)
                            ..toggleFavorite()
                            ..save();
                        },
                        label: Text(
                          spinnerState.isFavorite ? 'Favorited' : 'Favorite',
                        ),
                        icon: Icon(
                          spinnerState.isFavorite
                              ? Icons.star_rounded
                              : Icons.star_border_rounded,
                          color: Colors.amber,
                        ),
                      ),
                      TextButton(
                        onPressed: () => context.router.replace(
                          EditSpinnerRoute(id: spinner.id),
                        ),
                        child: const Text('Edit spinner'),
                      ),
                    ],
                  )
                else
                  TextButton(
                    onPressed: spinner.isDeleted
                        ? () {
                            ref
                                .read(spinnerListProvider.notifier)
                                .saveSpinner(spinner);
                            context.router.replaceAll([
                              const SpinnerListRoute(),
                            ]);
                          }
                        : () async {
                            if (context.mounted) return;
                            await showDialog(
                              context: context,
                              builder: (context) =>
                                  SaveSpinnerDialog(spinner: spinner),
                            );
                          },
                    child: const Text('Save spinner'),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
