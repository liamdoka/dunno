import 'dart:math';

extension RandomRange on Random {
  double nextDoubleRange(double min, double max) {
    return nextDouble() * (max - min) + min;
  }
}


extension OrdinalInt on int {
  String toOrdinal() {
    if (this <= 0) return toString();

    int lastTwoDigits = this % 100;
    int lastDigit = this % 10;

    if (lastTwoDigits >= 11 && lastTwoDigits <= 13) {
      return '${this}th';
    }

    switch (lastDigit) {
      case 1:
        return '${this}st';
      case 2:
        return '${this}nd';
      case 3:
        return '${this}rd';
      default:
        return '${this}th';
    }
  }
}
