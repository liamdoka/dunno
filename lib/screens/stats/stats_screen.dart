
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dunno/components/animation/emoji_emitter.dart';
import 'package:flutter/material.dart';

@RoutePage()
class StatsScreen extends StatelessWidget {
  final GlobalKey<EmojiEmitterState> emitterKey = GlobalKey<EmojiEmitterState>();

  StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final offset = Offset(MediaQuery.of(context).size.width / 2, 0);

    return EmojiEmitter(
      key: emitterKey,
      child: Column(
        children: [
          TextButton(onPressed: () {
            emitterKey.currentState?.emitBurst('❤️', position: offset);
          }, child: Text("Emit")),
        ],
      ),
    );
  }
}