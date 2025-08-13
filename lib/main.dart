import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/hive/hive_adapters.dart';
import 'package:dunno/hive/hive_registrar.g.dart';
import 'package:dunno/models/color_palette_model.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:dunno/models/user_preferences_model.dart';
import 'package:dunno/models/user_stats_model.dart';
import 'package:dunno/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapters();

  await Hive.close();
  await Hive.openBox<SpinnerModel>(HiveBox.spinners.name);
  await Hive.openBox<UserPreferencesModel>(HiveBox.userPreferences.name);
  await Hive.openBox<ColorPaletteModel>(HiveBox.colorPalettes.name);
  await Hive.openBox<UserStatsModel>(HiveBox.userStats.name);

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {

  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(userPreferencesProvider);

    final lightTheme = ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
            seedColor: preferences.appTint.toColor()
        ),
        useMaterial3: true
    );

    final darkTheme = ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: preferences.appTint.toColor(),
        ),
        useMaterial3: true
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: preferences.appTheme,
      routerConfig: _appRouter.config(),
    );
  }
}