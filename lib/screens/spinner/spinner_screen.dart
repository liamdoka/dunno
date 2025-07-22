import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:dunno/data/spinner_edit_provider.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './save_spinner_dialog.dart';

final rand = math.Random();

@RoutePage()
class SpinnerScreen extends ConsumerWidget {
  final SpinnerModel spinner;

  const SpinnerScreen({super.key, required this.spinner});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spinnerState = ref.watch(spinnerEditProvider(spinner.id));

    final isSaved = ref
        .watch(spinnerListProvider)
        .spinners
        .map((model) => model.id)
        .contains(spinner.id);

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: TextButton(
          onPressed: context.router.pop,
          child: Text("Close"),
        ),
      ),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        padding: const EdgeInsets.all(24),
        child: Column(
          spacing: 24,
          children: [
            Text(
              spinner.title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Expanded(child: Spinner(items: spinner.items)),

            if (isSaved)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      final notifier = ref.read(
                        spinnerEditProvider(spinner.id).notifier,
                      );
                      notifier.toggleFavorite();
                      notifier.save();
                    },
                    label: Text(
                      spinnerState.isFavorite ? "Favorited" : "Favorite",
                    ),
                    icon: Icon(
                      spinnerState.isFavorite
                          ? Icons.star_rounded
                          : Icons.star_border_rounded,
                      color: Colors.amber,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // TODO : Edit screen
                    },
                    child: Text("Edit spinner"),
                  ),
                ],
              )
            else
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => SaveSpinnerDialog(spinner: spinner),
                  );
                },
                child: Text("Save spinner"),
              ),
          ],
        ),
      ),
    );
  }
}

class Spinner extends StatefulWidget {
  final List<String> items;

  const Spinner({super.key, required this.items});

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

    final velocity = 32 + (rand.nextDouble() * 32);

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
              top: -4,
              child: Transform.scale(
                scaleY: 2,
                child: Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 48,
                  color: Colors.red,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(0, 1),
                      blurRadius: 1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        FilledButton(onPressed: spin, child: Text("Spin!")),
      ],
    );
  }
}

class SpinnerPainter extends CustomPainter {
  final List<String> items;

  const SpinnerPainter({required this.items});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    final sliceAngle = 2 * math.pi / items.length;
    final textPainter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    for (int i = 0; i < items.length; i++) {
      final paint = Paint()
        ..style = PaintingStyle.fill
        ..color = Colors.primaries[i % Colors.accents.length];

      final startAngle = i * sliceAngle;

      // Draw the arc slice
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sliceAngle,
        true,
        paint,
      );

      // Draw label (rotated so it faces outward)
      final labelAngle = startAngle + sliceAngle / 2;
      final textSpan = TextSpan(
        text: items[i],
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      );
      textPainter.text = textSpan;
      textPainter.layout();

      final labelX = center.dx + (radius * 0.6) * math.cos(labelAngle);
      final labelY = center.dy + (radius * 0.6) * math.sin(labelAngle);

      canvas.save();
      canvas.translate(labelX, labelY);
      canvas.rotate(labelAngle + math.pi / 2);
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

    canvas.drawCircle(center, 8, x);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter _) => true;
}
