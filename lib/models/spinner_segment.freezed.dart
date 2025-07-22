// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spinner_segment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SpinnerSegment {

 String get title; int get weight;
/// Create a copy of SpinnerSegment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpinnerSegmentCopyWith<SpinnerSegment> get copyWith => _$SpinnerSegmentCopyWithImpl<SpinnerSegment>(this as SpinnerSegment, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpinnerSegment&&(identical(other.title, title) || other.title == title)&&(identical(other.weight, weight) || other.weight == weight));
}


@override
int get hashCode => Object.hash(runtimeType,title,weight);

@override
String toString() {
  return 'SpinnerSegment(title: $title, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $SpinnerSegmentCopyWith<$Res>  {
  factory $SpinnerSegmentCopyWith(SpinnerSegment value, $Res Function(SpinnerSegment) _then) = _$SpinnerSegmentCopyWithImpl;
@useResult
$Res call({
 String title, int weight
});




}
/// @nodoc
class _$SpinnerSegmentCopyWithImpl<$Res>
    implements $SpinnerSegmentCopyWith<$Res> {
  _$SpinnerSegmentCopyWithImpl(this._self, this._then);

  final SpinnerSegment _self;
  final $Res Function(SpinnerSegment) _then;

/// Create a copy of SpinnerSegment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? weight = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SpinnerSegment].
extension SpinnerSegmentPatterns on SpinnerSegment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpinnerSegment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpinnerSegment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpinnerSegment value)  $default,){
final _that = this;
switch (_that) {
case _SpinnerSegment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpinnerSegment value)?  $default,){
final _that = this;
switch (_that) {
case _SpinnerSegment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  int weight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpinnerSegment() when $default != null:
return $default(_that.title,_that.weight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  int weight)  $default,) {final _that = this;
switch (_that) {
case _SpinnerSegment():
return $default(_that.title,_that.weight);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  int weight)?  $default,) {final _that = this;
switch (_that) {
case _SpinnerSegment() when $default != null:
return $default(_that.title,_that.weight);case _:
  return null;

}
}

}

/// @nodoc


class _SpinnerSegment implements SpinnerSegment {
  const _SpinnerSegment({required this.title, this.weight = 1});
  

@override final  String title;
@override@JsonKey() final  int weight;

/// Create a copy of SpinnerSegment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpinnerSegmentCopyWith<_SpinnerSegment> get copyWith => __$SpinnerSegmentCopyWithImpl<_SpinnerSegment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpinnerSegment&&(identical(other.title, title) || other.title == title)&&(identical(other.weight, weight) || other.weight == weight));
}


@override
int get hashCode => Object.hash(runtimeType,title,weight);

@override
String toString() {
  return 'SpinnerSegment(title: $title, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$SpinnerSegmentCopyWith<$Res> implements $SpinnerSegmentCopyWith<$Res> {
  factory _$SpinnerSegmentCopyWith(_SpinnerSegment value, $Res Function(_SpinnerSegment) _then) = __$SpinnerSegmentCopyWithImpl;
@override @useResult
$Res call({
 String title, int weight
});




}
/// @nodoc
class __$SpinnerSegmentCopyWithImpl<$Res>
    implements _$SpinnerSegmentCopyWith<$Res> {
  __$SpinnerSegmentCopyWithImpl(this._self, this._then);

  final _SpinnerSegment _self;
  final $Res Function(_SpinnerSegment) _then;

/// Create a copy of SpinnerSegment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? weight = null,}) {
  return _then(_SpinnerSegment(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
