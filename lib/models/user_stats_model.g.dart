// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
