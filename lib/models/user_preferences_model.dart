import 'dart:math';

import 'package:dunno/models/color_palette_model.dart';
import 'package:dunno/models/simple_color_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'user_preferences_model.freezed.dart';
part 'user_preferences_model.g.dart';

const uuid = Uuid();

@freezed
sealed class UserPreferencesModel with _$UserPreferencesModel {

  factory UserPreferencesModel({
    String? id,
    @Default(ThemeMode.system) ThemeMode appTheme,
    @Default(SimpleColor(103, 58, 183)) SimpleColor appTint,
    @Default('⭐️⭐️⭐️') String defaultConfetti,
    @Default(ConfettiAmount.medium) ConfettiAmount confettiAmount,
    ColorPaletteModel? defaultColorPalette,
  }) = _UserPreferencesModel;

  UserPreferencesModel._({ String? id, ColorPaletteModel? defaultColorPalette }):
      id = id ?? uuid.v4(),
      defaultColorPalette = defaultColorPalette ?? DunnoColorPalettes.material;

  factory UserPreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesModelFromJson(json);

  @override final String id;
  @override final ColorPaletteModel defaultColorPalette;
}


enum ConfettiAmount {
  low(10, 20),
  medium(30, 50),
  high(100, 200),
  ridiculous(500, 1000);

  const ConfettiAmount(this.min, this.max);

  final int min;
  final int max;

  int random(Random rand) => rand.nextInt(max - min + 1) + min;

  // For persistence
  static ConfettiAmount fromIndex(int index) => ConfettiAmount.values[index];
  int get indexValue => index;
}
