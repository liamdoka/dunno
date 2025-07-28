// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spinner_edit_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$spinnerEditHash() => r'22ad14a92fb6df4b0e7b5fe3eb066a4e2f3a20f6';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$SpinnerEdit
    extends BuildlessAutoDisposeNotifier<SpinnerModel> {
  late final String id;

  SpinnerModel build(String id);
}

/// See also [SpinnerEdit].
@ProviderFor(SpinnerEdit)
const spinnerEditProvider = SpinnerEditFamily();

/// See also [SpinnerEdit].
class SpinnerEditFamily extends Family<SpinnerModel> {
  /// See also [SpinnerEdit].
  const SpinnerEditFamily();

  /// See also [SpinnerEdit].
  SpinnerEditProvider call(String id) {
    return SpinnerEditProvider(id);
  }

  @override
  SpinnerEditProvider getProviderOverride(
    covariant SpinnerEditProvider provider,
  ) {
    return call(provider.id);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'spinnerEditProvider';
}

/// See also [SpinnerEdit].
class SpinnerEditProvider
    extends AutoDisposeNotifierProviderImpl<SpinnerEdit, SpinnerModel> {
  /// See also [SpinnerEdit].
  SpinnerEditProvider(String id)
    : this._internal(
        () => SpinnerEdit()..id = id,
        from: spinnerEditProvider,
        name: r'spinnerEditProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$spinnerEditHash,
        dependencies: SpinnerEditFamily._dependencies,
        allTransitiveDependencies: SpinnerEditFamily._allTransitiveDependencies,
        id: id,
      );

  SpinnerEditProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  SpinnerModel runNotifierBuild(covariant SpinnerEdit notifier) {
    return notifier.build(id);
  }

  @override
  Override overrideWith(SpinnerEdit Function() create) {
    return ProviderOverride(
      origin: this,
      override: SpinnerEditProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<SpinnerEdit, SpinnerModel>
  createElement() {
    return _SpinnerEditProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SpinnerEditProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SpinnerEditRef on AutoDisposeNotifierProviderRef<SpinnerModel> {
  /// The parameter `id` of this provider.
  String get id;
}

class _SpinnerEditProviderElement
    extends AutoDisposeNotifierProviderElement<SpinnerEdit, SpinnerModel>
    with SpinnerEditRef {
  _SpinnerEditProviderElement(super.provider);

  @override
  String get id => (origin as SpinnerEditProvider).id;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
