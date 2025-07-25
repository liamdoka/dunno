// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPreferencesModel _$UserPreferencesModelFromJson(
  Map<String, dynamic> json,
) => _UserPreferencesModel(
  defaultColorPalette: json['defaultColorPalette'] == null
      ? DunnoColorPalettes.bubblegum
      : ColorPaletteModel.fromJson(
          json['defaultColorPalette'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$UserPreferencesModelToJson(
  _UserPreferencesModel instance,
) => <String, dynamic>{'defaultColorPalette': instance.defaultColorPalette};
