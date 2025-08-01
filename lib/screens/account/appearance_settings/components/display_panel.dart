import 'package:dunno/constants/sizes.dart';
import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'appearance_settings_panel.dart';

class DisplayPanel extends ConsumerWidget {
  const DisplayPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(userPreferencesProvider);

    return AppearanceSettingsPanel(
      title: "Display",
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SegmentedButton(
              onSelectionChanged: ref
                  .read(userPreferencesProvider.notifier)
                  .setThemeMode,
              showSelectedIcon: false,
              selected: {preferences.appTheme},
              style: SegmentedButton.styleFrom(
                selectedBackgroundColor: Theme.of(
                  context,
                ).colorScheme.onPrimary,
              ),
              segments: [
                ButtonSegment(value: ThemeMode.light, label: Text("Light")),
                ButtonSegment(value: ThemeMode.system, label: Text("System")),
                ButtonSegment(value: ThemeMode.dark, label: Text("Dark")),
              ],
            ),
          ],
        ),
        Align(
          alignment: Alignment.center,
          child: Wrap(
            alignment: WrapAlignment.start,
            children: Colors.primaries
                .map(
                  (color) => AppThemeTintButton(
                    isSelected: preferences.appTint == color.toSimpleColor(),
                    onTap: () => ref
                        .read(userPreferencesProvider.notifier)
                        .setTint(color),
                    color: color,
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class AppThemeTintButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color color;
  final bool isSelected;

  const AppThemeTintButton({
    super.key,
    required this.onTap,
    required this.color,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(4),
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected
                ? Theme.of(context).colorScheme.onSurface
                : Theme.of(context).colorScheme.onPrimary,
            width: 2,
          ),
          borderRadius: defaultBorderRadius,
          color: color,
        ),
      ),
    );
  }
}
