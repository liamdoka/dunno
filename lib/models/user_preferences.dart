import 'package:dunno/models/color_palette_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "user_preferences.freezed.dart";
part "user_preferences.g.dart";

@freezed
sealed class UserPreferencesModel with _$UserPreferencesModel {
  const factory UserPreferencesModel({
    @Default(DunnoColorPalettes.bubblegum) ColorPaletteModel defaultColorPalette,
  }) = _UserPreferencesModel;

  factory UserPreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesModelFromJson(json);
}

