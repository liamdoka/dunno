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