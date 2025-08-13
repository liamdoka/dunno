import 'package:dunno/models/dunno_stats_model.dart';
import 'package:dunno/models/simple_color_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'color_palette_model.freezed.dart';
part 'color_palette_model.g.dart';

// TODOColor palette stats.
// - times landed on color
// - favorite palette

const uuid = Uuid();

@freezed
sealed class ColorPaletteModel with _$ColorPaletteModel {

  factory ColorPaletteModel({
    required String title, required List<SimpleColor> colors, String? id,
    DunnoStatsModel? stats,
    @Default(false) bool isFavorite,
  }) = _ColorPaletteModel;

  ColorPaletteModel._({String? id, DunnoStatsModel? stats})
    : id = id ?? uuid.v4(),
      stats = stats ?? DunnoStatsModel();

  factory ColorPaletteModel.fromJson(Map<String, dynamic> json) =>
      _$ColorPaletteModelFromJson(json);
  @override
  final String id;
  @override
  final DunnoStatsModel stats;

  /// Shorthand for `palette.colors.length`
  int get size => colors.length;

  /// Shorthand for deleted status
  bool get isDeleted => stats.deletedTime != null;
  bool get isNotDeleted => stats.deletedTime == null;

  /// Create a `[ColorPaletteModel] from Dart "complex" colors.
  static ColorPaletteModel fromColors(
    List<Color> colors, {
    String title = 'Untitled palette',
  }) => ColorPaletteModel(
      title: title,
      colors: List.from(colors.map(SimpleColor.fromColor)),
    );

  /// Return the color for the segment based on its index.
  Color forIndex(int index) => colors[index % colors.length].toColor();

  /// Return the simple color for the segment based on its index.
  SimpleColor forIndexSimple(int index) => colors[index % colors.length];
}

/// Some pre-filled color palettes
abstract class DunnoColorPalettes {
  static final green = ColorPaletteModel(
    title: 'Shrek',
    colors: [
      const SimpleColor(236, 236, 163),
      const SimpleColor(181, 229, 80),
      const SimpleColor(171, 195, 47),
      const SimpleColor(128, 156, 19),
      const SimpleColor(96, 124, 60),
    ],
  );

  static final bubblegum = ColorPaletteModel(
    title: 'Bubblegum',
    colors: [
      const SimpleColor(168, 158, 181),
      const SimpleColor(214, 166, 178),
      const SimpleColor(236, 217, 198),
      const SimpleColor(247, 212, 212),
      const SimpleColor(255, 248, 240),
    ],
  );

  static final ColorPaletteModel material = ColorPaletteModel.fromColors(
    Colors.primaries,
    title: 'Material',
  );

  static final ColorPaletteModel materialAccent = ColorPaletteModel.fromColors(
    Colors.accents,
    title: 'Material Accent',
  );
}
