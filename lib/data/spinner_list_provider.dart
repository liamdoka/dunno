import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:dunno/hive/hive_adapters.dart';
import 'package:dunno/models/spinner_model.dart';

part 'spinner_list_provider.g.dart';

/// Returns the last four spinners interacted with.
@riverpod
List<SpinnerModel> recentSpinners(Ref ref) {
  final spinners = ref.watch(spinnerListProvider)
      .where((spinner) => spinner.isNotDeleted)
      .toList();

  return spinners
      .sorted((a,b) => b.stats.lastTime.compareTo(a.stats.lastTime))
      .sublist(0, min(4, spinners.length));
}

/// Returns a list spinners that have been `favorited`.
@riverpod
List<SpinnerModel> favoriteSpinners(Ref ref) {
  return ref.watch(spinnerListProvider)
      .where((spinner) => spinner.isFavorite && spinner.isNotDeleted)
      .toList(growable: false);
}

/// Returns a list of deleted spinners.
@riverpod
List<SpinnerModel> deletedSpinners(Ref ref) {
  return ref.watch(spinnerListProvider)
      .where((spinner) => spinner.isDeleted)
      .toList(growable: false);
}

/// Returns a list of all spinners (that aren't deleted).
@riverpod
List<SpinnerModel> allSpinners(Ref ref) {
  return ref.watch(spinnerListProvider)
      .where((spinner) => spinner.isNotDeleted)
      .toList(growable: false);
}

/// Returns a list of spinners with the highest spin count.
@riverpod
List<SpinnerModel> mostSpins(Ref ref) {
  final spinners = ref.watch(allSpinnersProvider);
  return spinners
      .sorted((a,b) => b.stats.spinCount.compareTo(a.stats.spinCount))
      .sublist(0, min(3, spinners.length));
}

/// Returns a list of spinners with the highest edit count.
@riverpod
List<SpinnerModel> mostEdits(Ref ref) {
  final spinners = ref.watch(allSpinnersProvider)
      .where((spinner) => spinner.stats.editCount > 0);

  return spinners
      .sorted((a,b) => b.stats.editCount.compareTo(a.stats.editCount))
      .sublist(0, min(3, spinners.length));
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
      segments: List.from(spinner.segments),
      stats: spinner.stats.copyWith(
          deletedTime: null,
          lastEditTime: DateTime.now().millisecondsSinceEpoch
      ),
    ));
    ref.notifyListeners();
  }

  /// Removes the spinner from device storage.
  void deleteSpinnerFromDevice(String id) async {
    await box.delete(id);
    ref.notifyListeners();
  }

  /// Removes all deleted spinners from device storage.
  void clearDeletedSpinners() async {
    final List<String> ids = state
        .where((spinner) => spinner.isDeleted)
        .map((spinner) => spinner.id)
        .toList();

    await box.deleteAll(ids);
    ref.notifyListeners();
  }

  /// Mark the spinner as deleted
  void deleteSpinner(String id) {
    final spinner = state.firstWhereOrNull((spinner) => spinner.id == id);
    if (spinner == null) return;

    box.put(spinner.id, spinner.copyWith.stats!(
      deletedTime: DateTime.now().millisecondsSinceEpoch
    ));

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

  /// Update the stats for spinning.
  void logSpin(String id) {
    final spinner = state.firstWhereOrNull((spinner) => spinner.id == id);
    // if spinner is not saved yet, don't track the stats.
    if (spinner == null) return;

    final updatedSpinner = spinner.copyWith.stats!(
      lastSpinTime: DateTime.now().millisecondsSinceEpoch,
      spinCount: spinner.stats.spinCount + 1
    );

    box.put(spinner.id, updatedSpinner);
    ref.notifyListeners();
  }
}