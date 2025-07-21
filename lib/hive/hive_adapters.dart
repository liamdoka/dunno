import 'package:hive_ce/hive.dart';
import 'package:dunno/models/spinner_model.dart';

@GenerateAdapters([
  AdapterSpec<SpinnerModel>(),
])
part 'hive_adapters.g.dart';