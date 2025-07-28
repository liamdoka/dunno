import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_color_model.freezed.dart';
part 'simple_color_model.g.dart';

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

