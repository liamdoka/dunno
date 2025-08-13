import 'package:flutter/material.dart';

class DunnoConstraints extends StatelessWidget {
  const DunnoConstraints({required this.child, super.key});
  final Widget child;

  static const dunnoMaxWidth = 540.0;

  @override
  Widget build(BuildContext context) => ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: dunnoMaxWidth),
          child: child,
        ),
      ),
    );
}
