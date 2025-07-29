
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dunno/components/animation/confetti_emitter.dart';
import 'package:dunno/screens/stats/components/most_edits.dart';
import 'package:dunno/screens/stats/components/most_spins.dart';
import 'package:flutter/material.dart';
import 'components/user_stats_widget.dart';


@RoutePage()
class StatsScreen extends StatelessWidget {
  final GlobalKey<ConfettiEmitterState> emitterKey = GlobalKey();

  StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const spacer = SizedBox(height: 12);

    return ConfettiEmitter(
      key: emitterKey,
      child: Container(
          clipBehavior: Clip.none,
          padding: const EdgeInsets.all(24.0),
          child: ListView(
            clipBehavior: Clip.none,
              shrinkWrap: true,
              children: [
                Text("Stats",
                  style: Theme.of(context).textTheme.titleMedium,
                ),

                spacer,
                UserStatsWidget(emitterKey: emitterKey),

                spacer,
                MostSpinsList(),

                spacer,
                MostEditsList()
              ]
          )
      ),
    );
  }
}