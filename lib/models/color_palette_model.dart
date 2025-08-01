import 'package:dunno/models/simple_color_model.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'dunno_stats_model.dart';

part 'color_palette_model.freezed.dart';
part 'color_palette_model.g.dart';

// TODO Color palette stats.
// - times landed on color
// - favorite palette

final uuid = Uuid();

@freezed
sealed class ColorPaletteModel with _$ColorPaletteModel {
  @override
  final String id;
  @override
  final DunnoStatsModel stats;

  factory ColorPaletteModel({
    String? id,
    DunnoStatsModel? stats,
    required String title,
    required List<SimpleColor> colors,
    @Default(false) bool isFavorite,
  }) = _ColorPaletteModel;

  ColorPaletteModel._({String? id, DunnoStatsModel? stats})
    : id = id ?? uuid.v4(),
      stats = stats ?? DunnoStatsModel();

  factory ColorPaletteModel.fromJson(Map<String, dynamic> json) =>
      _$ColorPaletteModelFromJson(json);

  /// Shorthand for `palette.colors.length`
  int get size => colors.length;

  /// Create a `[ColorPaletteModel] from Dart "complex" colors.
  static ColorPaletteModel fromColors(
    List<Color> colors, {
    String title = "Untitled palette",
  }) {
    return ColorPaletteModel(
      title: title,
      colors: List.from(colors.map(SimpleColor.fromColor)),
    );
  }

  /// Return the color for the segment based on its index.
  Color forIndex(int index) => colors[index % colors.length].toColor();

  /// Return the simple color for the segment based on its index.
  SimpleColor forIndexSimple(int index) => colors[index % colors.length];
}

/// Some pre-filled color palettes
abstract class DunnoColorPalettes {
  static final green = ColorPaletteModel(
    title: "Shrek",
    colors: [
      SimpleColor(236, 236, 163),
      SimpleColor(181, 229, 80),
      SimpleColor(171, 195, 47),
      SimpleColor(128, 156, 19),
      SimpleColor(96, 124, 60),
    ],
  );

  static final bubblegum = ColorPaletteModel(
    title: "Bubblegum",
    colors: [
      SimpleColor(168, 158, 181),
      SimpleColor(214, 166, 178),
      SimpleColor(236, 217, 198),
      SimpleColor(247, 212, 212),
      SimpleColor(255, 248, 240),
    ],
  );

  static final material = ColorPaletteModel.fromColors(
    Colors.primaries,
    title: "Material",
  );

  static final materialAccent = ColorPaletteModel.fromColors(
    Colors.accents,
    title: "Material Accent",
  );
}
