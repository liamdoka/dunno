import 'package:collection/collection.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'spinner_list_provider.freezed.dart';
part 'spinner_list_provider.g.dart';

@freezed
sealed class SpinnerListModel with _$SpinnerListModel {
  const SpinnerListModel._();

  const factory SpinnerListModel({
    @Default([]) List<SpinnerModel> spinners,
    int? selectedSpinnerIndex,
  }) = _SpinnerListModel;

  factory SpinnerListModel.fromJson(Map<String, dynamic> json) =>
      _$SpinnerListModelFromJson(json);

  SpinnerModel? get selectedSpinner {
    if (selectedSpinnerIndex == null) return null;
    if (selectedSpinnerIndex! < 0 || selectedSpinnerIndex! >= spinners.length) return null;
    return spinners[selectedSpinnerIndex!];
  }
}

@riverpod
class SpinnerList extends _$SpinnerList {

  @override
  SpinnerListModel build() {
    return SpinnerListModel(
        selectedSpinnerIndex: null,
        spinners: [
          SpinnerModel(title: "Chores",
            description: "Sunday reset required",
            items: [
              "Kitchen",
              "Bathroom",
              "Vacuum",
              "Sheets",
              "Laundry",
              "Dishes",
            ],
          ),
          SpinnerModel(title: "UberEats",
            items: [
              "Nando's",
              "Zambrero's",
              "Misschu",
              "GYG",
              "Schnitz",
              "Fishbowl",
              "Maccas",
              "Fat Boy Thai",
              "Neighbourhood Pizza",
              "Domino's"
            ],
          )
        ]
    );
  }

  void setSelectedSpinner(int? index) {

    final newList = List<SpinnerModel>.from(state.spinners
        .whereIndexed((idx, _) => index != idx));

    if (index != null) {
      newList.insert(0, state.spinners[index]);
    }

    state = state.copyWith(
      selectedSpinnerIndex: index,
      spinners: newList
    );
  }
}