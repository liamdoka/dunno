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
      box.put("material", DunnoColorPalettes.material);
      box.put("shrek", DunnoColorPalettes.green);
      box.put("bubblegum", DunnoColorPalettes.bubblegum);
      box.put("materialAccent", DunnoColorPalettes.materialAccent);
    }

    return List.from(box.values, growable: false);
  }

  void addColorPalette(ColorPaletteModel palette) {
    print("nothing");
  }


  void deleteColorPalette(String id) {
    final palette = state.firstWhereOrNull((palette) => palette.id == id);
    if (palette == null) return;


  }
}