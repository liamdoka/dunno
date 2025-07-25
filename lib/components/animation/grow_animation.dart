
import 'package:flutter/material.dart';

class GrowAnimation extends StatelessWidget {
  const GrowAnimation({
    required this.child,
    required this.animation,
    super.key,
  });

  final Widget child;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.scale(
          scale: animation.value,
          child: child,
        );
      },
      child: child,
    );
  }
}


class GrowAppearAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;
  const GrowAppearAnimation({super.key, required this.child, required this.duration});

  @override
  State<GrowAppearAnimation> createState() => _GrowAppearAnimationState();
}

class _GrowAppearAnimationState extends State<GrowAppearAnimation> with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: widget.duration);
    animation = Tween<double>(begin: 0, end: 1).animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GrowAnimation(
        animation: animation,
        child: widget.child
    );
  }
}