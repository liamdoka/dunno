import 'package:dunno/constants/sizes.dart';
import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/screens/account/appearance_settings/components/appearance_settings_panel.dart';
import 'package:dunno/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DisplayPanel extends ConsumerWidget {
  const DisplayPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(userPreferencesProvider);

    return AppearanceSettingsPanel(
      title: 'Display',
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
              segments: const [
                ButtonSegment(value: ThemeMode.light, label: Text('Light')),
                ButtonSegment(value: ThemeMode.system, label: Text('System')),
                ButtonSegment(value: ThemeMode.dark, label: Text('Dark')),
              ],
            ),
          ],
        ),
        Align(
          child: Wrap(
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
  const AppThemeTintButton({
    required this.onTap,
    required this.color,
    required this.isSelected,
    super.key,
  });
  final VoidCallback onTap;
  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) => InkWell(
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
