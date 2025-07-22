import 'package:dunno/utils/colors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'spinner_model.freezed.dart';
part 'spinner_model.g.dart';

final uuid = Uuid();

@freezed
sealed class SpinnerModel with _$SpinnerModel {

  @override final String id;
  @override final int createdTime;

  factory SpinnerModel({
    required String title,
    required SimpleColor color,
    required List<String> items,
    String? description,
    int? lastSpinTime,
    String? id,
    int? createdTime,
    @Default(false) bool isFavorite,
    @Default([]) List<String> tags
  }) = _SpinnerModel;

  // Generate the `id` and `createdTime` properties when first instantiated
  SpinnerModel._({ String? id, int? createdTime }) :
    id = id ?? uuid.v4(),
    createdTime = createdTime ?? DateTime.now().millisecondsSinceEpoch;

  factory SpinnerModel.fromJson(Map<String, dynamic> json) =>
      _$SpinnerModelFromJson(json);

  int get lastActivityTime => lastSpinTime ?? createdTime;
}
