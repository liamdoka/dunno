import 'package:dunno/constants/sizes.dart';
import 'package:flutter/material.dart';

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
