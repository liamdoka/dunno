import 'package:auto_route/annotations.dart';
import 'package:dunno/components/animation/confetti_emitter.dart';
import 'package:dunno/components/dunno_scaffold.dart';
import 'package:dunno/constants/numbers.dart';
import 'package:dunno/constants/sizes.dart';
import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/data/user_stats_provider.dart';
import 'package:dunno/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class AppearanceSettingsScreen extends ConsumerStatefulWidget {
  const AppearanceSettingsScreen({super.key});

  @override
  ConsumerState<AppearanceSettingsScreen> createState() =>
      _AppearanceSettingsScreenState();
}

class _AppearanceSettingsScreenState
    extends ConsumerState<AppearanceSettingsScreen> {
  final GlobalKey<ConfettiEmitterState> emitterKey =
  GlobalKey<ConfettiEmitterState>();
  late final TextEditingController confettiController;

  @override
  void initState() {
    super.initState();

    final preferences = ref.read(userPreferencesProvider);
    confettiController = TextEditingController(text: preferences.defaultConfetti);
  }

  @override
  void dispose() {
    confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final preferences = ref.watch(userPreferencesProvider);

    final emitterOffset = Offset(
      MediaQuery.of(context).size.width / 2 - 24, // scaffold width
      MediaQuery.of(context).size.width / 3,
    );

    return DunnoScaffold(
      child: ConfettiEmitter(
        key: emitterKey,
        child: SafeArea(
          child: Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Column(
                spacing: 24.0,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Appearance Settings",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
          
                  // DARK MODE TOGGLE
                  AppearanceSettingsPanel(
                    title: "Display",
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SegmentedButton(
                            style: SegmentedButton.styleFrom(
                              selectedBackgroundColor: Theme
                                  .of(context)
                                  .colorScheme.onPrimary,
                            ),
                            segments: [
                              ButtonSegment(
                                value: ThemeMode.light,
                                label: Text(
                                  "Light",
                                ),
                              ),
                              ButtonSegment(
                                value: ThemeMode.system,
                                label: Text(
                                  "System",
                                ),
                              ),
                              ButtonSegment(
                                value: ThemeMode.dark,
                                label: Text(
                                  "Dark",
                                ),
                              ),
                            ],
                            onSelectionChanged: ref
                                .read(userPreferencesProvider.notifier)
                                .setThemeMode,
                            showSelectedIcon: false,
                            selected: {preferences.appTheme},
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Wrap(
                          alignment: WrapAlignment.start,
                            children: Colors.primaries.map((color) => AppThemeTintButton(
                                isSelected: preferences.appTint == color.toSimpleColor(),
                                onTap: () => ref
                                    .read(userPreferencesProvider.notifier)
                                    .setTint(color),
                                color: color)
                            ).toList()
                        ),
                      ),
                    ],
                  ),
          
                  // DEFAULT CONFETTI
                  AppearanceSettingsPanel(
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
                                fillColor: Theme.of(context).colorScheme.surfaceContainerLow,
                                border: OutlineInputBorder(
                                  borderRadius: defaultBorderRadius,
                                ),
                                hintText: preferences.defaultConfetti,
                                hintStyle: TextStyle(
                                  color: Colors.white.withValues(alpha: 0.5),
                                ),
                              ),
                              controller: confettiController,
                              maxLength: AppNumbers.maxConfettiStringLength,
                              maxLengthEnforcement: MaxLengthEnforcement.enforced,
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
                                    emitterKey.currentState?.emitBurst(
                                      confettiController.text,
                                      position: emitterOffset,
                                    );
                                    ref.read(userStatsProvider.notifier)
                                        .logConfetti();
                                  },
                                  label: Text("Test"),
                                  icon: Icon(Icons.celebration_rounded),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // DEFAULT COLOR PALETTE
                  // CREATE NEW COLOR PALETTE
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AppearanceSettingsPanel extends StatelessWidget {
  final String title;
  final List<Widget>? children;
  const AppearanceSettingsPanel({
    super.key,
    this.children,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: defaultBorderRadius,
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        spacing: 12.0,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(title, style: Theme.of(context).textTheme.labelLarge),
          ...?children,
        ],
      ),
    );
  }
}

class AppThemeTintButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color color;
  final bool isSelected;

  const AppThemeTintButton({super.key, required this.onTap, required this.color, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(4),
        height: 32,
        width: 32,
        decoration: BoxDecoration(
            border: Border.all(color: isSelected
                ? Theme.of(context).colorScheme.onSurface
                : Theme.of(context).colorScheme.onPrimary,
                width: 2
            ),
            borderRadius: defaultBorderRadius,
            color: color
        ),
      ),
    );
  }
}