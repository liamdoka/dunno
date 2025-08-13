import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_color_model.freezed.dart';
part 'simple_color_model.g.dart';

@freezed
sealed class SimpleColor with _$SimpleColor {
  const factory SimpleColor(int r, int g, int b) = _SimpleColor;

  const SimpleColor._();

  factory SimpleColor.fromJson(Map<String, dynamic> json) =>
      _$SimpleColorFromJson(json);

  /// Create a [SimpleColor] from a Dart [Color],
  /// sacrificing opacity and other data.
  factory SimpleColor.fromColor(Color color) => SimpleColor(
    (color.r * 255).floor(),
    (color.g * 255).floor(),
    (color.b * 255).floor(),
  );

  /// Convert a [SimpleColor] to a Dart [Color]
  Color toColor() => Color.fromRGBO(r, g, b, 1);

  // "Placeholder" simple colors.
  static const red = SimpleColor(255, 0, 0);
  static const green = SimpleColor(0, 255, 0);
  static const blue = SimpleColor(0, 0, 255);
}
