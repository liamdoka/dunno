// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPreferencesModel {

 ColorPaletteModel get defaultColorPalette;
/// Create a copy of UserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPreferencesModelCopyWith<UserPreferencesModel> get copyWith => _$UserPreferencesModelCopyWithImpl<UserPreferencesModel>(this as UserPreferencesModel, _$identity);

  /// Serializes this UserPreferencesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPreferencesModel&&(identical(other.defaultColorPalette, defaultColorPalette) || other.defaultColorPalette == defaultColorPalette));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,defaultColorPalette);

@override
String toString() {
  return 'UserPreferencesModel(defaultColorPalette: $defaultColorPalette)';
}


}

/// @nodoc
abstract mixin class $UserPreferencesModelCopyWith<$Res>  {
  factory $UserPreferencesModelCopyWith(UserPreferencesModel value, $Res Function(UserPreferencesModel) _then) = _$UserPreferencesModelCopyWithImpl;
@useResult
$Res call({
 ColorPaletteModel defaultColorPalette
});


$ColorPaletteModelCopyWith<$Res> get defaultColorPalette;

}
/// @nodoc
class _$UserPreferencesModelCopyWithImpl<$Res>
    implements $UserPreferencesModelCopyWith<$Res> {
  _$UserPreferencesModelCopyWithImpl(this._self, this._then);

  final UserPreferencesModel _self;
  final $Res Function(UserPreferencesModel) _then;

/// Create a copy of UserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? defaultColorPalette = null,}) {
  return _then(_self.copyWith(
defaultColorPalette: null == defaultColorPalette ? _self.defaultColorPalette : defaultColorPalette // ignore: cast_nullable_to_non_nullable
as ColorPaletteModel,
  ));
}
/// Create a copy of UserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColorPaletteModelCopyWith<$Res> get defaultColorPalette {
  
  return $ColorPaletteModelCopyWith<$Res>(_self.defaultColorPalette, (value) {
    return _then(_self.copyWith(defaultColorPalette: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserPreferencesModel].
extension UserPreferencesModelPatterns on UserPreferencesModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPreferencesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPreferencesModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPreferencesModel value)  $default,){
final _that = this;
switch (_that) {
case _UserPreferencesModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPreferencesModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserPreferencesModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ColorPaletteModel defaultColorPalette)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPreferencesModel() when $default != null:
return $default(_that.defaultColorPalette);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ColorPaletteModel defaultColorPalette)  $default,) {final _that = this;
switch (_that) {
case _UserPreferencesModel():
return $default(_that.defaultColorPalette);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ColorPaletteModel defaultColorPalette)?  $default,) {final _that = this;
switch (_that) {
case _UserPreferencesModel() when $default != null:
return $default(_that.defaultColorPalette);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPreferencesModel implements UserPreferencesModel {
  const _UserPreferencesModel({this.defaultColorPalette = DunnoColorPalettes.bubblegum});
  factory _UserPreferencesModel.fromJson(Map<String, dynamic> json) => _$UserPreferencesModelFromJson(json);

@override@JsonKey() final  ColorPaletteModel defaultColorPalette;

/// Create a copy of UserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPreferencesModelCopyWith<_UserPreferencesModel> get copyWith => __$UserPreferencesModelCopyWithImpl<_UserPreferencesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPreferencesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPreferencesModel&&(identical(other.defaultColorPalette, defaultColorPalette) || other.defaultColorPalette == defaultColorPalette));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,defaultColorPalette);

@override
String toString() {
  return 'UserPreferencesModel(defaultColorPalette: $defaultColorPalette)';
}


}

/// @nodoc
abstract mixin class _$UserPreferencesModelCopyWith<$Res> implements $UserPreferencesModelCopyWith<$Res> {
  factory _$UserPreferencesModelCopyWith(_UserPreferencesModel value, $Res Function(_UserPreferencesModel) _then) = __$UserPreferencesModelCopyWithImpl;
@override @useResult
$Res call({
 ColorPaletteModel defaultColorPalette
});


@override $ColorPaletteModelCopyWith<$Res> get defaultColorPalette;

}
/// @nodoc
class __$UserPreferencesModelCopyWithImpl<$Res>
    implements _$UserPreferencesModelCopyWith<$Res> {
  __$UserPreferencesModelCopyWithImpl(this._self, this._then);

  final _UserPreferencesModel _self;
  final $Res Function(_UserPreferencesModel) _then;

/// Create a copy of UserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? defaultColorPalette = null,}) {
  return _then(_UserPreferencesModel(
defaultColorPalette: null == defaultColorPalette ? _self.defaultColorPalette : defaultColorPalette // ignore: cast_nullable_to_non_nullable
as ColorPaletteModel,
  ));
}

/// Create a copy of UserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColorPaletteModelCopyWith<$Res> get defaultColorPalette {
  
  return $ColorPaletteModelCopyWith<$Res>(_self.defaultColorPalette, (value) {
    return _then(_self.copyWith(defaultColorPalette: value));
  });
}
}

// dart format on
