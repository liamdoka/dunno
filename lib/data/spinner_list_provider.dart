import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:dunno/hive/hive_adapters.dart';
import 'package:dunno/models/spinner_model.dart';

part 'spinner_list_provider.g.dart';

/// Returns the last four spinners interacted with
@riverpod
List<SpinnerModel> recentSpinners(Ref ref) {
  final spinners = ref.watch(spinnerListProvider);

  return spinners
      .sorted((a,b) => b.stats.lastTime.compareTo(a.stats.lastTime))
      .sublist(0, min(4, spinners.length));
}

/// Returns spinners that have been `favorited`
@riverpod
List<SpinnerModel> favoriteSpinners(Ref ref) {
  final spinners = ref.watch(spinnerListProvider);
  return List.from(spinners.where((spinner) => spinner.isFavorite));
}


@riverpod
class SpinnerList extends _$SpinnerList {
  final box = Hive.box<SpinnerModel>(HiveBox.spinners.name);

  @override
  List<SpinnerModel> build() {
    final stream = box.watch().listen((_) {
      print("something happened in the box (robbie rich)");
      state = List.from(box.values);
    });

    ref.onDispose(stream.cancel);

    return List.from(box.values);
  }

  /// Saves the spinner to the device storage
  void saveSpinner(SpinnerModel spinner) async {
    box.put(spinner.id, spinner.copyWith(
      // have to do this because it maintains shallow copies of the screen state.
      segments: List.from(spinner.segments)
    ));
    ref.notifyListeners();
  }

  /// Removes the spinner from the device storage
  void deleteSpinner(String id) async {
    await box.delete(id);
    ref.notifyListeners();
  }

  /// Toggles the `isFavorite` status
  void toggleFavorite(String id) {
    final spinner = state.firstWhereOrNull((spinner) => spinner.id == id);

    if (spinner == null) return;

    box.put(spinner.id, spinner.copyWith(
        isFavorite: !spinner.isFavorite
    ));

    ref.notifyListeners();
  }
}