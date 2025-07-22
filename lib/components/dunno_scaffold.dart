import 'package:flutter/material.dart';

class DunnoScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? child;

  const DunnoScaffold({super.key, this.appBar, this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar ?? AppBar(
          forceMaterialTransparency: true,
          leading: BackButton(),
        ),
        body: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            padding: const EdgeInsets.all(24),
            child: child,
        )
    );
  }
}
