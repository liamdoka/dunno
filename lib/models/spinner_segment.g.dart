// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spinner_segment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpinnerSegmentModel _$SpinnerSegmentModelFromJson(Map<String, dynamic> json) =>
    _SpinnerSegmentModel(
      title: json['title'] as String,
      color: json['color'] == null
          ? SimpleColor.green
          : SimpleColor.fromJson(json['color'] as Map<String, dynamic>),
      weight: (json['weight'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$SpinnerSegmentModelToJson(
  _SpinnerSegmentModel instance,
) => <String, dynamic>{
  'title': instance.title,
  'color': instance.color,
  'weight': instance.weight,
};
