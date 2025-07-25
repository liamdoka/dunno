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
      stats: json['stats'] == null
          ? null
          : SpinnerStatsModel.fromJson(json['stats'] as Map<String, dynamic>),
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
      'isFavorite': instance.isFavorite,
      'tags': instance.tags,
    };

_SpinnerStatsModel _$SpinnerStatsModelFromJson(Map<String, dynamic> json) =>
    _SpinnerStatsModel(
      createdTime: (json['createdTime'] as num?)?.toInt(),
      lastEditTime: (json['lastEditTime'] as num?)?.toInt(),
      lastSpinTime: (json['lastSpinTime'] as num?)?.toInt(),
      deletedTime: (json['deletedTime'] as num?)?.toInt(),
      spinCount: (json['spinCount'] as num?)?.toInt() ?? 0,
      editCount: (json['editCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$SpinnerStatsModelToJson(_SpinnerStatsModel instance) =>
    <String, dynamic>{
      'createdTime': instance.createdTime,
      'lastEditTime': instance.lastEditTime,
      'lastSpinTime': instance.lastSpinTime,
      'deletedTime': instance.deletedTime,
      'spinCount': instance.spinCount,
      'editCount': instance.editCount,
    };
