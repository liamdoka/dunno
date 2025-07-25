import 'package:dunno/models/color_palette_model.dart';
import 'package:dunno/models/simple_color.dart';
import 'package:dunno/models/spinner_segment.dart';
import 'package:hive_ce/hive.dart';
import 'package:dunno/models/spinner_model.dart';

@GenerateAdapters([
  AdapterSpec<SimpleColor>(),
  AdapterSpec<SpinnerModel>(),
  AdapterSpec<SpinnerSegmentModel>(),
  AdapterSpec<SpinnerStatsModel>(),
  AdapterSpec<ColorPaletteModel>()
])
part 'hive_adapters.g.dart';

enum HiveBox {
  spinners,
  colorPalettes,
  spinnerStats,
  misc,
}