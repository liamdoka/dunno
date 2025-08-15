import 'package:dunno/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppearanceSettingsPanel extends StatelessWidget {
  const AppearanceSettingsPanel({
    required this.title,
    super.key,
    this.children,
  });
  final String title;
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      borderRadius: defaultBorderRadius,
      color: Theme.of(context).colorScheme.primaryContainer,
    ),
    child: Column(
      spacing: 12,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(title, style: Theme.of(context).textTheme.labelLarge),
        ...?children,
      ],
    ),
  );
}
