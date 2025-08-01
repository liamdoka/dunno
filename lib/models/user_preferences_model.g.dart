// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPreferencesModel _$UserPreferencesModelFromJson(
  Map<String, dynamic> json,
) => _UserPreferencesModel(
  id: json['id'] as String?,
  appTheme:
      $enumDecodeNullable(_$ThemeModeEnumMap, json['appTheme']) ??
      ThemeMode.system,
  appTint: json['appTint'] == null
      ? const SimpleColor(103, 58, 183)
      : SimpleColor.fromJson(json['appTint'] as Map<String, dynamic>),
  defaultConfetti: json['defaultConfetti'] as String? ?? '⭐️⭐️⭐️',
  confettiAmount:
      $enumDecodeNullable(_$ConfettiAmountEnumMap, json['confettiAmount']) ??
      ConfettiAmount.medium,
  defaultColorPalette: json['defaultColorPalette'] == null
      ? null
      : ColorPaletteModel.fromJson(
          json['defaultColorPalette'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$UserPreferencesModelToJson(
  _UserPreferencesModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'defaultColorPalette': instance.defaultColorPalette,
  'appTheme': _$ThemeModeEnumMap[instance.appTheme]!,
  'appTint': instance.appTint,
  'defaultConfetti': instance.defaultConfetti,
  'confettiAmount': _$ConfettiAmountEnumMap[instance.confettiAmount]!,
};

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

const _$ConfettiAmountEnumMap = {
  ConfettiAmount.low: 'low',
  ConfettiAmount.medium: 'medium',
  ConfettiAmount.high: 'high',
  ConfettiAmount.ridiculous: 'ridiculous',
};
