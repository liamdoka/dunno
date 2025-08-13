import 'dart:async';

import 'package:dunno/constants/numbers.dart';
import 'package:dunno/hive/hive_adapters.dart';
import 'package:dunno/models/color_palette_model.dart';
import 'package:dunno/models/user_preferences_model.dart';
import 'package:dunno/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_preferences_provider.g.dart';

@riverpod
class UserPreferences extends _$UserPreferences {
  final Box<UserPreferencesModel> _box = Hive.box<UserPreferencesModel>(
    HiveBox.userPreferences.name,
  );

  @override
  UserPreferencesModel build() {
    final stream = _box.watch().listen((_) {
      state =
          _box.values.firstOrNull ??
          UserPreferencesModel(
            defaultColorPalette: DunnoColorPalettes.material,
          );
    });

    ref.onDispose(stream.cancel);

    return _box.values.firstOrNull ??
        UserPreferencesModel(defaultColorPalette: DunnoColorPalettes.material);
  }

  Future<void> setThemeMode(Set<ThemeMode> themes) async {
    final theme = themes.firstOrNull;
    if (theme == null) return;

    state = state.copyWith(appTheme: theme);
    save();
  }

  void setDefaultConfetti(String confetti) {
    if (confetti.characters.length > AppNumbers.maxConfettiStringLength) return;
    if (confetti.characters.isEmpty) return;

    state = state.copyWith(defaultConfetti: confetti);
    save();
  }

  void setTint(Color color) {
    final simpleColor = color.toSimpleColor();
    state = state.copyWith(appTint: simpleColor);
    save();
  }

  void setConfettiAmount(ConfettiAmount amount) {
    state = state.copyWith(confettiAmount: amount);
    save();
  }

  void setDefaultColorPalette(ColorPaletteModel palette) {
    state = state.copyWith(defaultColorPalette: palette);
    save();
  }

  void save() {
    if (_box.isEmpty) {
      unawaited(_box.put(0, state));
    } else {
      unawaited(_box.putAt(0, state));
    }
  }
}
