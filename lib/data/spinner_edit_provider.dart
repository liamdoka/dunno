import 'package:collection/collection.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/hive/hive_adapters.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:dunno/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'spinner_edit_provider.g.dart';

@riverpod
class SpinnerEdit extends _$SpinnerEdit {
  final box = Hive.box<SpinnerModel>(HiveBox.spinners.name);

  @override
  SpinnerModel build(String id) {
    // begin by providing only the stored spinner.
    final trueSpinner = ref.watch(spinnerListProvider).spinners
        .firstWhereOrNull((spinner) => spinner.id == id);

    return trueSpinner ?? SpinnerModel(
        title: "Quick Spin",
        color: Colors.red.toSimpleColor(),
        items: []
    );
  }

  void toggleFavorite() {
    state = state.copyWith(
        isFavorite: !(state.isFavorite)
    );
  }

  void save() {
    box.put(state.id, state);
    ref.invalidateSelf();
  }
}
