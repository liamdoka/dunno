import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_stats_model.freezed.dart';
part 'user_stats_model.g.dart';

@freezed
sealed class UserStatsModel with _$UserStatsModel {
  const factory UserStatsModel({
    @Default(0) int totalSpins,
    @Default(0) int spinnersCreatedCount,
    @Default(0) int spinnersDeletedCount,
    @Default(0) int confettiCount,
  }) = _UserStatsModel;

  factory UserStatsModel.fromJson(Map<String, dynamic> json) =>
      _$UserStatsModelFromJson(json);
}