import 'package:dunno/models/dunno_stats_model.dart';
import 'package:dunno/models/simple_color_model.dart';
import 'package:dunno/models/spinner_segment_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'spinner_model.freezed.dart';
part 'spinner_model.g.dart';

const uuid = Uuid();

@freezed
sealed class SpinnerModel with _$SpinnerModel {
  factory SpinnerModel({
    required String title,
    required SimpleColor color,
    required List<SpinnerSegmentModel> segments,
    String? description,
    String? id,
    String? confetti,
    DunnoStatsModel? stats,
    String? paletteId,
    @Default(false) bool isFavorite,
    @Default([]) List<String> tags,
  }) = _SpinnerModel;

  // Generate the `id` and `stats` properties when first instantiated
  SpinnerModel._({String? id, DunnoStatsModel? stats})
    : id = id ?? uuid.v4(),
      stats = stats ?? DunnoStatsModel();

  factory SpinnerModel.fromJson(Map<String, dynamic> json) =>
      _$SpinnerModelFromJson(json);

  @override
  final String id;
  @override
  final DunnoStatsModel stats;

  bool get isDeleted => stats.deletedTime != null;
  bool get isNotDeleted => stats.deletedTime == null;
}
