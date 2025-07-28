import 'package:auto_route/annotations.dart';
import 'package:dunno/components/animation/emoji_emitter.dart';
import 'package:dunno/components/dunno_scaffold.dart';
import 'package:dunno/constants/sizes.dart';
import 'package:dunno/data/user_preferences_provider.dart';
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
  final GlobalKey<EmojiEmitterState> emitterKey =
      GlobalKey<EmojiEmitterState>();
  late final TextEditingController emojiController;

  @override
  void initState() {
    super.initState();

    final preferences = ref.read(userPreferencesProvider);
    emojiController = TextEditingController(text: preferences.defaultEmojis);
  }

  @override
  void dispose() {
    emojiController.dispose();
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
      child: EmojiEmitter(
        key: emitterKey,
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
              ],
            ),

            // DEFAULT EMOJIS
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
                          hintText: preferences.defaultEmojis,
                          hintStyle: TextStyle(
                            color: Colors.white.withValues(alpha: 0.5),
                          ),
                        ),
                        controller: emojiController,
                        maxLength: 3,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        onChanged: ref
                            .read(userPreferencesProvider.notifier)
                            .setDefaultEmojis,
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
                                emojiController.text,
                                position: emitterOffset,
                              );
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
