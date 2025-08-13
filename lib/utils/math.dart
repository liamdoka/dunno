import 'dart:math';

extension RandomRange on Random {
  double nextDoubleRange(double min, double max) => nextDouble() * (max - min) + min;
}


extension OrdinalInt on int {
  String toOrdinal() {
    if (this <= 0) return toString();

    final int lastTwoDigits = this % 100;
    final int lastDigit = this % 10;

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

extension ReadableInt on int {
  String toReadable() {
    final n = this;

    if (n < 1000) return n.toString();

    if (n < 10000) {
      // 1,000 -> 9,999 (comma separated)
      return '${n ~/ 1000},${(n % 1000).toString().padLeft(3, '0')}';
    }

    if (n < 1000000) {
      // Show K suffix, keep total ~4 characters (e.g. 10.2K)
      final value = n / 1000;
      return _formatWithSuffix(value, 'K');
    }

    if (n < 1000000000) {
      // Show M suffix
      final value = n / 1000000;
      return _formatWithSuffix(value, 'M');
    }

    // Show B suffix for billions
    final value = n / 1000000000;
    return _formatWithSuffix(value, 'B');
  }

  String _formatWithSuffix(double value, String suffix) {
    // Limit to 3 significant digits (ensuring <=4 total chars incl suffix)
    String text;

    if (value >= 100) {
      text = value.toStringAsFixed(0); // No decimals, e.g. 123K
    } else if (value >= 10) {
      text = value.toStringAsFixed(1); // e.g. 12.3K
    } else {
      text = value.toStringAsFixed(2); // e.g. 1.23K
    }

    // Remove trailing zeros and decimal point
    text = text.replaceAll(RegExp(r'\.?0+$'), '');

    return '$text$suffix';
  }
}
