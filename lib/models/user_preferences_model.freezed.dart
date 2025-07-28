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

 ThemeMode get appTheme; ColorPaletteModel get defaultColorPalette; String get defaultEmojis;
/// Create a copy of UserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPreferencesModelCopyWith<UserPreferencesModel> get copyWith => _$UserPreferencesModelCopyWithImpl<UserPreferencesModel>(this as UserPreferencesModel, _$identity);

  /// Serializes this UserPreferencesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPreferencesModel&&(identical(other.appTheme, appTheme) || other.appTheme == appTheme)&&(identical(other.defaultColorPalette, defaultColorPalette) || other.defaultColorPalette == defaultColorPalette)&&(identical(other.defaultEmojis, defaultEmojis) || other.defaultEmojis == defaultEmojis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appTheme,defaultColorPalette,defaultEmojis);

@override
String toString() {
  return 'UserPreferencesModel(appTheme: $appTheme, defaultColorPalette: $defaultColorPalette, defaultEmojis: $defaultEmojis)';
}


}

/// @nodoc
abstract mixin class $UserPreferencesModelCopyWith<$Res>  {
  factory $UserPreferencesModelCopyWith(UserPreferencesModel value, $Res Function(UserPreferencesModel) _then) = _$UserPreferencesModelCopyWithImpl;
@useResult
$Res call({
 ThemeMode appTheme, ColorPaletteModel defaultColorPalette, String defaultEmojis
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
@pragma('vm:prefer-inline') @override $Res call({Object? appTheme = null,Object? defaultColorPalette = null,Object? defaultEmojis = null,}) {
  return _then(_self.copyWith(
appTheme: null == appTheme ? _self.appTheme : appTheme // ignore: cast_nullable_to_non_nullable
as ThemeMode,defaultColorPalette: null == defaultColorPalette ? _self.defaultColorPalette : defaultColorPalette // ignore: cast_nullable_to_non_nullable
as ColorPaletteModel,defaultEmojis: null == defaultEmojis ? _self.defaultEmojis : defaultEmojis // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ThemeMode appTheme,  ColorPaletteModel defaultColorPalette,  String defaultEmojis)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPreferencesModel() when $default != null:
return $default(_that.appTheme,_that.defaultColorPalette,_that.defaultEmojis);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ThemeMode appTheme,  ColorPaletteModel defaultColorPalette,  String defaultEmojis)  $default,) {final _that = this;
switch (_that) {
case _UserPreferencesModel():
return $default(_that.appTheme,_that.defaultColorPalette,_that.defaultEmojis);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ThemeMode appTheme,  ColorPaletteModel defaultColorPalette,  String defaultEmojis)?  $default,) {final _that = this;
switch (_that) {
case _UserPreferencesModel() when $default != null:
return $default(_that.appTheme,_that.defaultColorPalette,_that.defaultEmojis);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPreferencesModel implements UserPreferencesModel {
  const _UserPreferencesModel({this.appTheme = ThemeMode.system, this.defaultColorPalette = DunnoColorPalettes.bubblegum, this.defaultEmojis = '⭐️'});
  factory _UserPreferencesModel.fromJson(Map<String, dynamic> json) => _$UserPreferencesModelFromJson(json);

@override@JsonKey() final  ThemeMode appTheme;
@override@JsonKey() final  ColorPaletteModel defaultColorPalette;
@override@JsonKey() final  String defaultEmojis;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPreferencesModel&&(identical(other.appTheme, appTheme) || other.appTheme == appTheme)&&(identical(other.defaultColorPalette, defaultColorPalette) || other.defaultColorPalette == defaultColorPalette)&&(identical(other.defaultEmojis, defaultEmojis) || other.defaultEmojis == defaultEmojis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appTheme,defaultColorPalette,defaultEmojis);

@override
String toString() {
  return 'UserPreferencesModel(appTheme: $appTheme, defaultColorPalette: $defaultColorPalette, defaultEmojis: $defaultEmojis)';
}


}

/// @nodoc
abstract mixin class _$UserPreferencesModelCopyWith<$Res> implements $UserPreferencesModelCopyWith<$Res> {
  factory _$UserPreferencesModelCopyWith(_UserPreferencesModel value, $Res Function(_UserPreferencesModel) _then) = __$UserPreferencesModelCopyWithImpl;
@override @useResult
$Res call({
 ThemeMode appTheme, ColorPaletteModel defaultColorPalette, String defaultEmojis
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
@override @pragma('vm:prefer-inline') $Res call({Object? appTheme = null,Object? defaultColorPalette = null,Object? defaultEmojis = null,}) {
  return _then(_UserPreferencesModel(
appTheme: null == appTheme ? _self.appTheme : appTheme // ignore: cast_nullable_to_non_nullable
as ThemeMode,defaultColorPalette: null == defaultColorPalette ? _self.defaultColorPalette : defaultColorPalette // ignore: cast_nullable_to_non_nullable
as ColorPaletteModel,defaultEmojis: null == defaultEmojis ? _self.defaultEmojis : defaultEmojis // ignore: cast_nullable_to_non_nullable
as String,
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


/// @nodoc
mixin _$UserStatsModel {

 int get totalSpins; int get spinnersCreatedCount; int get spinnersDeletedCount; int get confettiCount;
/// Create a copy of UserStatsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserStatsModelCopyWith<UserStatsModel> get copyWith => _$UserStatsModelCopyWithImpl<UserStatsModel>(this as UserStatsModel, _$identity);

  /// Serializes this UserStatsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserStatsModel&&(identical(other.totalSpins, totalSpins) || other.totalSpins == totalSpins)&&(identical(other.spinnersCreatedCount, spinnersCreatedCount) || other.spinnersCreatedCount == spinnersCreatedCount)&&(identical(other.spinnersDeletedCount, spinnersDeletedCount) || other.spinnersDeletedCount == spinnersDeletedCount)&&(identical(other.confettiCount, confettiCount) || other.confettiCount == confettiCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalSpins,spinnersCreatedCount,spinnersDeletedCount,confettiCount);

@override
String toString() {
  return 'UserStatsModel(totalSpins: $totalSpins, spinnersCreatedCount: $spinnersCreatedCount, spinnersDeletedCount: $spinnersDeletedCount, confettiCount: $confettiCount)';
}


}

/// @nodoc
abstract mixin class $UserStatsModelCopyWith<$Res>  {
  factory $UserStatsModelCopyWith(UserStatsModel value, $Res Function(UserStatsModel) _then) = _$UserStatsModelCopyWithImpl;
@useResult
$Res call({
 int totalSpins, int spinnersCreatedCount, int spinnersDeletedCount, int confettiCount
});




}
/// @nodoc
class _$UserStatsModelCopyWithImpl<$Res>
    implements $UserStatsModelCopyWith<$Res> {
  _$UserStatsModelCopyWithImpl(this._self, this._then);

  final UserStatsModel _self;
  final $Res Function(UserStatsModel) _then;

/// Create a copy of UserStatsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalSpins = null,Object? spinnersCreatedCount = null,Object? spinnersDeletedCount = null,Object? confettiCount = null,}) {
  return _then(_self.copyWith(
totalSpins: null == totalSpins ? _self.totalSpins : totalSpins // ignore: cast_nullable_to_non_nullable
as int,spinnersCreatedCount: null == spinnersCreatedCount ? _self.spinnersCreatedCount : spinnersCreatedCount // ignore: cast_nullable_to_non_nullable
as int,spinnersDeletedCount: null == spinnersDeletedCount ? _self.spinnersDeletedCount : spinnersDeletedCount // ignore: cast_nullable_to_non_nullable
as int,confettiCount: null == confettiCount ? _self.confettiCount : confettiCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserStatsModel].
extension UserStatsModelPatterns on UserStatsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserStatsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserStatsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserStatsModel value)  $default,){
final _that = this;
switch (_that) {
case _UserStatsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserStatsModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserStatsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalSpins,  int spinnersCreatedCount,  int spinnersDeletedCount,  int confettiCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserStatsModel() when $default != null:
return $default(_that.totalSpins,_that.spinnersCreatedCount,_that.spinnersDeletedCount,_that.confettiCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalSpins,  int spinnersCreatedCount,  int spinnersDeletedCount,  int confettiCount)  $default,) {final _that = this;
switch (_that) {
case _UserStatsModel():
return $default(_that.totalSpins,_that.spinnersCreatedCount,_that.spinnersDeletedCount,_that.confettiCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalSpins,  int spinnersCreatedCount,  int spinnersDeletedCount,  int confettiCount)?  $default,) {final _that = this;
switch (_that) {
case _UserStatsModel() when $default != null:
return $default(_that.totalSpins,_that.spinnersCreatedCount,_that.spinnersDeletedCount,_that.confettiCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserStatsModel implements UserStatsModel {
  const _UserStatsModel({this.totalSpins = 0, this.spinnersCreatedCount = 0, this.spinnersDeletedCount = 0, this.confettiCount = 0});
  factory _UserStatsModel.fromJson(Map<String, dynamic> json) => _$UserStatsModelFromJson(json);

@override@JsonKey() final  int totalSpins;
@override@JsonKey() final  int spinnersCreatedCount;
@override@JsonKey() final  int spinnersDeletedCount;
@override@JsonKey() final  int confettiCount;

/// Create a copy of UserStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserStatsModelCopyWith<_UserStatsModel> get copyWith => __$UserStatsModelCopyWithImpl<_UserStatsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserStatsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserStatsModel&&(identical(other.totalSpins, totalSpins) || other.totalSpins == totalSpins)&&(identical(other.spinnersCreatedCount, spinnersCreatedCount) || other.spinnersCreatedCount == spinnersCreatedCount)&&(identical(other.spinnersDeletedCount, spinnersDeletedCount) || other.spinnersDeletedCount == spinnersDeletedCount)&&(identical(other.confettiCount, confettiCount) || other.confettiCount == confettiCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalSpins,spinnersCreatedCount,spinnersDeletedCount,confettiCount);

@override
String toString() {
  return 'UserStatsModel(totalSpins: $totalSpins, spinnersCreatedCount: $spinnersCreatedCount, spinnersDeletedCount: $spinnersDeletedCount, confettiCount: $confettiCount)';
}


}

/// @nodoc
abstract mixin class _$UserStatsModelCopyWith<$Res> implements $UserStatsModelCopyWith<$Res> {
  factory _$UserStatsModelCopyWith(_UserStatsModel value, $Res Function(_UserStatsModel) _then) = __$UserStatsModelCopyWithImpl;
@override @useResult
$Res call({
 int totalSpins, int spinnersCreatedCount, int spinnersDeletedCount, int confettiCount
});




}
/// @nodoc
class __$UserStatsModelCopyWithImpl<$Res>
    implements _$UserStatsModelCopyWith<$Res> {
  __$UserStatsModelCopyWithImpl(this._self, this._then);

  final _UserStatsModel _self;
  final $Res Function(_UserStatsModel) _then;

/// Create a copy of UserStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalSpins = null,Object? spinnersCreatedCount = null,Object? spinnersDeletedCount = null,Object? confettiCount = null,}) {
  return _then(_UserStatsModel(
totalSpins: null == totalSpins ? _self.totalSpins : totalSpins // ignore: cast_nullable_to_non_nullable
as int,spinnersCreatedCount: null == spinnersCreatedCount ? _self.spinnersCreatedCount : spinnersCreatedCount // ignore: cast_nullable_to_non_nullable
as int,spinnersDeletedCount: null == spinnersDeletedCount ? _self.spinnersDeletedCount : spinnersDeletedCount // ignore: cast_nullable_to_non_nullable
as int,confettiCount: null == confettiCount ? _self.confettiCount : confettiCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
