import 'package:freezed_annotation/freezed_annotation.dart';

part 'spinner_model.freezed.dart';
part 'spinner_model.g.dart';

@freezed
sealed class SpinnerModel with _$SpinnerModel {
  const factory SpinnerModel({
    required String title,
    required List<String> items,
    String? description,
    @Default([]) List<String> tags
  }) = _SpinnerModel;

  factory SpinnerModel.fromJson(Map<String, dynamic> json) =>
      _$SpinnerModelFromJson(json);
}
