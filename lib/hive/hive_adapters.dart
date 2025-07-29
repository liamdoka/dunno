import 'package:dunno/models/color_palette_model.dart';
import 'package:dunno/models/simple_color_model.dart';
import 'package:dunno/models/spinner_segment_model.dart';
import 'package:dunno/models/user_preferences_model.dart';
import 'package:dunno/models/user_stats_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:dunno/models/spinner_model.dart';

@GenerateAdapters([
  AdapterSpec<SimpleColor>(),
  AdapterSpec<SpinnerModel>(),
  AdapterSpec<SpinnerSegmentModel>(),
  AdapterSpec<SpinnerStatsModel>(),
  AdapterSpec<ColorPaletteModel>(),
  AdapterSpec<UserPreferencesModel>(),
  AdapterSpec<UserStatsModel>(),
  AdapterSpec<ThemeMode>(),
])
part 'hive_adapters.g.dart';

enum HiveBox {
  spinners,
  colorPalettes,
  userPreferences,
  userStats,
  misc,
}