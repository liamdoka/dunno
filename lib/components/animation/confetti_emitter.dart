import 'dart:math';

import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/data/user_stats_provider.dart';
import 'package:dunno/utils/collections.dart';
import 'package:dunno/utils/math.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

class ConfettiEmitter extends ConsumerStatefulWidget {
  const ConfettiEmitter({super.key, this.child});

  final Widget? child;

  @override
  ConsumerState<ConfettiEmitter> createState() => ConfettiEmitterState();
}

class ConfettiEmitterState extends ConsumerState<ConfettiEmitter>
    with SingleTickerProviderStateMixin {
  late final Ticker ticker;
  final Map<String, List<ConfettiParticle>> particles = {};
  final rand = Random();
  Duration lastFrameTime = Duration.zero;

  static const uuid = Uuid();

  @override
  void initState() {
    super.initState();

    ticker = createTicker((elapsed) {
      final dt = (elapsed - lastFrameTime).inMicroseconds / 1e6;
      lastFrameTime = elapsed;

      setState(() {
        for (final set in particles.values) {
          for (final p in set) {
            p.update(dt);
          }
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

  Future<void> emitBurst(String value, {Offset position = Offset.zero}) async {
    final preferences = ref.read(userPreferencesProvider);
    final particleCount = preferences.confettiAmount.random(rand);

    ref.read(userStatsProvider.notifier).logConfetti(particleCount);

    final id = uuid.v4();
    particles[id] = List.generate(particleCount, (index) {
      final direction = Offset(
        rand.nextDoubleRange(-180, 180),
        rand.nextDoubleRange(-540, 0),
      );

      return ConfettiParticle(
        value: value.characters
            .characterAt(index % value.characters.length)
            .toString(),
        position: position,
        velocity: direction,
      );
    });

    Future.delayed(const Duration(seconds: 4), () {
      try {
        if (context.mounted) {
          setState(() => particles.remove(id));
        }
      } catch (e) {
        print('Something evil happened');
      }
    });
  }

  @override
  Widget build(BuildContext context) => CustomPaint(
    size: Size.infinite,
    painter: ConfettiPainter(particles: particles.flatMap()),
    child: widget.child,
  );
}

class ConfettiParticle {
  ConfettiParticle({
    required this.value,
    required this.position,
    required this.velocity,
  });

  final String value;
  Offset position;
  Offset velocity;
  static const gravity = Offset(0, 400);

  void update(double dt) {
    velocity += gravity * dt;
    position += velocity * dt;
  }

  void draw(Canvas canvas, TextPainter painter) {
    painter
      ..text = TextSpan(
        text: value,
        style: const TextStyle(fontSize: 24, color: Colors.white),
      )
      ..layout()
      ..paint(canvas, position);
  }
}

class ConfettiPainter extends CustomPainter {
  ConfettiPainter({required this.particles});

  final List<ConfettiParticle> particles;

  @override
  void paint(Canvas canvas, Size size) {
    final painter = TextPainter(textDirection: TextDirection.ltr);

    for (final p in particles) {
      p.draw(canvas, painter);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
