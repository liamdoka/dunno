// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dunno_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DunnoStatsModel {

 int get createdTime; int? get lastEditTime; int? get lastSpinTime; int? get deletedTime; int get spinCount; int get editCount;
/// Create a copy of DunnoStatsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DunnoStatsModelCopyWith<DunnoStatsModel> get copyWith => _$DunnoStatsModelCopyWithImpl<DunnoStatsModel>(this as DunnoStatsModel, _$identity);

  /// Serializes this DunnoStatsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DunnoStatsModel&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime)&&(identical(other.lastEditTime, lastEditTime) || other.lastEditTime == lastEditTime)&&(identical(other.lastSpinTime, lastSpinTime) || other.lastSpinTime == lastSpinTime)&&(identical(other.deletedTime, deletedTime) || other.deletedTime == deletedTime)&&(identical(other.spinCount, spinCount) || other.spinCount == spinCount)&&(identical(other.editCount, editCount) || other.editCount == editCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdTime,lastEditTime,lastSpinTime,deletedTime,spinCount,editCount);

@override
String toString() {
  return 'DunnoStatsModel(createdTime: $createdTime, lastEditTime: $lastEditTime, lastSpinTime: $lastSpinTime, deletedTime: $deletedTime, spinCount: $spinCount, editCount: $editCount)';
}


}

