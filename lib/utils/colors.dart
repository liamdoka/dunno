import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'colors.freezed.dart';
part 'colors.g.dart';

@freezed
sealed class SimpleColor with _$SimpleColor {
  const SimpleColor._();

  const factory SimpleColor({
    required int r,
    required int g,
    required int b
  }) = _SimpleColor;

  factory SimpleColor.fromJson(Map<String, dynamic> json) =>
      _$SimpleColorFromJson(json);

  static SimpleColor fromColor(Color color) {
    return SimpleColor(
        r: (color.r * 255).floor(),
        g: (color.g * 255).floor(),
        b: (color.b * 255).floor()
    );
  }

  Color toColor() {
    return Color.fromRGBO(r, g, b, 1);
  }
}

extension SimplerColor on Color {
  static Color fromSimpleColor(SimpleColor color) {
    return Color.fromRGBO(color.r, color.g, color.b, 1);
  }

  SimpleColor toSimpleColor() {
    return SimpleColor(
        r: (r * 255).floor(),
        g: (g * 255).floor(),
        b: (b * 255).floor()
    );
  }
}