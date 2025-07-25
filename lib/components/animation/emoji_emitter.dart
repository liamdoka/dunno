import 'dart:math';

import 'package:dunno/utils/math.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class EmojiEmitter extends StatefulWidget {
  final Widget? child;
  const EmojiEmitter({super.key, this.child});

  @override
  State<EmojiEmitter> createState() => EmojiEmitterState();
}

class EmojiEmitterState extends State<EmojiEmitter> with SingleTickerProviderStateMixin {

  late final Ticker ticker;
  final List<EmojiParticle> particles = [];
  final Random rand = Random();
  Duration lastFrameTime = Duration.zero;

  static const particleCount = 60;

  @override
  void initState() {
    super.initState();

    ticker = createTicker((elapsed) {
      final dt = (elapsed - lastFrameTime).inMicroseconds / 1e6;
      lastFrameTime = elapsed;

      setState(() {
        for (final p in particles) {
          p.update(dt);
        }
      });
    });
    ticker.start();
  }

  @override
  void dispose() {
    ticker.dispose();
    super.dispose();
  }

  void emitBurst(String value, {Offset position = Offset.zero}) async {
    print("Emitting");
    particles.addAll(List.generate(particleCount, (_) {
      final direction = Offset(
        rand.nextDoubleRange(-180, 180),
        rand.nextDoubleRange(-360, 0)
      );

      return EmojiParticle(
          emoji: value,
          position: position,
          velocity: direction
      );
    }));

    await Future.delayed(Duration(seconds: 4), () {
      setState(particles.clear);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.infinite,
      painter: EmojiPainter(particles: particles),
      child: widget.child
    );
  }
}

class EmojiParticle {
  final String emoji;
  Offset position;
  Offset velocity;
  static const gravity = Offset(0, 400); // px/sec^2

  EmojiParticle({
    required this.emoji,
    required this.position,
    required this.velocity,
  });

  void update(double dt) {
    velocity += gravity * dt;
    position += velocity * dt;
  }

  void draw(Canvas canvas, TextPainter painter) {
    painter.text = TextSpan(
        text: emoji,
        style: TextStyle(fontSize: 24, color: Colors.white)
    );
    painter.layout();
    painter.paint(canvas, position);
  }
}

class EmojiPainter extends CustomPainter {
  final List<EmojiParticle> particles;

  EmojiPainter({required this.particles});

  @override
  void paint(Canvas canvas, Size size) {
    final painter = TextPainter(
      textDirection: TextDirection.ltr,
    );

    for (final p in particles) {
      p.draw(canvas, painter);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}