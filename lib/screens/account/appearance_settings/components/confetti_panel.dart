

import 'package:dunno/components/animation/confetti_emitter.dart';
import 'package:dunno/constants/numbers.dart';
import 'package:dunno/constants/sizes.dart';
import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/models/user_preferences_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'appearance_settings_panel.dart';

class ConfettiPanel extends ConsumerStatefulWidget {
  final GlobalKey<ConfettiEmitterState> emitterKey;
  final Offset emitterOffset;

  const ConfettiPanel({super.key, required this.emitterKey, required this.emitterOffset});

  @override
  ConsumerState<ConfettiPanel> createState() => _ConfettiPanelState();
}

class _ConfettiPanelState extends ConsumerState<ConfettiPanel> {
  late final TextEditingController confettiController;

  @override
  void initState() {
    super.initState();

    final confetti = ref.read(userPreferencesProvider).defaultConfetti;
    confettiController = TextEditingController(text: confetti);
  }

  @override
  void dispose() {
    confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final preferences = ref.watch(userPreferencesProvider);

    return AppearanceSettingsPanel(
      title: "Confetti",
      children: [
        Row(
          spacing: 12,
          textBaseline: TextBaseline.alphabetic,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Flexible(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Theme.of(
                    context,
                  ).colorScheme.surfaceContainerLow,
                  border: OutlineInputBorder(
                    borderRadius: defaultBorderRadius,
                  ),
                ),
                controller: confettiController,
                maxLength: AppNumbers.maxConfettiStringLength,
                maxLengthEnforcement:
                MaxLengthEnforcement.enforced,
                onChanged: ref
                    .read(userPreferencesProvider.notifier)
                    .setDefaultConfetti,
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      if (confettiController.text.isNotEmpty) {
                        widget.emitterKey.currentState?.emitBurst(
                          confettiController.text,
                          position: widget.emitterOffset,
                        );
                      }
                    },
                    label: Text("Test"),
                    icon: Icon(Icons.celebration_rounded),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Amount",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Row(
              children: [
                Expanded(
                  child: SegmentedButton<ConfettiAmount>(
                    style: SegmentedButton.styleFrom(
                      selectedBackgroundColor: Theme.of(
                        context,
                      ).colorScheme.onPrimary,
                    ),
                    selected: {preferences.confettiAmount},
                    showSelectedIcon: false,
                    onSelectionChanged: (values) {
                      final value = values.firstOrNull;
                      if (value != null) {
                        ref.read(
                          userPreferencesProvider.notifier,
                        )
                            .setConfettiAmount(value);
                      }
                    },
                    segments: [
                      ButtonSegment(
                        value: ConfettiAmount.low,
                        label: Text("Low"),
                      ),
                      ButtonSegment(
                        value: ConfettiAmount.medium,
                        label: Text("Medium"),
                      ),
                      ButtonSegment(
                        value: ConfettiAmount.high,
                        label: Text("High"),
                      ),
                      ButtonSegment(
                        value: ConfettiAmount.ridiculous,
                        label: Icon(Icons.warning_amber_rounded),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}