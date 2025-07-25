import 'package:collection/collection.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/hive/hive_adapters.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:dunno/models/spinner_segment.dart';
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
    final stream = box.watch(key: id).listen((_) {
      state = box.get(id) ?? SpinnerModel(
          title: "Untitled Spinner",
          color: Colors.red.toSimpleColor(),
          segments: []
      );
    });

    ref.onDispose(stream.cancel);

    return box.get(id) ?? SpinnerModel(
        title: "Untitled Spinner",
        color: Colors.red.toSimpleColor(),
        segments: []
    );
  }

  void toggleFavorite() {
    state = state.copyWith(
        isFavorite: !(state.isFavorite)
    );
  }

  void setTitle(String title) {
    state = state.copyWith(
      title: title.isNotEmpty ? title : "Untitled Spinner"
    );
  }

  void setDescription(String? description) {
    state = state.copyWith(
      description: description
    );
  }

  void clearSegments() {
    state = state.copyWith(segments: []);
  }

  void deleteSegment(int index) {
    state = state.copyWith(
      segments: state.segments.whereNotIndexed((idx, _) => index == idx).toList()
    );
  }

  void addSegment(SpinnerSegmentModel segment) {
    state = state.copyWith(
        segments: [
          segment,
          ...state.segments,
        ]
    );
  }

  void save() {
    box.put(state.id, state);
    ref.invalidateSelf();
  }
}
