
import 'package:flutter/material.dart';

class DunnoScrollView extends StatelessWidget {
  final List<Widget> children;
  final Color? backgroundColor;
  final double overlayHeight;
  final double spacing;

  const DunnoScrollView({
    super.key,
    required this.children,
    this.backgroundColor,
    this.overlayHeight = 24.0,
    this.spacing = 8
  });

  @override
  Widget build(BuildContext context) {
    final overlayColor = backgroundColor ?? Theme.of(context).scaffoldBackgroundColor;
    final overlayWidth = MediaQuery.of(context).size.width;

    return Expanded(child: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: overlayHeight),
              child: Column(
                  spacing: spacing,
                  children: children
              ),
            ),
          ),
          Positioned(
            height: overlayHeight,
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
            height: overlayHeight,
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
        ]),
    );
  }
}