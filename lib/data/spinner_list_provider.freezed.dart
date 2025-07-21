// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spinner_list_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpinnerListModel {

 List<SpinnerModel> get spinners; int? get selectedSpinnerIndex;
/// Create a copy of SpinnerListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpinnerListModelCopyWith<SpinnerListModel> get copyWith => _$SpinnerListModelCopyWithImpl<SpinnerListModel>(this as SpinnerListModel, _$identity);

  /// Serializes this SpinnerListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpinnerListModel&&const DeepCollectionEquality().equals(other.spinners, spinners)&&(identical(other.selectedSpinnerIndex, selectedSpinnerIndex) || other.selectedSpinnerIndex == selectedSpinnerIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(spinners),selectedSpinnerIndex);

@override
String toString() {
  return 'SpinnerListModel(spinners: $spinners, selectedSpinnerIndex: $selectedSpinnerIndex)';
}


}

/// @nodoc
abstract mixin class $SpinnerListModelCopyWith<$Res>  {
  factory $SpinnerListModelCopyWith(SpinnerListModel value, $Res Function(SpinnerListModel) _then) = _$SpinnerListModelCopyWithImpl;
@useResult
$Res call({
 List<SpinnerModel> spinners, int? selectedSpinnerIndex
});




}
/// @nodoc
class _$SpinnerListModelCopyWithImpl<$Res>
    implements $SpinnerListModelCopyWith<$Res> {
  _$SpinnerListModelCopyWithImpl(this._self, this._then);

  final SpinnerListModel _self;
  final $Res Function(SpinnerListModel) _then;

/// Create a copy of SpinnerListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? spinners = null,Object? selectedSpinnerIndex = freezed,}) {
  return _then(_self.copyWith(
spinners: null == spinners ? _self.spinners : spinners // ignore: cast_nullable_to_non_nullable
as List<SpinnerModel>,selectedSpinnerIndex: freezed == selectedSpinnerIndex ? _self.selectedSpinnerIndex : selectedSpinnerIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SpinnerListModel].
extension SpinnerListModelPatterns on SpinnerListModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpinnerListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpinnerListModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpinnerListModel value)  $default,){
final _that = this;
switch (_that) {
case _SpinnerListModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpinnerListModel value)?  $default,){
final _that = this;
switch (_that) {
case _SpinnerListModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SpinnerModel> spinners,  int? selectedSpinnerIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpinnerListModel() when $default != null:
return $default(_that.spinners,_that.selectedSpinnerIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SpinnerModel> spinners,  int? selectedSpinnerIndex)  $default,) {final _that = this;
switch (_that) {
case _SpinnerListModel():
return $default(_that.spinners,_that.selectedSpinnerIndex);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SpinnerModel> spinners,  int? selectedSpinnerIndex)?  $default,) {final _that = this;
switch (_that) {
case _SpinnerListModel() when $default != null:
return $default(_that.spinners,_that.selectedSpinnerIndex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpinnerListModel extends SpinnerListModel {
  const _SpinnerListModel({final  List<SpinnerModel> spinners = const [], this.selectedSpinnerIndex}): _spinners = spinners,super._();
  factory _SpinnerListModel.fromJson(Map<String, dynamic> json) => _$SpinnerListModelFromJson(json);

 final  List<SpinnerModel> _spinners;
@override@JsonKey() List<SpinnerModel> get spinners {
  if (_spinners is EqualUnmodifiableListView) return _spinners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_spinners);
}

@override final  int? selectedSpinnerIndex;

/// Create a copy of SpinnerListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpinnerListModelCopyWith<_SpinnerListModel> get copyWith => __$SpinnerListModelCopyWithImpl<_SpinnerListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpinnerListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpinnerListModel&&const DeepCollectionEquality().equals(other._spinners, _spinners)&&(identical(other.selectedSpinnerIndex, selectedSpinnerIndex) || other.selectedSpinnerIndex == selectedSpinnerIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_spinners),selectedSpinnerIndex);

@override
String toString() {
  return 'SpinnerListModel(spinners: $spinners, selectedSpinnerIndex: $selectedSpinnerIndex)';
}


}

/// @nodoc
abstract mixin class _$SpinnerListModelCopyWith<$Res> implements $SpinnerListModelCopyWith<$Res> {
  factory _$SpinnerListModelCopyWith(_SpinnerListModel value, $Res Function(_SpinnerListModel) _then) = __$SpinnerListModelCopyWithImpl;
@override @useResult
$Res call({
 List<SpinnerModel> spinners, int? selectedSpinnerIndex
});




}
/// @nodoc
class __$SpinnerListModelCopyWithImpl<$Res>
    implements _$SpinnerListModelCopyWith<$Res> {
  __$SpinnerListModelCopyWithImpl(this._self, this._then);

  final _SpinnerListModel _self;
  final $Res Function(_SpinnerListModel) _then;

/// Create a copy of SpinnerListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? spinners = null,Object? selectedSpinnerIndex = freezed,}) {
  return _then(_SpinnerListModel(
spinners: null == spinners ? _self._spinners : spinners // ignore: cast_nullable_to_non_nullable
as List<SpinnerModel>,selectedSpinnerIndex: freezed == selectedSpinnerIndex ? _self.selectedSpinnerIndex : selectedSpinnerIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
