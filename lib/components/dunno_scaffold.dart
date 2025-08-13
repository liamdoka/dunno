import 'package:dunno/components/dunno_constraints.dart';
import 'package:flutter/material.dart';

class DunnoScaffold extends StatelessWidget {

  const DunnoScaffold({super.key, this.appBar, this.child});
  final PreferredSizeWidget? appBar;
  final Widget? child;

  @override
  Widget build(BuildContext context) => DunnoConstraints(
      child: Scaffold(
          appBar: appBar ?? AppBar(
            forceMaterialTransparency: true,
            leading: const BackButton(),
          ),
          body: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              padding: const EdgeInsets.all(24),
              child: child,
          ),
      ),
    );
}
