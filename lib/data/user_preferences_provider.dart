import 'package:dunno/models/user_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_preferences_provider.g.dart';

@riverpod
class UserPreferences extends _$UserPreferences {

  @override
  UserPreferencesModel build() {
    return const UserPreferencesModel();
  }
}
