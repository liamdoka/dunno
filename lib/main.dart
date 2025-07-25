import 'package:dunno/hive/hive_adapters.dart';
import 'package:dunno/hive/hive_registrar.g.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import './router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapters();

  await Hive.close();
  await Hive.openBox<SpinnerModel>(HiveBox.spinners.name);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(useMaterial3: true),
        routerConfig: _appRouter.config(),
      ),
    );
  }
}