// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spinner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpinnerModel _$SpinnerModelFromJson(Map<String, dynamic> json) =>
    _SpinnerModel(
      title: json['title'] as String,
      color: SimpleColor.fromJson(json['color'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String?,
      lastSpinTime: (json['lastSpinTime'] as num?)?.toInt(),
      id: json['id'] as String?,
      createdTime: (json['createdTime'] as num?)?.toInt(),
      isFavorite: json['isFavorite'] as bool? ?? false,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
    );

Map<String, dynamic> _$SpinnerModelToJson(_SpinnerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdTime': instance.createdTime,
      'title': instance.title,
      'color': instance.color,
      'items': instance.items,
      'description': instance.description,
      'lastSpinTime': instance.lastSpinTime,
      'isFavorite': instance.isFavorite,
      'tags': instance.tags,
    };
