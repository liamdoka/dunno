import 'dart:math';

import 'package:dunno/models/color_palette_model.dart';
import 'package:dunno/models/simple_color_model.dart';
import 'package:dunno/models/spinner_segment_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'spinner_model.freezed.dart';
part 'spinner_model.g.dart';

final uuid = Uuid();

@freezed
sealed class SpinnerModel with _$SpinnerModel {

  @override final String id;
  @override final SpinnerStatsModel stats;

  factory SpinnerModel({
    required String title,
    required SimpleColor color,
    required List<SpinnerSegmentModel> segments,
    String? description,
    String? id,
    String? emojis,
    SpinnerStatsModel? stats,
    ColorPaletteModel? palette,
    @Default(false) bool isFavorite,
    @Default([]) List<String> tags
  }) = _SpinnerModel;

  // Generate the `id` and `stats` properties when first instantiated
  SpinnerModel._({ String? id, SpinnerStatsModel? stats }) :
        id = id ?? uuid.v4(),
        stats = stats ?? SpinnerStatsModel();

  factory SpinnerModel.fromJson(Map<String, dynamic> json) =>
      _$SpinnerModelFromJson(json);

  bool get isDeleted => stats.deletedTime != null;
  bool get isNotDeleted => stats.deletedTime == null;
}


@freezed
sealed class SpinnerStatsModel with _$SpinnerStatsModel {

  @override final int createdTime;

  factory SpinnerStatsModel({
    int? createdTime,
    int? lastEditTime,
    int? lastSpinTime,
    int? deletedTime,
    @Default(0) int spinCount,
    @Default(0) int editCount,
  }) = _SpinnerStatsModel;

  // Generate in 'non-constant fashion' the createdTime
  SpinnerStatsModel._({ int? createdTime }) :
        createdTime = createdTime ?? DateTime.now().millisecondsSinceEpoch;

  factory SpinnerStatsModel.fromJson(Map<String, dynamic> json) =>
      _$SpinnerStatsModelFromJson(json);

  /// The last time the [SpinnerModel] was interacted with.
  int get lastTime =>
      [createdTime, ?lastSpinTime, ?lastEditTime, ?deletedTime].fold(0, max);
}