import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dunno/hive/hive_adapters.dart';
import 'package:dunno/models/color_palette_model.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'color_palette_list_provider.g.dart';

@riverpod
class ColorPaletteList extends _$ColorPaletteList {
  final Box<ColorPaletteModel> _box = Hive.box<ColorPaletteModel>(
    HiveBox.colorPalettes.name,
  );

  @override
  List<ColorPaletteModel> build() {
    final stream = _box.watch().listen((_) {
      state = List.from(_box.values, growable: false);
    });

    ref.onDispose(stream.cancel);

    if (_box.values.isEmpty) {
      unawaited(
        savePalettes([
          DunnoColorPalettes.material,
          DunnoColorPalettes.materialAccent,
          DunnoColorPalettes.green,
          DunnoColorPalettes.bubblegum,
        ]),
      );
    }

    return List.from(_box.values, growable: false);
  }

  /// Saves the palette to the device.
  Future<void> savePalette(ColorPaletteModel palette) async {
    await _box.put(
      palette.id,
      palette.copyWith.stats!(
        deletedTime: null,
        lastEditTime: DateTime.now().millisecondsSinceEpoch,
      ),
    );
  }

  /// Saves multiple palettes to the device.
  Future<void> savePalettes(List<ColorPaletteModel> palettes) async {
    final paletteMap = <String, ColorPaletteModel>{};
    for (final palette in palettes) {
      paletteMap[palette.id] = palette;
    }

    await _box.putAll(paletteMap);
  }

  /// Removes the palette from device storage.
  Future<void> deletePaletteFromDevice(String id) async {
    await _box.delete(id);
  }

  /// Removes all deleted palettes from device storage.
  Future<void> clearDeletedPalettes() async {
    final List<String> ids = state
        .where((palette) => palette.isDeleted)
        .map((palette) => palette.id)
        .toList();

    await _box.deleteAll(ids);
  }

  /// Mark the palette as deleted
  Future<void> deletePalette(String id) async {
    final palette = state.firstWhereOrNull((palette) => palette.id == id);
    if (palette == null) return;

    await _box.put(
      palette.id,
      palette.copyWith.stats!(
        deletedTime: DateTime.now().millisecondsSinceEpoch,
      ),
    );
  }

  /// Toggles the `isFavorite` status
  Future<void> toggleFavorite(String id) async {
    final palette = state.firstWhereOrNull((palette) => palette.id == id);
    if (palette == null) return;

    await _box.put(
      palette.id,
      palette.copyWith(isFavorite: !palette.isFavorite),
    );
  }
}
