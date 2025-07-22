import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:dunno/hive/hive_adapters.dart';
import 'package:dunno/models/spinner_model.dart';

part 'spinner_list_provider.freezed.dart';
part 'spinner_list_provider.g.dart';

@freezed
sealed class SpinnerListModel with _$SpinnerListModel {
  const SpinnerListModel._();

  const factory SpinnerListModel({
    @Default([]) List<SpinnerModel> spinners,
  }) = _SpinnerListModel;

  factory SpinnerListModel.fromJson(Map<String, dynamic> json) =>
      _$SpinnerListModelFromJson(json);
}

/// Returns the last four spinners interacted with
@riverpod
List<SpinnerModel> recentSpinners(Ref ref) {
  final spinners = ref.watch(spinnerListProvider).spinners;

  return spinners
      .sorted((a,b) => a.lastActivityTime.compareTo(b.lastActivityTime))
      .reversed
      .toList()
      .sublist(max(0, spinners.length - 4));
}


/// Returns spinners that have been `favorited`
@riverpod
List<SpinnerModel> favoriteSpinners(Ref ref) {
  final spinners = ref.watch(spinnerListProvider).spinners;
  return List.from(spinners.where((spinner) => spinner.isFavorite));
}


@riverpod
class SpinnerList extends _$SpinnerList {
  final box = Hive.box<SpinnerModel>(HiveBox.spinners.name);

  @override
  SpinnerListModel build() {
    final stream = box.watch().listen((_) {
      print("something happened in the box");

      state = state.copyWith(spinners: List.from(box.values));
    });

    ref.onDispose(stream.cancel);

    return SpinnerListModel(
        spinners: List.from(box.values)
    );
  }

  /// Updates the last access time of the spinner
  void setSelectedSpinner(String? id) {
    final spinner = state.spinners
        .firstWhereOrNull((spinner) => spinner.id == id);
    if (spinner == null) return;

    box.put(spinner.id, spinner.copyWith(
        lastSpinTime: DateTime.now().millisecondsSinceEpoch
    ));

    ref.notifyListeners();
  }

  /// Saves the spinner to the device storage
  void saveSpinner(SpinnerModel spinner) async {
    box.put(spinner.id, spinner);

    ref.notifyListeners();
  }

  /// Removes the spinner from the device storage
  void deleteSpinner(String id) async {
    await box.delete(id);
    ref.notifyListeners();
  }

  /// Toggles the `isFavorite` status
  void toggleFavorite(String id) {
    final spinner = state.spinners
        .firstWhereOrNull((spinner) => spinner.id == id);

    if (spinner == null) return;

    box.put(spinner.id, spinner.copyWith(
        isFavorite: !spinner.isFavorite
    ));

    ref.notifyListeners();
  }
}

// SpinnerListModel(
//     spinners: [
//       SpinnerModel(
//         title: "Chores",
//         color: Colors.primaries[0].toSimpleColor(),
//         description: "Sunday reset required",
//         items: [
//           "Kitchen",
//           "Bathroom",
//           "Vacuum",
//           "Sheets",
//           "Laundry",
//           "Dishes",
//         ],
//       ),
//       SpinnerModel(
//         title: "UberEats",
//         color: Colors.primaries[1].toSimpleColor(),
//         items: [
//           "Nando's",
//           "Zambrero's",
//           "Misschu",
//           "GYG",
//           "Schnitz",
//           "Fishbowl",
//           "Maccas",
//           "Fat Boy Thai",
//           "Neighbourhood Pizza",
//           "Domino's"
//         ],
//       )
//     ]
// );