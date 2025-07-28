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
  final box = Hive.box<UserPreferencesModel>(HiveBox.userPreferences.name);

  @override
  UserPreferencesModel build() {
    final stream = box.watch().listen((_) {
      final model = box.getAt(0);
      if (model != null) {
        state = model;
      }
    });

    ref.onDispose(stream.cancel);

    return box.values.firstOrNull ?? UserPreferencesModel(
      defaultColorPalette: DunnoColorPalettes.material,
    );
  }

  void setThemeMode(Set<ThemeMode> themes) {
    final theme = themes.firstOrNull;
    if (theme == null) return;

    state = state.copyWith(
      appTheme: theme
    );
    save();
  }

  void setDefaultEmojis(String emojis) {
    if (emojis.characters.length > AppNumbers.maxConfettiStringLength) return;
    state = state.copyWith(
      defaultEmojis: emojis
    );
    save();
  }

  void setTint(Color color) {
    final simpleColor = color.toSimpleColor();
    state = state.copyWith(
      appTint: simpleColor
    );
    save();
  }

  void save() {
    if (box.isEmpty) {
      box.put(0, state);
    } else {
      box.putAt(0, state);
    }
    ref.invalidateSelf();
  }
}