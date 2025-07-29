
import 'package:dunno/models/simple_color_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_palette_model.freezed.dart';
part 'color_palette_model.g.dart';

// TODO Color palette stats.
// - times landed on color
// - favorite palette

@freezed
sealed class ColorPaletteModel with _$ColorPaletteModel {
  const ColorPaletteModel._();

  const factory ColorPaletteModel({
    required String title,
    required List<SimpleColor> colors,
    @Default(false) bool isFavorite
  }) = _ColorPaletteModel;

  factory ColorPaletteModel.fromJson(Map<String, dynamic> json) =>
      _$ColorPaletteModelFromJson(json);


  /// Shorthand for `palette.colors.length`
  int get size => colors.length;


  /// Create a `[ColorPaletteModel] from Dart "complex" colors.
  static ColorPaletteModel fromColors(
      List<Color> colors, {
        String title = "Untitled palette"
      }) {
    return ColorPaletteModel(
        title: title,
        colors: List.from(colors.map(SimpleColor.fromColor))
    );
  }

  /// Return the color for the segment based on its index.
  Color forIndex(int index) => colors[index % colors.length].toColor();

  /// Return the simple color for the segment based on its index.
  SimpleColor forIndexSimple(int index) => colors[index % colors.length];
}


/// Some pre-filled color palettes
abstract class DunnoColorPalettes {
  static const green = ColorPaletteModel(
      title: "Shrek",
      colors: [
        SimpleColor(236,236,163),
        SimpleColor(181,229,80),
        SimpleColor(171,195,47),
        SimpleColor(128,156,19),
        SimpleColor(96,124,60)
      ]
  );

  static const bubblegum = ColorPaletteModel(
      title: "Bubblegum",
      colors: [
        SimpleColor(168,158,181),
        SimpleColor(214,166,178),
        SimpleColor(236,217,198),
        SimpleColor(247,212,212),
        SimpleColor(255,248,240)
      ]
  );

  static final material = ColorPaletteModel.fromColors(
      Colors.primaries,
      title: "Material"
  );
}