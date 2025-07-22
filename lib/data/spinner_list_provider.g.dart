// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spinner_list_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpinnerListModel _$SpinnerListModelFromJson(Map<String, dynamic> json) =>
    _SpinnerListModel(
      spinners:
          (json['spinners'] as List<dynamic>?)
              ?.map((e) => SpinnerModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SpinnerListModelToJson(_SpinnerListModel instance) =>
    <String, dynamic>{'spinners': instance.spinners};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recentSpinnersHash() => r'99c3df8ae1f8351584437828c8c643f8e3011ba0';

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
String _$favoriteSpinnersHash() => r'f5b40890d217730bb31473d6cec235188cd77282';

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
String _$spinnerListHash() => r'e02d415bd22cfd5c6cb00792fd823150fc1ef782';

/// See also [SpinnerList].
@ProviderFor(SpinnerList)
final spinnerListProvider =
    AutoDisposeNotifierProvider<SpinnerList, SpinnerListModel>.internal(
      SpinnerList.new,
      name: r'spinnerListProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$spinnerListHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SpinnerList = AutoDisposeNotifier<SpinnerListModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
