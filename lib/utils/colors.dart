import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'colors.freezed.dart';
part 'colors.g.dart';

@freezed
sealed class SimpleColor with _$SimpleColor {
  const SimpleColor._();

  const factory SimpleColor(
    int r,
    int g,
    int b
  ) = _SimpleColor;

  factory SimpleColor.fromJson(Map<String, dynamic> json) =>
      _$SimpleColorFromJson(json);

  /// Create a [SimpleColor] from a Dart [Color], sacrificing opacity and other data.
  static SimpleColor fromColor(Color color) {
    return SimpleColor(
        (color.r * 255).floor(),
        (color.g * 255).floor(),
        (color.b * 255).floor()
    );
  }


  /// Convert a [SimpleColor] to a Dart [Color]
  Color toColor() {
    return Color.fromRGBO(r, g, b, 1);
  }

  // "Placeholder" simple colors.
  static const red = SimpleColor(255, 0, 0);
  static const green = SimpleColor(0, 255, 0);
  static const blue = SimpleColor(0, 0, 255);
}


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