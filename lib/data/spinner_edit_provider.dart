import 'package:collection/collection.dart';
import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/hive/hive_adapters.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:dunno/models/spinner_segment_model.dart';
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
      state =
          box.get(id) ??
          SpinnerModel(
            title: "Untitled Spinner",
            color: Colors.red.toSimpleColor(),
            segments: [],
          );
    });

    ref.onDispose(stream.cancel);

    return box.get(id) ??
        SpinnerModel(
          title: "Untitled Spinner",
          color: Colors.red.toSimpleColor(),
          segments: [],
        );
  }

  void toggleFavorite() {
    state = state.copyWith(isFavorite: !(state.isFavorite));
  }

  void setTitle(String title) {
    state = state.copyWith(
      title: title.isNotEmpty ? title : "Untitled Spinner",
    );
  }

  void setDescription(String? description) {
    state = state.copyWith(description: description);
  }

  void setConfetti(String? confetti) {
    state = state.copyWith(
      confetti: confetti
    );
  }

  /// Removes ALL segments from the list.
  void clearSegments() {
    state = state.copyWith(segments: []);
  }

  /// Removes a segment from the list.
  void deleteSegment(int index) {
    state = state.copyWith(
      segments: state.segments
          .whereNotIndexed((idx, _) => index == idx)
          .toList(),
    );
  }

  /// add segment to the front of the list.
  void addSegment(SpinnerSegmentModel segment) {
    state = state.copyWith(segments: [segment, ...state.segments]);
  }

  void increaseSegmentWeight(int index) {
    if (index < 0 || index >= state.segments.length) return;
    final segment = state.segments[index];

    var newList = List<SpinnerSegmentModel>.from(state.segments);
    newList[index] = segment.copyWith(weight: segment.weight + 1);

    state = state.copyWith(segments: newList);
  }

  void decreaseSegmentWeight(int index) {
    if (index < 0 || index >= state.segments.length) return;

    final segment = state.segments[index];
    if (segment.weight == 1) return deleteSegment(index);

    var newList = List<SpinnerSegmentModel>.from(state.segments);
    newList[index] = segment.copyWith(weight: segment.weight - 1);

    state = state.copyWith(segments: newList);
  }

  /// Save the changes made to the spinner
  void save() {
    // map colors for real
    final colorPalette = ref.read(userPreferencesProvider).defaultColorPalette;
    final newSegments = List<SpinnerSegmentModel>.from(
      state.segments.mapIndexed(
        (index, segment) => segment.copyWith(
            color: colorPalette.forIndexSimple(index)
        ),
      ),
    );

    // log edit
    final newStats = state.stats.copyWith(
        editCount: state.stats.editCount + 1,
        lastEditTime: DateTime.now().millisecondsSinceEpoch
    );

    box.put(state.id, state.copyWith(
        segments: newSegments,
        stats: newStats
    ));
    ref.invalidateSelf();
  }
}
