import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        spacing: 12.0,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Stats..."),
        ],
      ),
    );
  }
}