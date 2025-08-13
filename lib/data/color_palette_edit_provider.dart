import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:dunno/hive/hive_adapters.dart';
import 'package:dunno/models/color_palette_model.dart';
import 'package:dunno/utils/colors.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'color_palette_edit_provider.g.dart';

@riverpod
class ColorPaletteEdit extends _$ColorPaletteEdit {
  final Box<ColorPaletteModel> _box = Hive.box<ColorPaletteModel>(
    HiveBox.colorPalettes.name,
  );

  @override
  ColorPaletteModel build(String id) {
    final stream = _box.watch(key: id).listen((_) {
      state = _box.get(id) ?? ColorPaletteModel(title: 'Untitled', colors: []);
    });

    ref.onDispose(stream.cancel);

    return _box.get(id) ?? ColorPaletteModel(title: 'Untitled', colors: []);
  }

  void toggleFavorite() {
    state = state.copyWith(isFavorite: !state.isFavorite);
  }

  void setTitle(String title) {
    state = state.copyWith(title: title.isNotEmpty ? title : 'Untitled');
  }

  void clearColors() {
    state = state.copyWith(colors: []);
  }

  void addColor(Color color) {
    final simpleColor = color.toSimpleColor();
    state = state.copyWith(colors: [simpleColor, ...state.colors]);
  }

  void deleteColor(int index) {
    state = state.copyWith(
      colors: state.colors.whereNotIndexed((idx, _) => index == idx).toList(),
    );
  }

  Future<void> save() async {
    final newStats = state.stats.copyWith(
      editCount: state.stats.editCount + 1,
      lastEditTime: DateTime.now().millisecondsSinceEpoch,
    );

    await _box.put(state.id, state.copyWith(stats: newStats));
  }
}
