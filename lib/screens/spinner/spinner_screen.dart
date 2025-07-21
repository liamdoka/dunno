import 'dart:math' as math;
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SpinnerScreen extends ConsumerWidget {

  final int? spinnerIndex;

  const SpinnerScreen({super.key, this.spinnerIndex});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spinnerListState = ref.watch(spinnerListProvider);
    final spinner = spinnerIndex != null
      ? spinnerListState.spinners[spinnerIndex!]
      : spinnerListState.selectedSpinner;

    if (spinner == null) {
      return Center(
        child: Text("No spinner selected...")
      );
    }

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(spinner.title,
            style: Theme.of(context).textTheme.headlineLarge
          ),
          Spinner(items: spinner.items),
        ],
      ),
    );
  }
}

class Spinner extends StatefulWidget {
  final List<String> items;

  const Spinner({super.key, required this.items,});

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

    final velocity = 40 + (math.Random().nextDouble() * 4);

    simulation = FrictionSimulation(0.5, angle, velocity);
    isSpinning = true;
    ticker.start();
  }

  @override
  void dispose() {
    ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      spacing: 24,
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Transform.rotate(
              angle: angle,
              child: CustomPaint(
                size: Size.square(screenWidth),
                painter: SpinnerPainter(items: widget.items),
              ),
            ),
            Positioned(
              top: -8,
              child: Transform.scale(
                scaleY: 2,
                child: Icon(Icons.arrow_drop_down_rounded, size: 48, color: Colors.red,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset.zero,
                      blurRadius: 4
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        ElevatedButton(onPressed: spin, child: Text("Spin!"))
      ],
    );
  }
}

class SpinnerPainter extends CustomPainter {
  final List<String> items;

  const SpinnerPainter({ required this.items });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    final sliceAngle = 2 * math.pi / items.length;
    final textPainter = TextPainter(textAlign: TextAlign.center, textDirection: TextDirection.ltr);

    for (int i = 0; i < items.length; i++) {
      final paint = Paint()
        ..style = PaintingStyle.fill
        ..color = Colors.primaries[i % Colors.accents.length];

      final startAngle = i * sliceAngle;

      // Draw the arc slice
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startAngle, sliceAngle, true, paint);

      // Draw label (rotated so it faces outward)
      final labelAngle = startAngle + sliceAngle / 2;
      final textSpan = TextSpan(
        text: items[i],
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
      );
      textPainter.text = textSpan;
      textPainter.layout();

      final labelX = center.dx + (radius * 0.6) * math.cos(labelAngle);
      final labelY = center.dy + (radius * 0.6) * math.sin(labelAngle);

      canvas.save();
      canvas.translate(labelX, labelY);
      canvas.rotate(labelAngle + math.pi / 2);
      textPainter.paint(canvas, Offset(-textPainter.width / 2, -textPainter.height / 2));
      canvas.restore();
    }

    canvas.save();
    final x = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.black;

    canvas.drawCircle(center, 8, x);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter _) => true;
}