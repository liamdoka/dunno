import 'dart:math';

extension RandomRange on Random {
  double nextDoubleRange(double min, double max) {
    return nextDouble() * (max - min) + min;
  }
}