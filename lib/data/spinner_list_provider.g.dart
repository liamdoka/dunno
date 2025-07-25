// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spinner_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recentSpinnersHash() => r'abf089496cc2891f1be5ab77873ced7a4e7bcfce';

/// Returns the last four spinners interacted with
///
/// Copied from [recentSpinners].
@ProviderFor(recentSpinners)
final recentSpinnersProvider = AutoDisposeProvider<List<SpinnerModel>>.internal(
  recentSpinners,
  name: r'recentSpinnersProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$recentSpinnersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RecentSpinnersRef = AutoDisposeProviderRef<List<SpinnerModel>>;
String _$favoriteSpinnersHash() => r'a5ccc2c5eebddbf0e8fbd3ddc419bc33f4a2aa97';

/// Returns spinners that have been `favorited`
///
/// Copied from [favoriteSpinners].
@ProviderFor(favoriteSpinners)
final favoriteSpinnersProvider =
    AutoDisposeProvider<List<SpinnerModel>>.internal(
      favoriteSpinners,
      name: r'favoriteSpinnersProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$favoriteSpinnersHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FavoriteSpinnersRef = AutoDisposeProviderRef<List<SpinnerModel>>;
String _$spinnerListHash() => r'a08bb4101174d826544720ba7a570f54d695aaba';

/// See also [SpinnerList].
@ProviderFor(SpinnerList)
final spinnerListProvider =
    AutoDisposeNotifierProvider<SpinnerList, List<SpinnerModel>>.internal(
      SpinnerList.new,
      name: r'spinnerListProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$spinnerListHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SpinnerList = AutoDisposeNotifier<List<SpinnerModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
