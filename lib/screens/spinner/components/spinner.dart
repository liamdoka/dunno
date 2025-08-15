import 'dart:math' as math;

import 'package:dunno/constants/numbers.dart';
import 'package:dunno/models/spinner_segment_model.dart';
import 'package:dunno/screens/spinner/spinner_screen.dart';
import 'package:dunno/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/scheduler.dart';

class Spinner extends StatefulWidget {
  const Spinner({required this.segments, super.key, this.onComplete});
  final List<SpinnerSegmentModel> segments;
  final VoidCallback? onComplete;

  @override
  State<Spinner> createState() => _SpinnerState();
}

class _SpinnerState extends State<Spinner> with SingleTickerProviderStateMixin {
  late Ticker ticker;
  late FrictionSimulation simulation;
  double angle = 0;
  bool isSpinning = false;

  @override
  void initState() {
    super.initState();

    ticker = createTicker((elapsed) {
      if (!isSpinning) return;

      final t = elapsed.inMilliseconds / 1000;
      final newAngle = simulation.x(t);

      if (simulation.isDone(t)) {
        isSpinning = false;
        widget.onComplete?.call();
      }

      setState(() {
        angle = newAngle % (2 * math.pi);
      });
    });
  }

  void spin() {
    if (ticker.isActive) {
      ticker.stop(canceled: true);
    }

    final velocity = 32 + (rand.nextDouble() * 32);

    simulation = FrictionSimulation(
      0.5,
      angle,
      velocity,
      constantDeceleration: 0.025,
    );
    isSpinning = true;
    ticker.start();
  }

  @override
  void dispose() {
    ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
    spacing: 24,
    children: [
      Flexible(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final size = math.min(
                    constraints.maxHeight,
                    constraints.maxWidth,
                  );
                  return Transform.rotate(
                    angle: angle,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(double.infinity),
                      child: CustomPaint(
                        size: Size.square(size),
                        painter: SpinnerPainter(segments: widget.segments),
                      ),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              top: 0,
              child: Transform.scale(
                scaleY: 2,
                child: Icon(
                  Icons.arrow_drop_down_rounded,
                  size: AppNumbers.listTileHeight,
                  color: Theme.of(context).colorScheme.error,
                  shadows: const [Shadow(offset: Offset(0, 1), blurRadius: 1)],
                ),
              ),
            ),
          ],
        ),
      ),
      FilledButton(onPressed: spin, child: const Text('Spin!')),
    ],
  );
}

class SpinnerPainter extends CustomPainter {
  const SpinnerPainter({required this.segments});
  final List<SpinnerSegmentModel> segments;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    final textPainter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    final segmentWeights = segments.fold(0, (acc, next) => acc + next.weight);
    final arcPerUnit = 2 * math.pi / segmentWeights;

    var traversedWeight = 0;
    for (var i = 0; i < segments.length; i++) {
      final segment = segments[i];

      final color = segment.color.toColor();
      final paint = Paint()
        ..style = PaintingStyle.fill
        ..color = segment.color.toColor();

      final startAngle = arcPerUnit * traversedWeight;
      final sweepAngle = segment.weight * arcPerUnit;

      traversedWeight += segment.weight;

      // Draw the arc slice
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        true,
        paint,
      );

      final textColor = color.isBright
          ? Colors.blueGrey.shade900
          : Colors.blueGrey.shade50;

      // Draw label (rotated so it faces outward)
      final labelAngle = startAngle + sweepAngle / 2;
      final textSpan = TextSpan(
        text: segment.title,
        style: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      );
      textPainter
        ..text = textSpan
        ..layout();

      final labelX = center.dx + (radius * 0.6) * math.cos(labelAngle);
      final labelY = center.dy + (radius * 0.6) * math.sin(labelAngle);

      canvas
        ..save()
        ..translate(labelX, labelY)
        ..rotate(labelAngle + math.pi / 2);

      textPainter.paint(
        canvas,
        Offset(-textPainter.width / 2, -textPainter.height / 2),
      );
      canvas.restore();
    }

    canvas.save();
    final x = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.black;

    canvas
      ..drawCircle(center, 8, x)
      ..restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter _) => true;
}
