import 'package:collection/collection.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'spinner_edit_provider.g.dart';

@riverpod
class SpinnerEdit extends _$SpinnerEdit {

  @override
  SpinnerModel? build(String id) {
    // begin by providing only the stored spinner.
    final trueSpinner = ref.watch(spinnerListProvider).spinners
        .firstWhereOrNull((spinner) => spinner.id == id);

    return trueSpinner;
  }
}
