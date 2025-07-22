import 'package:flutter/material.dart';

abstract class AppSpacing {
  static const xxs = 4.0;
  static const xs = 8.0;
  static const sm = 12.0;
  // ...
}

const defaultBorderRadius = BorderRadius.all(Radius.circular(AppSpacing.sm));
