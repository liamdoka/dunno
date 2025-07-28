import 'package:dunno/models/color_palette_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "user_preferences_model.freezed.dart";
part "user_preferences_model.g.dart";

@freezed
sealed class UserPreferencesModel with _$UserPreferencesModel {
  const factory UserPreferencesModel({
    @Default(ThemeMode.system) ThemeMode appTheme,
    @Default(DunnoColorPalettes.bubblegum) ColorPaletteModel defaultColorPalette,
    @Default('⭐️') String defaultEmojis,
  }) = _UserPreferencesModel;

  factory UserPreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesModelFromJson(json);
}


@freezed
sealed class UserStatsModel with _$UserStatsModel {
  const factory UserStatsModel({
    @Default(0) int totalSpins,
    @Default(0) int spinnersCreatedCount,
    @Default(0) int spinnersDeletedCount,
    @Default(0) int confettiCount,
  }) = _UserStatsModel;

  factory UserStatsModel.fromJson(Map<String, dynamic> json) =>
      _$UserStatsModelFromJson(json);
}