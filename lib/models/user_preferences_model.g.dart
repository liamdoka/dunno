// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPreferencesModel _$UserPreferencesModelFromJson(
  Map<String, dynamic> json,
) => _UserPreferencesModel(
  appTheme:
      $enumDecodeNullable(_$ThemeModeEnumMap, json['appTheme']) ??
      ThemeMode.system,
  appTint: json['appTint'] == null
      ? const SimpleColor(103, 58, 183)
      : SimpleColor.fromJson(json['appTint'] as Map<String, dynamic>),
  defaultColorPalette: json['defaultColorPalette'] == null
      ? DunnoColorPalettes.bubblegum
      : ColorPaletteModel.fromJson(
          json['defaultColorPalette'] as Map<String, dynamic>,
        ),
  defaultEmojis: json['defaultEmojis'] as String? ?? '⭐️',
);

Map<String, dynamic> _$UserPreferencesModelToJson(
  _UserPreferencesModel instance,
) => <String, dynamic>{
  'appTheme': _$ThemeModeEnumMap[instance.appTheme]!,
  'appTint': instance.appTint,
  'defaultColorPalette': instance.defaultColorPalette,
  'defaultEmojis': instance.defaultEmojis,
};

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

_UserStatsModel _$UserStatsModelFromJson(
  Map<String, dynamic> json,
) => _UserStatsModel(
  totalSpins: (json['totalSpins'] as num?)?.toInt() ?? 0,
  spinnersCreatedCount: (json['spinnersCreatedCount'] as num?)?.toInt() ?? 0,
  spinnersDeletedCount: (json['spinnersDeletedCount'] as num?)?.toInt() ?? 0,
  confettiCount: (json['confettiCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$UserStatsModelToJson(_UserStatsModel instance) =>
    <String, dynamic>{
      'totalSpins': instance.totalSpins,
      'spinnersCreatedCount': instance.spinnersCreatedCount,
      'spinnersDeletedCount': instance.spinnersDeletedCount,
      'confettiCount': instance.confettiCount,
    };
