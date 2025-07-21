import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'screen_provider.g.dart';

// TODO: implement screen enum

@riverpod
class ScreenState extends _$ScreenState {
  @override
  int build() {
    return 0;
  }

  void setScreen(int? index) {
    state = index ?? 0;
  }
}