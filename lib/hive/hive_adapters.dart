import 'package:dunno/utils/colors.dart';
import 'package:hive_ce/hive.dart';
import 'package:dunno/models/spinner_model.dart';

@GenerateAdapters([
  AdapterSpec<SimpleColor>(),
  AdapterSpec<SpinnerModel>(),
])
part 'hive_adapters.g.dart';

enum HiveBox {
  spinners,
  misc,
}