/// @nodoc
abstract mixin class $DunnoStatsModelCopyWith<$Res>  {
  factory $DunnoStatsModelCopyWith(DunnoStatsModel value, $Res Function(DunnoStatsModel) _then) = _$DunnoStatsModelCopyWithImpl;
@useResult
$Res call({
 int? createdTime, int? lastEditTime, int? lastSpinTime, int? deletedTime, int spinCount, int editCount
});




}
/// @nodoc
class _$DunnoStatsModelCopyWithImpl<$Res>
    implements $DunnoStatsModelCopyWith<$Res> {
  _$DunnoStatsModelCopyWithImpl(this._self, this._then);

  final DunnoStatsModel _self;
  final $Res Function(DunnoStatsModel) _then;

/// Create a copy of DunnoStatsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdTime = freezed,Object? lastEditTime = freezed,Object? lastSpinTime = freezed,Object? deletedTime = freezed,Object? spinCount = null,Object? editCount = null,}) {
  return _then(_self.copyWith(
createdTime: freezed == createdTime ? _self.createdTime! : createdTime // ignore: cast_nullable_to_non_nullable
as int?,lastEditTime: freezed == lastEditTime ? _self.lastEditTime : lastEditTime // ignore: cast_nullable_to_non_nullable
as int?,lastSpinTime: freezed == lastSpinTime ? _self.lastSpinTime : lastSpinTime // ignore: cast_nullable_to_non_nullable
as int?,deletedTime: freezed == deletedTime ? _self.deletedTime : deletedTime // ignore: cast_nullable_to_non_nullable
as int?,spinCount: null == spinCount ? _self.spinCount : spinCount // ignore: cast_nullable_to_non_nullable
as int,editCount: null == editCount ? _self.editCount : editCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DunnoStatsModel].
extension DunnoStatsModelPatterns on DunnoStatsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DunnoStatsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DunnoStatsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DunnoStatsModel value)  $default,){
final _that = this;
switch (_that) {
case _DunnoStatsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DunnoStatsModel value)?  $default,){
final _that = this;
switch (_that) {
case _DunnoStatsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? createdTime,  int? lastEditTime,  int? lastSpinTime,  int? deletedTime,  int spinCount,  int editCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DunnoStatsModel() when $default != null:
return $default(_that.createdTime,_that.lastEditTime,_that.lastSpinTime,_that.deletedTime,_that.spinCount,_that.editCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? createdTime,  int? lastEditTime,  int? lastSpinTime,  int? deletedTime,  int spinCount,  int editCount)  $default,) {final _that = this;
switch (_that) {
case _DunnoStatsModel():
return $default(_that.createdTime,_that.lastEditTime,_that.lastSpinTime,_that.deletedTime,_that.spinCount,_that.editCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? createdTime,  int? lastEditTime,  int? lastSpinTime,  int? deletedTime,  int spinCount,  int editCount)?  $default,) {final _that = this;
switch (_that) {
case _DunnoStatsModel() when $default != null:
return $default(_that.createdTime,_that.lastEditTime,_that.lastSpinTime,_that.deletedTime,_that.spinCount,_that.editCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DunnoStatsModel extends DunnoStatsModel {
   _DunnoStatsModel({final  int? createdTime, this.lastEditTime, this.lastSpinTime, this.deletedTime, this.spinCount = 0, this.editCount = 0}): super._(createdTime: createdTime);
  factory _DunnoStatsModel.fromJson(Map<String, dynamic> json) => _$DunnoStatsModelFromJson(json);

@override final  int? lastEditTime;
@override final  int? lastSpinTime;
@override final  int? deletedTime;
@override@JsonKey() final  int spinCount;
@override@JsonKey() final  int editCount;

/// Create a copy of DunnoStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DunnoStatsModelCopyWith<_DunnoStatsModel> get copyWith => __$DunnoStatsModelCopyWithImpl<_DunnoStatsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DunnoStatsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DunnoStatsModel&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime)&&(identical(other.lastEditTime, lastEditTime) || other.lastEditTime == lastEditTime)&&(identical(other.lastSpinTime, lastSpinTime) || other.lastSpinTime == lastSpinTime)&&(identical(other.deletedTime, deletedTime) || other.deletedTime == deletedTime)&&(identical(other.spinCount, spinCount) || other.spinCount == spinCount)&&(identical(other.editCount, editCount) || other.editCount == editCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdTime,lastEditTime,lastSpinTime,deletedTime,spinCount,editCount);

@override
String toString() {
  return 'DunnoStatsModel(createdTime: $createdTime, lastEditTime: $lastEditTime, lastSpinTime: $lastSpinTime, deletedTime: $deletedTime, spinCount: $spinCount, editCount: $editCount)';
}


}

/// @nodoc
abstract mixin class _$DunnoStatsModelCopyWith<$Res> implements $DunnoStatsModelCopyWith<$Res> {
  factory _$DunnoStatsModelCopyWith(_DunnoStatsModel value, $Res Function(_DunnoStatsModel) _then) = __$DunnoStatsModelCopyWithImpl;
@override @useResult
$Res call({
 int? createdTime, int? lastEditTime, int? lastSpinTime, int? deletedTime, int spinCount, int editCount
});




}
/// @nodoc
class __$DunnoStatsModelCopyWithImpl<$Res>
    implements _$DunnoStatsModelCopyWith<$Res> {
  __$DunnoStatsModelCopyWithImpl(this._self, this._then);

  final _DunnoStatsModel _self;
  final $Res Function(_DunnoStatsModel) _then;

/// Create a copy of DunnoStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdTime = freezed,Object? lastEditTime = freezed,Object? lastSpinTime = freezed,Object? deletedTime = freezed,Object? spinCount = null,Object? editCount = null,}) {
  return _then(_DunnoStatsModel(
createdTime: freezed == createdTime ? _self.createdTime : createdTime // ignore: cast_nullable_to_non_nullable
as int?,lastEditTime: freezed == lastEditTime ? _self.lastEditTime : lastEditTime // ignore: cast_nullable_to_non_nullable
as int?,lastSpinTime: freezed == lastSpinTime ? _self.lastSpinTime : lastSpinTime // ignore: cast_nullable_to_non_nullable
as int?,deletedTime: freezed == deletedTime ? _self.deletedTime : deletedTime // ignore: cast_nullable_to_non_nullable
as int?,spinCount: null == spinCount ? _self.spinCount : spinCount // ignore: cast_nullable_to_non_nullable
as int,editCount: null == editCount ? _self.editCount : editCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
