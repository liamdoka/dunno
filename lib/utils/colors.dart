import 'dart:ui';

import 'package:dunno/models/simple_color_model.dart';

/// Convert Dart [Color] to and from a serializable format.
extension SimplerColor on Color {
  static Color fromSimpleColor(SimpleColor color) {
    return Color.fromRGBO(color.r, color.g, color.b, 1);
  }

  SimpleColor toSimpleColor() {
    return SimpleColor(
        (r * 255).floor(),
        (g * 255).floor(),
        (b * 255).floor()
    );
  }

  /// Supposedly computationally expensive, we'll see about that.
  bool get isBright => computeLuminance() > 0.35;
}


extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${(255 * a).toInt().toRadixString(16).padLeft(2, '0')}'
      '${(255 * r).toInt().toRadixString(16).padLeft(2, '0')}'
      '${(255 * g).toInt().toRadixString(16).padLeft(2, '0')}'
      '${(255 * b).toInt().toRadixString(16).padLeft(2, '0')}';
}