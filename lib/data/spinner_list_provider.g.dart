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
      selectedSpinnerIndex: (json['selectedSpinnerIndex'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SpinnerListModelToJson(_SpinnerListModel instance) =>
    <String, dynamic>{
      'spinners': instance.spinners,
      'selectedSpinnerIndex': instance.selectedSpinnerIndex,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$spinnerListHash() => r'1ce330c6b066019fa86d4dc1d07f6420af875b1f';

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
