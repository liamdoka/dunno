import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:dunno/components/animation/confetti_emitter.dart';
import 'package:dunno/data/spinner_edit_provider.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/data/user_stats_provider.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:dunno/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/save_spinner_dialog.dart';
import 'components/spinner.dart';

final rand = math.Random();

@RoutePage()
class SpinnerScreen extends ConsumerWidget {
  final SpinnerModel spinner;
  final GlobalKey<ConfettiEmitterState> emitterKey = GlobalKey<ConfettiEmitterState>();

  SpinnerScreen({super.key, required this.spinner});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spinnerState = ref.watch(spinnerEditProvider(spinner.id));
    final defaultConfetti = ref.watch(userPreferencesProvider).defaultConfetti;

    final isSaved = ref
        .watch(allSpinnersProvider)
        .any((savedSpinner) => savedSpinner.id == spinner.id);

    final emitterValue = spinnerState.confetti ?? defaultConfetti;
    final emitterOffset = Offset(
        MediaQuery.of(context).size.width / 2,
        MediaQuery.of(context).size.width / 3
    );

    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leadingWidth: 80,
        leading: TextButton(
          onPressed: context.router.pop,
          child: Text("Close",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.error
              )
          ),
        ),
      ),
      body: ConfettiEmitter(
        key: emitterKey,
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
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
                        ref.read(spinnerListProvider.notifier).logSpin(spinner.id);
                        ref.read(userStatsProvider.notifier).logConfetti();
                        emitterKey.currentState?.emitBurst(emitterValue, position: emitterOffset);
                      }
                  )
              ),

              if (isSaved)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        final notifier = ref.read(
                          spinnerEditProvider(spinner.id).notifier,
                        );
                        notifier.toggleFavorite();
                        notifier.save();
                      },
                      label: Text(
                        spinnerState.isFavorite ? "Favorited" : "Favorite",
                      ),
                      icon: Icon(
                        spinnerState.isFavorite
                            ? Icons.star_rounded
                            : Icons.star_border_rounded,
                        color: Colors.amber,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        context.router.replace(EditSpinnerRoute(id: spinner.id));
                      },
                      child: Text("Edit spinner"),
                    ),
                  ],
                )
              else
                TextButton(
                  onPressed: spinner.isDeleted
                      ? () {
                    ref.read(spinnerListProvider.notifier).saveSpinner(spinner);
                    context.router.replaceAll([ SpinnerListRoute() ]);
                  }
                      : () {
                    showDialog(
                      context: context,
                      builder: (context) => SaveSpinnerDialog(spinner: spinner),
                    );
                  },
                  child: Text("Save spinner"),
                ),
            ],
          ),
        ),
      ),
    );
  }
}