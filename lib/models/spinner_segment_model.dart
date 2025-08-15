import 'package:dunno/models/simple_color_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spinner_segment_model.freezed.dart';
part 'spinner_segment_model.g.dart';

@freezed
sealed class SpinnerSegmentModel with _$SpinnerSegmentModel {
  const factory SpinnerSegmentModel({
    required String title,
    @Default(SimpleColor.green) SimpleColor color,
    @Default(1) int weight,
    @Default(0) int winCount,
  }) = _SpinnerSegmentModel;

  factory SpinnerSegmentModel.fromJson(Map<String, dynamic> json) =>
      _$SpinnerSegmentModelFromJson(json);
}

// TODO(liamdoka): Add "wins" for segments
