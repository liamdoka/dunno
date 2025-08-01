// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dunno_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DunnoStatsModel _$DunnoStatsModelFromJson(Map<String, dynamic> json) =>
    _DunnoStatsModel(
      createdTime: (json['createdTime'] as num?)?.toInt(),
      lastEditTime: (json['lastEditTime'] as num?)?.toInt(),
      lastSpinTime: (json['lastSpinTime'] as num?)?.toInt(),
      deletedTime: (json['deletedTime'] as num?)?.toInt(),
      spinCount: (json['spinCount'] as num?)?.toInt() ?? 0,
      editCount: (json['editCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$DunnoStatsModelToJson(_DunnoStatsModel instance) =>
    <String, dynamic>{
      'createdTime': instance.createdTime,
      'lastEditTime': instance.lastEditTime,
      'lastSpinTime': instance.lastSpinTime,
      'deletedTime': instance.deletedTime,
      'spinCount': instance.spinCount,
      'editCount': instance.editCount,
    };
