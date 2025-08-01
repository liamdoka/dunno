import 'package:dunno/hive/hive_adapters.dart';
import 'package:dunno/models/user_stats_model.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_stats_provider.g.dart';

@riverpod
class UserStats extends _$UserStats {
  final box = Hive.box<UserStatsModel>(HiveBox.userStats.name);

  @override
  UserStatsModel build() {
    final stream = box.watch().listen((_) {
        state = box.values.firstOrNull ?? UserStatsModel();
    });

    ref.onDispose(stream.cancel);

    return box.values.firstOrNull ?? UserStatsModel();
  }


  void logSpin() {
    state = state.copyWith(
      totalSpins: state.totalSpins + 1
    );
    save();
  }

  void logSpinnerCreated() {
    state = state.copyWith(
      spinnersCreatedCount: state.spinnersCreatedCount + 1
    );
    save();
  }

  void logSpinnerDeleted() {
    state = state.copyWith(
      spinnersDeletedCount: state.spinnersDeletedCount + 1
    );
    save();
  }

  void logConfetti(int particleCount) {
    state = state.copyWith(
        confettiCount: state.confettiCount + particleCount
    );
    save();
  }

  void nuke() {
    box.put(0, UserStatsModel());
  }

  void save() {
    if (box.isEmpty) {
      box.put(0, state);
    } else {
      // the key must exist before referencing by index.
      box.putAt(0, state);
    }
  }
}
