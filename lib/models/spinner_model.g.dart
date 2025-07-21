// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spinner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpinnerModel _$SpinnerModelFromJson(Map<String, dynamic> json) =>
    _SpinnerModel(
      title: json['title'] as String,
      items: (json['items'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
    );

Map<String, dynamic> _$SpinnerModelToJson(_SpinnerModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'items': instance.items,
      'description': instance.description,
      'tags': instance.tags,
    };
