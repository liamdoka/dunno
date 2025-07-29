// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preferences_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPreferencesModel {

 ThemeMode get appTheme; SimpleColor get appTint; ColorPaletteModel get defaultColorPalette; String get defaultConfetti;
/// Create a copy of UserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPreferencesModelCopyWith<UserPreferencesModel> get copyWith => _$UserPreferencesModelCopyWithImpl<UserPreferencesModel>(this as UserPreferencesModel, _$identity);

  /// Serializes this UserPreferencesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPreferencesModel&&(identical(other.appTheme, appTheme) || other.appTheme == appTheme)&&(identical(other.appTint, appTint) || other.appTint == appTint)&&(identical(other.defaultColorPalette, defaultColorPalette) || other.defaultColorPalette == defaultColorPalette)&&(identical(other.defaultConfetti, defaultConfetti) || other.defaultConfetti == defaultConfetti));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appTheme,appTint,defaultColorPalette,defaultConfetti);

@override
String toString() {
  return 'UserPreferencesModel(appTheme: $appTheme, appTint: $appTint, defaultColorPalette: $defaultColorPalette, defaultConfetti: $defaultConfetti)';
}


}

/// @nodoc
abstract mixin class $UserPreferencesModelCopyWith<$Res>  {
  factory $UserPreferencesModelCopyWith(UserPreferencesModel value, $Res Function(UserPreferencesModel) _then) = _$UserPreferencesModelCopyWithImpl;
@useResult
$Res call({
 ThemeMode appTheme, SimpleColor appTint, ColorPaletteModel defaultColorPalette, String defaultConfetti
});


$SimpleColorCopyWith<$Res> get appTint;$ColorPaletteModelCopyWith<$Res> get defaultColorPalette;

}
/// @nodoc
class _$UserPreferencesModelCopyWithImpl<$Res>
    implements $UserPreferencesModelCopyWith<$Res> {
  _$UserPreferencesModelCopyWithImpl(this._self, this._then);

  final UserPreferencesModel _self;
  final $Res Function(UserPreferencesModel) _then;

/// Create a copy of UserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appTheme = null,Object? appTint = null,Object? defaultColorPalette = null,Object? defaultConfetti = null,}) {
  return _then(_self.copyWith(
appTheme: null == appTheme ? _self.appTheme : appTheme // ignore: cast_nullable_to_non_nullable
as ThemeMode,appTint: null == appTint ? _self.appTint : appTint // ignore: cast_nullable_to_non_nullable
as SimpleColor,defaultColorPalette: null == defaultColorPalette ? _self.defaultColorPalette : defaultColorPalette // ignore: cast_nullable_to_non_nullable
as ColorPaletteModel,defaultConfetti: null == defaultConfetti ? _self.defaultConfetti : defaultConfetti // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of UserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleColorCopyWith<$Res> get appTint {
  
  return $SimpleColorCopyWith<$Res>(_self.appTint, (value) {
    return _then(_self.copyWith(appTint: value));
  });
}/// Create a copy of UserPreferencesModel
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ThemeMode appTheme,  SimpleColor appTint,  ColorPaletteModel defaultColorPalette,  String defaultConfetti)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPreferencesModel() when $default != null:
return $default(_that.appTheme,_that.appTint,_that.defaultColorPalette,_that.defaultConfetti);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ThemeMode appTheme,  SimpleColor appTint,  ColorPaletteModel defaultColorPalette,  String defaultConfetti)  $default,) {final _that = this;
switch (_that) {
case _UserPreferencesModel():
return $default(_that.appTheme,_that.appTint,_that.defaultColorPalette,_that.defaultConfetti);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ThemeMode appTheme,  SimpleColor appTint,  ColorPaletteModel defaultColorPalette,  String defaultConfetti)?  $default,) {final _that = this;
switch (_that) {
case _UserPreferencesModel() when $default != null:
return $default(_that.appTheme,_that.appTint,_that.defaultColorPalette,_that.defaultConfetti);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPreferencesModel implements UserPreferencesModel {
  const _UserPreferencesModel({this.appTheme = ThemeMode.system, this.appTint = const SimpleColor(103, 58, 183), this.defaultColorPalette = DunnoColorPalettes.bubblegum, this.defaultConfetti = '⭐️⭐️⭐️'});
  factory _UserPreferencesModel.fromJson(Map<String, dynamic> json) => _$UserPreferencesModelFromJson(json);

@override@JsonKey() final  ThemeMode appTheme;
@override@JsonKey() final  SimpleColor appTint;
@override@JsonKey() final  ColorPaletteModel defaultColorPalette;
@override@JsonKey() final  String defaultConfetti;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPreferencesModel&&(identical(other.appTheme, appTheme) || other.appTheme == appTheme)&&(identical(other.appTint, appTint) || other.appTint == appTint)&&(identical(other.defaultColorPalette, defaultColorPalette) || other.defaultColorPalette == defaultColorPalette)&&(identical(other.defaultConfetti, defaultConfetti) || other.defaultConfetti == defaultConfetti));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appTheme,appTint,defaultColorPalette,defaultConfetti);

@override
String toString() {
  return 'UserPreferencesModel(appTheme: $appTheme, appTint: $appTint, defaultColorPalette: $defaultColorPalette, defaultConfetti: $defaultConfetti)';
}


}

/// @nodoc
abstract mixin class _$UserPreferencesModelCopyWith<$Res> implements $UserPreferencesModelCopyWith<$Res> {
  factory _$UserPreferencesModelCopyWith(_UserPreferencesModel value, $Res Function(_UserPreferencesModel) _then) = __$UserPreferencesModelCopyWithImpl;
@override @useResult
$Res call({
 ThemeMode appTheme, SimpleColor appTint, ColorPaletteModel defaultColorPalette, String defaultConfetti
});


@override $SimpleColorCopyWith<$Res> get appTint;@override $ColorPaletteModelCopyWith<$Res> get defaultColorPalette;

}
/// @nodoc
class __$UserPreferencesModelCopyWithImpl<$Res>
    implements _$UserPreferencesModelCopyWith<$Res> {
  __$UserPreferencesModelCopyWithImpl(this._self, this._then);

  final _UserPreferencesModel _self;
  final $Res Function(_UserPreferencesModel) _then;

/// Create a copy of UserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appTheme = null,Object? appTint = null,Object? defaultColorPalette = null,Object? defaultConfetti = null,}) {
  return _then(_UserPreferencesModel(
appTheme: null == appTheme ? _self.appTheme : appTheme // ignore: cast_nullable_to_non_nullable
as ThemeMode,appTint: null == appTint ? _self.appTint : appTint // ignore: cast_nullable_to_non_nullable
as SimpleColor,defaultColorPalette: null == defaultColorPalette ? _self.defaultColorPalette : defaultColorPalette // ignore: cast_nullable_to_non_nullable
as ColorPaletteModel,defaultConfetti: null == defaultConfetti ? _self.defaultConfetti : defaultConfetti // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleColorCopyWith<$Res> get appTint {
  
  return $SimpleColorCopyWith<$Res>(_self.appTint, (value) {
    return _then(_self.copyWith(appTint: value));
  });
}/// Create a copy of UserPreferencesModel
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
