
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dunno/components/animation/emoji_emitter.dart';
import 'package:dunno/screens/stats/components/most_edits.dart';
import 'package:dunno/screens/stats/components/most_spins.dart';
import 'package:flutter/material.dart';

@RoutePage()
class StatsScreen extends StatelessWidget {
  final GlobalKey<EmojiEmitterState> emitterKey = GlobalKey<EmojiEmitterState>();

  StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final offset = Offset(MediaQuery.of(context).size.width / 2, -20);

    return EmojiEmitter(
      key: emitterKey,
      child: Container(
          clipBehavior: Clip.none,
          padding: const EdgeInsets.all(24.0),
          child: Column(
              spacing: 12.0,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Stats",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                MostSpinsList(),
                MostEditsList()
              ],
          )
      )
    );
  }
}