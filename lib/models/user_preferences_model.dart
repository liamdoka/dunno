import 'package:dunno/models/color_palette_model.dart';
import 'package:dunno/models/simple_color_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "user_preferences_model.freezed.dart";
part "user_preferences_model.g.dart";

@freezed
sealed class UserPreferencesModel with _$UserPreferencesModel {
  const factory UserPreferencesModel({
    @Default(ThemeMode.system) ThemeMode appTheme,
    @Default(SimpleColor(103, 58, 183)) SimpleColor appTint,
    @Default(DunnoColorPalettes.bubblegum) ColorPaletteModel defaultColorPalette,
    @Default('⭐️⭐️⭐️') String defaultConfetti,
  }) = _UserPreferencesModel;

  factory UserPreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesModelFromJson(json);
}
