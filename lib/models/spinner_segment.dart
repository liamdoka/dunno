import 'package:freezed_annotation/freezed_annotation.dart';

part 'spinner_segment.freezed.dart';

@freezed
sealed class SpinnerSegment with _$SpinnerSegment {
  const factory SpinnerSegment({
    required String title,
    @Default(1) int weight
  }) = _SpinnerSegment;
}