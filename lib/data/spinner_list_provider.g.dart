// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spinner_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recentSpinnersHash() => r'beefe65e11bb9cc22e752eac5395b8782378ec14';

/// Returns the last four spinners interacted with.
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
String _$favoriteSpinnersHash() => r'1cab0b9571e53a5ac58777b52b7e448bded524c5';

/// Returns a list spinners that have been `favorited`.
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
String _$deletedSpinnersHash() => r'13f8139576a4a21d32147be232780ccef4d09057';

/// Returns a list of deleted spinners.
///
/// Copied from [deletedSpinners].
@ProviderFor(deletedSpinners)
final deletedSpinnersProvider =
    AutoDisposeProvider<List<SpinnerModel>>.internal(
      deletedSpinners,
      name: r'deletedSpinnersProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$deletedSpinnersHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DeletedSpinnersRef = AutoDisposeProviderRef<List<SpinnerModel>>;
String _$allSpinnersHash() => r'30e883f70ea2dbac1fc4c2f8ba306ae821dedbc4';

/// Returns a list of all spinners (that aren't deleted).
///
/// Copied from [allSpinners].
@ProviderFor(allSpinners)
final allSpinnersProvider = AutoDisposeProvider<List<SpinnerModel>>.internal(
  allSpinners,
  name: r'allSpinnersProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$allSpinnersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AllSpinnersRef = AutoDisposeProviderRef<List<SpinnerModel>>;
String _$mostSpinsHash() => r'd1ae12aa9f71a357e9b3e20154306fc80c26d3b0';

/// Returns a list of spinners with the highest spin count.
///
/// Copied from [mostSpins].
@ProviderFor(mostSpins)
final mostSpinsProvider = AutoDisposeProvider<List<SpinnerModel>>.internal(
  mostSpins,
  name: r'mostSpinsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mostSpinsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MostSpinsRef = AutoDisposeProviderRef<List<SpinnerModel>>;
String _$mostEditsHash() => r'5b4ea3cec8e60e73e8a9ed955c5e587f54972586';

/// Returns a list of spinners with the highest edit count.
///
/// Copied from [mostEdits].
@ProviderFor(mostEdits)
final mostEditsProvider = AutoDisposeProvider<List<SpinnerModel>>.internal(
  mostEdits,
  name: r'mostEditsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mostEditsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MostEditsRef = AutoDisposeProviderRef<List<SpinnerModel>>;
String _$spinnerListHash() => r'2470b6081bdd373dd928410f73d1025120279797';

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
