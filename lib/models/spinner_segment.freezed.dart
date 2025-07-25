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
mixin _$SpinnerSegmentModel {

 String get title; SimpleColor get color; int get weight;
/// Create a copy of SpinnerSegmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpinnerSegmentModelCopyWith<SpinnerSegmentModel> get copyWith => _$SpinnerSegmentModelCopyWithImpl<SpinnerSegmentModel>(this as SpinnerSegmentModel, _$identity);

  /// Serializes this SpinnerSegmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpinnerSegmentModel&&(identical(other.title, title) || other.title == title)&&(identical(other.color, color) || other.color == color)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,color,weight);

@override
String toString() {
  return 'SpinnerSegmentModel(title: $title, color: $color, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $SpinnerSegmentModelCopyWith<$Res>  {
  factory $SpinnerSegmentModelCopyWith(SpinnerSegmentModel value, $Res Function(SpinnerSegmentModel) _then) = _$SpinnerSegmentModelCopyWithImpl;
@useResult
$Res call({
 String title, SimpleColor color, int weight
});


$SimpleColorCopyWith<$Res> get color;

}
/// @nodoc
class _$SpinnerSegmentModelCopyWithImpl<$Res>
    implements $SpinnerSegmentModelCopyWith<$Res> {
  _$SpinnerSegmentModelCopyWithImpl(this._self, this._then);

  final SpinnerSegmentModel _self;
  final $Res Function(SpinnerSegmentModel) _then;

/// Create a copy of SpinnerSegmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? color = null,Object? weight = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as SimpleColor,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of SpinnerSegmentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleColorCopyWith<$Res> get color {
  
  return $SimpleColorCopyWith<$Res>(_self.color, (value) {
    return _then(_self.copyWith(color: value));
  });
}
}


/// Adds pattern-matching-related methods to [SpinnerSegmentModel].
extension SpinnerSegmentModelPatterns on SpinnerSegmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpinnerSegmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpinnerSegmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpinnerSegmentModel value)  $default,){
final _that = this;
switch (_that) {
case _SpinnerSegmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpinnerSegmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _SpinnerSegmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  SimpleColor color,  int weight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpinnerSegmentModel() when $default != null:
return $default(_that.title,_that.color,_that.weight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  SimpleColor color,  int weight)  $default,) {final _that = this;
switch (_that) {
case _SpinnerSegmentModel():
return $default(_that.title,_that.color,_that.weight);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  SimpleColor color,  int weight)?  $default,) {final _that = this;
switch (_that) {
case _SpinnerSegmentModel() when $default != null:
return $default(_that.title,_that.color,_that.weight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpinnerSegmentModel implements SpinnerSegmentModel {
  const _SpinnerSegmentModel({required this.title, this.color = SimpleColor.green, this.weight = 1});
  factory _SpinnerSegmentModel.fromJson(Map<String, dynamic> json) => _$SpinnerSegmentModelFromJson(json);

@override final  String title;
@override@JsonKey() final  SimpleColor color;
@override@JsonKey() final  int weight;

/// Create a copy of SpinnerSegmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpinnerSegmentModelCopyWith<_SpinnerSegmentModel> get copyWith => __$SpinnerSegmentModelCopyWithImpl<_SpinnerSegmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpinnerSegmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpinnerSegmentModel&&(identical(other.title, title) || other.title == title)&&(identical(other.color, color) || other.color == color)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,color,weight);

@override
String toString() {
  return 'SpinnerSegmentModel(title: $title, color: $color, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$SpinnerSegmentModelCopyWith<$Res> implements $SpinnerSegmentModelCopyWith<$Res> {
  factory _$SpinnerSegmentModelCopyWith(_SpinnerSegmentModel value, $Res Function(_SpinnerSegmentModel) _then) = __$SpinnerSegmentModelCopyWithImpl;
@override @useResult
$Res call({
 String title, SimpleColor color, int weight
});


@override $SimpleColorCopyWith<$Res> get color;

}
/// @nodoc
class __$SpinnerSegmentModelCopyWithImpl<$Res>
    implements _$SpinnerSegmentModelCopyWith<$Res> {
  __$SpinnerSegmentModelCopyWithImpl(this._self, this._then);

  final _SpinnerSegmentModel _self;
  final $Res Function(_SpinnerSegmentModel) _then;

/// Create a copy of SpinnerSegmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? color = null,Object? weight = null,}) {
  return _then(_SpinnerSegmentModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as SimpleColor,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of SpinnerSegmentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleColorCopyWith<$Res> get color {
  
  return $SimpleColorCopyWith<$Res>(_self.color, (value) {
    return _then(_self.copyWith(color: value));
  });
}
}

// dart format on
