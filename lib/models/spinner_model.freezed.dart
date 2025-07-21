// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spinner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpinnerModel {

 String get title; List<String> get items; String? get description; List<String> get tags;
/// Create a copy of SpinnerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpinnerModelCopyWith<SpinnerModel> get copyWith => _$SpinnerModelCopyWithImpl<SpinnerModel>(this as SpinnerModel, _$identity);

  /// Serializes this SpinnerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpinnerModel&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(items),description,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'SpinnerModel(title: $title, items: $items, description: $description, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $SpinnerModelCopyWith<$Res>  {
  factory $SpinnerModelCopyWith(SpinnerModel value, $Res Function(SpinnerModel) _then) = _$SpinnerModelCopyWithImpl;
@useResult
$Res call({
 String title, List<String> items, String? description, List<String> tags
});




}
/// @nodoc
class _$SpinnerModelCopyWithImpl<$Res>
    implements $SpinnerModelCopyWith<$Res> {
  _$SpinnerModelCopyWithImpl(this._self, this._then);

  final SpinnerModel _self;
  final $Res Function(SpinnerModel) _then;

/// Create a copy of SpinnerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? items = null,Object? description = freezed,Object? tags = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<String>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [SpinnerModel].
extension SpinnerModelPatterns on SpinnerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpinnerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpinnerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpinnerModel value)  $default,){
final _that = this;
switch (_that) {
case _SpinnerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpinnerModel value)?  $default,){
final _that = this;
switch (_that) {
case _SpinnerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  List<String> items,  String? description,  List<String> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpinnerModel() when $default != null:
return $default(_that.title,_that.items,_that.description,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  List<String> items,  String? description,  List<String> tags)  $default,) {final _that = this;
switch (_that) {
case _SpinnerModel():
return $default(_that.title,_that.items,_that.description,_that.tags);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  List<String> items,  String? description,  List<String> tags)?  $default,) {final _that = this;
switch (_that) {
case _SpinnerModel() when $default != null:
return $default(_that.title,_that.items,_that.description,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpinnerModel implements SpinnerModel {
  const _SpinnerModel({required this.title, required final  List<String> items, this.description, final  List<String> tags = const []}): _items = items,_tags = tags;
  factory _SpinnerModel.fromJson(Map<String, dynamic> json) => _$SpinnerModelFromJson(json);

@override final  String title;
 final  List<String> _items;
@override List<String> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? description;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of SpinnerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpinnerModelCopyWith<_SpinnerModel> get copyWith => __$SpinnerModelCopyWithImpl<_SpinnerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpinnerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpinnerModel&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_items),description,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'SpinnerModel(title: $title, items: $items, description: $description, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$SpinnerModelCopyWith<$Res> implements $SpinnerModelCopyWith<$Res> {
  factory _$SpinnerModelCopyWith(_SpinnerModel value, $Res Function(_SpinnerModel) _then) = __$SpinnerModelCopyWithImpl;
@override @useResult
$Res call({
 String title, List<String> items, String? description, List<String> tags
});




}
/// @nodoc
class __$SpinnerModelCopyWithImpl<$Res>
    implements _$SpinnerModelCopyWith<$Res> {
  __$SpinnerModelCopyWithImpl(this._self, this._then);

  final _SpinnerModel _self;
  final $Res Function(_SpinnerModel) _then;

/// Create a copy of SpinnerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? items = null,Object? description = freezed,Object? tags = null,}) {
  return _then(_SpinnerModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<String>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
