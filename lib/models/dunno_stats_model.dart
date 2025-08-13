import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dunno_stats_model.freezed.dart';
part 'dunno_stats_model.g.dart';

@freezed
sealed class DunnoStatsModel with _$DunnoStatsModel {

  @override final int createdTime;

  factory DunnoStatsModel({
    int? createdTime,
    int? lastEditTime,
    int? lastSpinTime,
    int? deletedTime,
    @Default(0) int spinCount,
    @Default(0) int editCount,
  }) = _DunnoStatsModel;

  // Generate, in 'non-constant fashion', the createdTime
  DunnoStatsModel._({ int? createdTime }) :
        createdTime = createdTime ?? DateTime.now().millisecondsSinceEpoch;

  factory DunnoStatsModel.fromJson(Map<String, dynamic> json) =>
      _$DunnoStatsModelFromJson(json);

  /// The last time the [parent] was interacted with.
  int get lastTime =>
      [createdTime, ?lastSpinTime, ?lastEditTime, ?deletedTime].reduce(max);
}