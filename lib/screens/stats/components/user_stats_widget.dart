import 'package:dunno/components/animation/confetti_emitter.dart';
import 'package:dunno/constants/sizes.dart';
import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/data/user_stats_provider.dart';
import 'package:dunno/screens/account/appearance_settings/components/appearance_settings_panel.dart';
import 'package:dunno/utils/math.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserStatsWidget extends ConsumerWidget {
  final GlobalKey<ConfettiEmitterState> emitterKey;

  const UserStatsWidget({super.key, required this.emitterKey});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stats = ref.watch(userStatsProvider);
    final emitterOffset = Offset(
        (MediaQuery.of(context).size.width - 24) / 2,
        0
    );

    return AppearanceSettingsPanel(title: "Your totals",
      children: [
        Row(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            UserStatsTile(title: "spins", value: stats.totalSpins.toReadable()),
            UserStatsTile(title: "spinners", value: stats.spinnersCreatedCount.toReadable()),
            UserStatsTile(
                title: "confetti bits",
                value: stats.confettiCount.toReadable(),
                onTap: () {
                  final confetti = ref.read(userPreferencesProvider).defaultConfetti;
                  emitterKey.currentState?.emitBurst(confetti, position: emitterOffset);
                },
            ),
          ],
        )
      ],
    );
  }
}

class UserStatsTile extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback? onTap;

  const UserStatsTile({super.key, required this.title, required this.value, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: AspectRatio(
        aspectRatio: 1,
        child: Material(
          borderRadius: insetBorderRadius,
          color: Theme.of(context).colorScheme.onPrimary,
          elevation: onTap == null ? 0 : 1,
          child: InkWell(
            borderRadius: insetBorderRadius,
            onTap: onTap,
            child: Center(
              child: Column(
                spacing: 8,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(value, style: Theme.of(context).textTheme.titleLarge),
                  Text(title, style: Theme.of(context).textTheme.labelLarge),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}