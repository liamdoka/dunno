// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_color_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SimpleColor {

 int get r; int get g; int get b;
/// Create a copy of SimpleColor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimpleColorCopyWith<SimpleColor> get copyWith => _$SimpleColorCopyWithImpl<SimpleColor>(this as SimpleColor, _$identity);

  /// Serializes this SimpleColor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimpleColor&&(identical(other.r, r) || other.r == r)&&(identical(other.g, g) || other.g == g)&&(identical(other.b, b) || other.b == b));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,r,g,b);

@override
String toString() {
  return 'SimpleColor(r: $r, g: $g, b: $b)';
}


}

/// @nodoc
abstract mixin class $SimpleColorCopyWith<$Res>  {
  factory $SimpleColorCopyWith(SimpleColor value, $Res Function(SimpleColor) _then) = _$SimpleColorCopyWithImpl;
@useResult
$Res call({
 int r, int g, int b
});




}
/// @nodoc
class _$SimpleColorCopyWithImpl<$Res>
    implements $SimpleColorCopyWith<$Res> {
  _$SimpleColorCopyWithImpl(this._self, this._then);

  final SimpleColor _self;
  final $Res Function(SimpleColor) _then;

/// Create a copy of SimpleColor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? r = null,Object? g = null,Object? b = null,}) {
  return _then(_self.copyWith(
r: null == r ? _self.r : r // ignore: cast_nullable_to_non_nullable
as int,g: null == g ? _self.g : g // ignore: cast_nullable_to_non_nullable
as int,b: null == b ? _self.b : b // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SimpleColor].
extension SimpleColorPatterns on SimpleColor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SimpleColor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SimpleColor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SimpleColor value)  $default,){
final _that = this;
switch (_that) {
case _SimpleColor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SimpleColor value)?  $default,){
final _that = this;
switch (_that) {
case _SimpleColor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int r,  int g,  int b)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SimpleColor() when $default != null:
return $default(_that.r,_that.g,_that.b);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int r,  int g,  int b)  $default,) {final _that = this;
switch (_that) {
case _SimpleColor():
return $default(_that.r,_that.g,_that.b);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int r,  int g,  int b)?  $default,) {final _that = this;
switch (_that) {
case _SimpleColor() when $default != null:
return $default(_that.r,_that.g,_that.b);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SimpleColor extends SimpleColor {
  const _SimpleColor(this.r, this.g, this.b): super._();
  factory _SimpleColor.fromJson(Map<String, dynamic> json) => _$SimpleColorFromJson(json);

@override final  int r;
@override final  int g;
@override final  int b;

/// Create a copy of SimpleColor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SimpleColorCopyWith<_SimpleColor> get copyWith => __$SimpleColorCopyWithImpl<_SimpleColor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SimpleColorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SimpleColor&&(identical(other.r, r) || other.r == r)&&(identical(other.g, g) || other.g == g)&&(identical(other.b, b) || other.b == b));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,r,g,b);

@override
String toString() {
  return 'SimpleColor(r: $r, g: $g, b: $b)';
}


}

/// @nodoc
abstract mixin class _$SimpleColorCopyWith<$Res> implements $SimpleColorCopyWith<$Res> {
  factory _$SimpleColorCopyWith(_SimpleColor value, $Res Function(_SimpleColor) _then) = __$SimpleColorCopyWithImpl;
@override @useResult
$Res call({
 int r, int g, int b
});




}
/// @nodoc
class __$SimpleColorCopyWithImpl<$Res>
    implements _$SimpleColorCopyWith<$Res> {
  __$SimpleColorCopyWithImpl(this._self, this._then);

  final _SimpleColor _self;
  final $Res Function(_SimpleColor) _then;

/// Create a copy of SimpleColor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? r = null,Object? g = null,Object? b = null,}) {
  return _then(_SimpleColor(
null == r ? _self.r : r // ignore: cast_nullable_to_non_nullable
as int,null == g ? _self.g : g // ignore: cast_nullable_to_non_nullable
as int,null == b ? _self.b : b // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
