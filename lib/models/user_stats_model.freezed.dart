// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

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
