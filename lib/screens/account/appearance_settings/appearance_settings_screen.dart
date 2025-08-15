import 'package:auto_route/annotations.dart';
import 'package:dunno/components/animation/confetti_emitter.dart';
import 'package:dunno/components/dunno_scaffold.dart';
import 'package:dunno/screens/account/appearance_settings/components/confetti_panel.dart';
import 'package:dunno/screens/account/appearance_settings/components/display_panel.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AppearanceSettingsScreen extends StatelessWidget {
  AppearanceSettingsScreen({super.key});
  final emitterKey = GlobalKey<ConfettiEmitterState>();

  @override
  Widget build(BuildContext context) {
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
                spacing: 24,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Appearance Settings',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),

                  const DisplayPanel(),
                  ConfettiPanel(
                    emitterKey: emitterKey,
                    emitterOffset: emitterOffset,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
