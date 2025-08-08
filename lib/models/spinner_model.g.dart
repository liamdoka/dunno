// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spinner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpinnerModel _$SpinnerModelFromJson(Map<String, dynamic> json) =>
    _SpinnerModel(
      title: json['title'] as String,
      color: SimpleColor.fromJson(json['color'] as Map<String, dynamic>),
      segments: (json['segments'] as List<dynamic>)
          .map((e) => SpinnerSegmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      id: json['id'] as String?,
      confetti: json['confetti'] as String?,
      stats: json['stats'] == null
          ? null
          : DunnoStatsModel.fromJson(json['stats'] as Map<String, dynamic>),
      paletteId: json['paletteId'] as String?,
      isFavorite: json['isFavorite'] as bool? ?? false,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
    );

Map<String, dynamic> _$SpinnerModelToJson(_SpinnerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stats': instance.stats,
      'title': instance.title,
      'color': instance.color,
      'segments': instance.segments,
      'description': instance.description,
      'confetti': instance.confetti,
      'paletteId': instance.paletteId,
      'isFavorite': instance.isFavorite,
      'tags': instance.tags,
    };
