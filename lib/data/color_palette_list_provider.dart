import 'package:collection/collection.dart';
import 'package:dunno/hive/hive_adapters.dart';
import 'package:dunno/models/color_palette_model.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'color_palette_list_provider.g.dart';

@riverpod
class ColorPaletteList extends _$ColorPaletteList {
  final box = Hive.box<ColorPaletteModel>(HiveBox.colorPalettes.name);

  @override
  List<ColorPaletteModel> build() {
    final stream = box.watch().listen((_) {
      state = List.from(box.values, growable: false);
    });

    ref.onDispose(stream.cancel);

    if (box.values.isEmpty) {
      savePalette(DunnoColorPalettes.material);
      savePalette(DunnoColorPalettes.materialAccent);
      savePalette(DunnoColorPalettes.green);
      savePalette(DunnoColorPalettes.bubblegum);
    }

    return List.from(box.values, growable: false);
  }


  /// Saves the palette to the device.
  void savePalette(ColorPaletteModel palette) {
    box.put(palette.id, palette.copyWith.stats!(
      deletedTime: null,
      lastEditTime: DateTime.now().millisecondsSinceEpoch
    ));
  }

  /// Removes the palette from device storage.
  void deletePaletteFromDevice(String id) async {
    await box.delete(id);
  }

  /// Removes all deleted palettes from device storage.
  void clearDeletedPalettes() async {
    final List<String> ids = state
        .where((palette) => palette.isDeleted)
        .map((palette) => palette.id)
        .toList();

    await box.deleteAll(ids);
  }

  /// Mark the palette as deleted
  void deletePalette(String id) {
    final palette = state.firstWhereOrNull((palette) => palette.id == id);
    if (palette == null) return;

    box.put(palette.id, palette.copyWith.stats!(
      deletedTime: DateTime.now().millisecondsSinceEpoch
    ));
  }

  /// Toggles the `isFavorite` status
  void toggleFavorite(String id) {
    final palette = state.firstWhereOrNull((palette) => palette.id == id);
    if (palette == null) return;

    box.put(palette.id, palette.copyWith(
        isFavorite: !palette.isFavorite
    ));
  }
}