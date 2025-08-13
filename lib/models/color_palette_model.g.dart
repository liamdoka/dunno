// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_palette_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ColorPaletteModel _$ColorPaletteModelFromJson(Map<String, dynamic> json) =>
    _ColorPaletteModel(
      title: json['title'] as String,
      colors: (json['colors'] as List<dynamic>)
          .map((e) => SimpleColor.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      stats: json['stats'] == null
          ? null
          : DunnoStatsModel.fromJson(json['stats'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$ColorPaletteModelToJson(_ColorPaletteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stats': instance.stats,
      'title': instance.title,
      'colors': instance.colors,
      'isFavorite': instance.isFavorite,
    };
