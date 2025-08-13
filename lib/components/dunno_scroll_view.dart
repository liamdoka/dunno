import 'dart:math';
import 'package:flutter/material.dart';

class DunnoScrollView extends StatefulWidget {
  final List<Widget> children;
  final Color? backgroundColor;
  final double overlayHeight;
  final double spacing;
  final bool autoScroll;

  const DunnoScrollView({
    super.key,
    required this.children,
    this.backgroundColor,
    this.overlayHeight = 24.0,
    this.spacing = 8,
    this.autoScroll = false
  });

  @override
  State<DunnoScrollView> createState() => _DunnoScrollViewState();
}


class _DunnoScrollViewState extends State<DunnoScrollView> {
  late final ScrollController controller;

  static const autoScrollDuration = Duration(milliseconds: 200);

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  @override
  void didUpdateWidget(covariant DunnoScrollView oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (controller.hasClients && widget.autoScroll) {
        final delta = widget.children.length - oldWidget.children.length;
        final distance = 64 * max(0, delta);
        if (distance > 0) {
          controller.animateTo(distance.toDouble(), duration: autoScrollDuration, curve: Curves.ease);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final overlayColor = widget.backgroundColor ?? Theme.of(context).scaffoldBackgroundColor;
    final overlayWidth = MediaQuery.of(context).size.width;

    return Stack(
        children: [
          SingleChildScrollView(
            controller: controller,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: widget.overlayHeight),
              child: Column(
                  spacing: widget.spacing,
                  children: widget.children
              ),
            ),
          ),
          Positioned(
            height: widget.overlayHeight,
            width: overlayWidth,
            top: -1,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        overlayColor.withAlpha(0),
                        overlayColor
                      ])
              ),
            ),
          ),
          Positioned(
            height: widget.overlayHeight,
            width: overlayWidth,
            bottom: -1,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        overlayColor.withAlpha(0),
                        overlayColor
                      ])
              ),
            ),
          )
        ]);
  }
}