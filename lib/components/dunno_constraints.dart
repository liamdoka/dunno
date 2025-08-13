import 'package:flutter/material.dart';

class DunnoConstraints extends StatelessWidget {
  final Widget child;
  const DunnoConstraints({super.key, required this.child});

  static const dunnoMaxWidth = 540.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: dunnoMaxWidth),
          child: child,
        ),
      ),
    );
  }
}
