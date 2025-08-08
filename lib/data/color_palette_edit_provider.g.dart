// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_palette_edit_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$colorPaletteEditHash() => r'cc1b2b33765beb6134cad1bdb6c6a788b71a5c55';

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

abstract class _$ColorPaletteEdit
    extends BuildlessAutoDisposeNotifier<ColorPaletteModel> {
  late final String id;

  ColorPaletteModel build(String id);
}

/// See also [ColorPaletteEdit].
@ProviderFor(ColorPaletteEdit)
const colorPaletteEditProvider = ColorPaletteEditFamily();

/// See also [ColorPaletteEdit].
class ColorPaletteEditFamily extends Family<ColorPaletteModel> {
  /// See also [ColorPaletteEdit].
  const ColorPaletteEditFamily();

  /// See also [ColorPaletteEdit].
  ColorPaletteEditProvider call(String id) {
    return ColorPaletteEditProvider(id);
  }

  @override
  ColorPaletteEditProvider getProviderOverride(
    covariant ColorPaletteEditProvider provider,
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
  String? get name => r'colorPaletteEditProvider';
}

/// See also [ColorPaletteEdit].
class ColorPaletteEditProvider
    extends
        AutoDisposeNotifierProviderImpl<ColorPaletteEdit, ColorPaletteModel> {
  /// See also [ColorPaletteEdit].
  ColorPaletteEditProvider(String id)
    : this._internal(
        () => ColorPaletteEdit()..id = id,
        from: colorPaletteEditProvider,
        name: r'colorPaletteEditProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$colorPaletteEditHash,
        dependencies: ColorPaletteEditFamily._dependencies,
        allTransitiveDependencies:
            ColorPaletteEditFamily._allTransitiveDependencies,
        id: id,
      );

  ColorPaletteEditProvider._internal(
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
  ColorPaletteModel runNotifierBuild(covariant ColorPaletteEdit notifier) {
    return notifier.build(id);
  }

  @override
  Override overrideWith(ColorPaletteEdit Function() create) {
    return ProviderOverride(
      origin: this,
      override: ColorPaletteEditProvider._internal(
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
  AutoDisposeNotifierProviderElement<ColorPaletteEdit, ColorPaletteModel>
  createElement() {
    return _ColorPaletteEditProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ColorPaletteEditProvider && other.id == id;
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
mixin ColorPaletteEditRef on AutoDisposeNotifierProviderRef<ColorPaletteModel> {
  /// The parameter `id` of this provider.
  String get id;
}

class _ColorPaletteEditProviderElement
    extends
        AutoDisposeNotifierProviderElement<ColorPaletteEdit, ColorPaletteModel>
    with ColorPaletteEditRef {
  _ColorPaletteEditProviderElement(super.provider);

  @override
  String get id => (origin as ColorPaletteEditProvider).id;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
