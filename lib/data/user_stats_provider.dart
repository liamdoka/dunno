import 'dart:async';

import 'package:dunno/hive/hive_adapters.dart';
import 'package:dunno/models/user_stats_model.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_stats_provider.g.dart';

@riverpod
class UserStats extends _$UserStats {
  final Box<UserStatsModel> _box = Hive.box<UserStatsModel>(
    HiveBox.userStats.name,
  );

  @override
  UserStatsModel build() {
    final stream = _box.watch().listen((_) {
      state = _box.values.firstOrNull ?? const UserStatsModel();
    });

    ref.onDispose(stream.cancel);

    return _box.values.firstOrNull ?? const UserStatsModel();
  }

  void logSpin() {
    state = state.copyWith(totalSpins: state.totalSpins + 1);
    save();
  }

  void logSpinnerCreated() {
    state = state.copyWith(
      spinnersCreatedCount: state.spinnersCreatedCount + 1,
    );
    save();
  }

  void logSpinnerDeleted() {
    state = state.copyWith(
      spinnersDeletedCount: state.spinnersDeletedCount + 1,
    );
    save();
  }

  void logConfetti(int particleCount) {
    state = state.copyWith(confettiCount: state.confettiCount + particleCount);
    save();
  }

  Future<void> nuke() async {
    await _box.put(0, const UserStatsModel());
  }

  void save() {
    if (_box.isEmpty) {
      unawaited(_box.put(0, state));
    } else {
      // the key must exist before referencing by index.
      unawaited(_box.putAt(0, state));
    }
  }
}
