// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_palette_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ColorPaletteModel {

 String get id; DunnoStatsModel get stats; String get title; List<SimpleColor> get colors; bool get isFavorite;
/// Create a copy of ColorPaletteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ColorPaletteModelCopyWith<ColorPaletteModel> get copyWith => _$ColorPaletteModelCopyWithImpl<ColorPaletteModel>(this as ColorPaletteModel, _$identity);

  /// Serializes this ColorPaletteModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ColorPaletteModel&&(identical(other.id, id) || other.id == id)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.colors, colors)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,stats,title,const DeepCollectionEquality().hash(colors),isFavorite);

@override
String toString() {
  return 'ColorPaletteModel(id: $id, stats: $stats, title: $title, colors: $colors, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $ColorPaletteModelCopyWith<$Res>  {
  factory $ColorPaletteModelCopyWith(ColorPaletteModel value, $Res Function(ColorPaletteModel) _then) = _$ColorPaletteModelCopyWithImpl;
@useResult
$Res call({
 String? id, DunnoStatsModel? stats, String title, List<SimpleColor> colors, bool isFavorite
});


$DunnoStatsModelCopyWith<$Res>? get stats;

}
/// @nodoc
class _$ColorPaletteModelCopyWithImpl<$Res>
    implements $ColorPaletteModelCopyWith<$Res> {
  _$ColorPaletteModelCopyWithImpl(this._self, this._then);

  final ColorPaletteModel _self;
  final $Res Function(ColorPaletteModel) _then;

/// Create a copy of ColorPaletteModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? stats = freezed,Object? title = null,Object? colors = null,Object? isFavorite = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,stats: freezed == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as DunnoStatsModel?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,colors: null == colors ? _self.colors : colors // ignore: cast_nullable_to_non_nullable
as List<SimpleColor>,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ColorPaletteModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DunnoStatsModelCopyWith<$Res>? get stats {
    return $DunnoStatsModelCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}


/// Adds pattern-matching-related methods to [ColorPaletteModel].
extension ColorPaletteModelPatterns on ColorPaletteModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ColorPaletteModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ColorPaletteModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ColorPaletteModel value)  $default,){
final _that = this;
switch (_that) {
case _ColorPaletteModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ColorPaletteModel value)?  $default,){
final _that = this;
switch (_that) {
case _ColorPaletteModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DunnoStatsModel? stats,  String title,  List<SimpleColor> colors,  bool isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ColorPaletteModel() when $default != null:
return $default(_that.id,_that.stats,_that.title,_that.colors,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DunnoStatsModel? stats,  String title,  List<SimpleColor> colors,  bool isFavorite)  $default,) {final _that = this;
switch (_that) {
case _ColorPaletteModel():
return $default(_that.id,_that.stats,_that.title,_that.colors,_that.isFavorite);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DunnoStatsModel? stats,  String title,  List<SimpleColor> colors,  bool isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _ColorPaletteModel() when $default != null:
return $default(_that.id,_that.stats,_that.title,_that.colors,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ColorPaletteModel extends ColorPaletteModel {
   _ColorPaletteModel({final  String? id, final  DunnoStatsModel? stats, required this.title, required final  List<SimpleColor> colors, this.isFavorite = false}): _colors = colors,super._(id: id, stats: stats);
  factory _ColorPaletteModel.fromJson(Map<String, dynamic> json) => _$ColorPaletteModelFromJson(json);

@override final  String title;
 final  List<SimpleColor> _colors;
@override List<SimpleColor> get colors {
  if (_colors is EqualUnmodifiableListView) return _colors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_colors);
}

@override@JsonKey() final  bool isFavorite;

/// Create a copy of ColorPaletteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ColorPaletteModelCopyWith<_ColorPaletteModel> get copyWith => __$ColorPaletteModelCopyWithImpl<_ColorPaletteModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ColorPaletteModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ColorPaletteModel&&(identical(other.id, id) || other.id == id)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._colors, _colors)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,stats,title,const DeepCollectionEquality().hash(_colors),isFavorite);

@override
String toString() {
  return 'ColorPaletteModel(id: $id, stats: $stats, title: $title, colors: $colors, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$ColorPaletteModelCopyWith<$Res> implements $ColorPaletteModelCopyWith<$Res> {
  factory _$ColorPaletteModelCopyWith(_ColorPaletteModel value, $Res Function(_ColorPaletteModel) _then) = __$ColorPaletteModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, DunnoStatsModel? stats, String title, List<SimpleColor> colors, bool isFavorite
});


@override $DunnoStatsModelCopyWith<$Res>? get stats;

}
/// @nodoc
class __$ColorPaletteModelCopyWithImpl<$Res>
    implements _$ColorPaletteModelCopyWith<$Res> {
  __$ColorPaletteModelCopyWithImpl(this._self, this._then);

  final _ColorPaletteModel _self;
  final $Res Function(_ColorPaletteModel) _then;

/// Create a copy of ColorPaletteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? stats = freezed,Object? title = null,Object? colors = null,Object? isFavorite = null,}) {
  return _then(_ColorPaletteModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,stats: freezed == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as DunnoStatsModel?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,colors: null == colors ? _self._colors : colors // ignore: cast_nullable_to_non_nullable
as List<SimpleColor>,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ColorPaletteModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DunnoStatsModelCopyWith<$Res>? get stats {
    return $DunnoStatsModelCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}

// dart format on
