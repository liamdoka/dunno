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

 String get id; int get createdTime; String get title; SimpleColor get color; List<String> get items; String? get description; int? get lastSpinTime; bool get isFavorite; List<String> get tags;
/// Create a copy of SpinnerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpinnerModelCopyWith<SpinnerModel> get copyWith => _$SpinnerModelCopyWithImpl<SpinnerModel>(this as SpinnerModel, _$identity);

  /// Serializes this SpinnerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpinnerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime)&&(identical(other.title, title) || other.title == title)&&(identical(other.color, color) || other.color == color)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.description, description) || other.description == description)&&(identical(other.lastSpinTime, lastSpinTime) || other.lastSpinTime == lastSpinTime)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdTime,title,color,const DeepCollectionEquality().hash(items),description,lastSpinTime,isFavorite,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'SpinnerModel(id: $id, createdTime: $createdTime, title: $title, color: $color, items: $items, description: $description, lastSpinTime: $lastSpinTime, isFavorite: $isFavorite, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $SpinnerModelCopyWith<$Res>  {
  factory $SpinnerModelCopyWith(SpinnerModel value, $Res Function(SpinnerModel) _then) = _$SpinnerModelCopyWithImpl;
@useResult
$Res call({
 String title, SimpleColor color, List<String> items, String? description, int? lastSpinTime, String? id, int? createdTime, bool isFavorite, List<String> tags
});


$SimpleColorCopyWith<$Res> get color;

}
/// @nodoc
class _$SpinnerModelCopyWithImpl<$Res>
    implements $SpinnerModelCopyWith<$Res> {
  _$SpinnerModelCopyWithImpl(this._self, this._then);

  final SpinnerModel _self;
  final $Res Function(SpinnerModel) _then;

/// Create a copy of SpinnerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? color = null,Object? items = null,Object? description = freezed,Object? lastSpinTime = freezed,Object? id = freezed,Object? createdTime = freezed,Object? isFavorite = null,Object? tags = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as SimpleColor,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<String>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,lastSpinTime: freezed == lastSpinTime ? _self.lastSpinTime : lastSpinTime // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id! : id // ignore: cast_nullable_to_non_nullable
as String?,createdTime: freezed == createdTime ? _self.createdTime! : createdTime // ignore: cast_nullable_to_non_nullable
as int?,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of SpinnerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleColorCopyWith<$Res> get color {
  
  return $SimpleColorCopyWith<$Res>(_self.color, (value) {
    return _then(_self.copyWith(color: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  SimpleColor color,  List<String> items,  String? description,  int? lastSpinTime,  String? id,  int? createdTime,  bool isFavorite,  List<String> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpinnerModel() when $default != null:
return $default(_that.title,_that.color,_that.items,_that.description,_that.lastSpinTime,_that.id,_that.createdTime,_that.isFavorite,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  SimpleColor color,  List<String> items,  String? description,  int? lastSpinTime,  String? id,  int? createdTime,  bool isFavorite,  List<String> tags)  $default,) {final _that = this;
switch (_that) {
case _SpinnerModel():
return $default(_that.title,_that.color,_that.items,_that.description,_that.lastSpinTime,_that.id,_that.createdTime,_that.isFavorite,_that.tags);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  SimpleColor color,  List<String> items,  String? description,  int? lastSpinTime,  String? id,  int? createdTime,  bool isFavorite,  List<String> tags)?  $default,) {final _that = this;
switch (_that) {
case _SpinnerModel() when $default != null:
return $default(_that.title,_that.color,_that.items,_that.description,_that.lastSpinTime,_that.id,_that.createdTime,_that.isFavorite,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpinnerModel extends SpinnerModel {
   _SpinnerModel({required this.title, required this.color, required final  List<String> items, this.description, this.lastSpinTime, final  String? id, final  int? createdTime, this.isFavorite = false, final  List<String> tags = const []}): _items = items,_tags = tags,super._(id: id, createdTime: createdTime);
  factory _SpinnerModel.fromJson(Map<String, dynamic> json) => _$SpinnerModelFromJson(json);

@override final  String title;
@override final  SimpleColor color;
 final  List<String> _items;
@override List<String> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? description;
@override final  int? lastSpinTime;
@override@JsonKey() final  bool isFavorite;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpinnerModel&&(identical(other.title, title) || other.title == title)&&(identical(other.color, color) || other.color == color)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.description, description) || other.description == description)&&(identical(other.lastSpinTime, lastSpinTime) || other.lastSpinTime == lastSpinTime)&&(identical(other.id, id) || other.id == id)&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,color,const DeepCollectionEquality().hash(_items),description,lastSpinTime,id,createdTime,isFavorite,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'SpinnerModel(title: $title, color: $color, items: $items, description: $description, lastSpinTime: $lastSpinTime, id: $id, createdTime: $createdTime, isFavorite: $isFavorite, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$SpinnerModelCopyWith<$Res> implements $SpinnerModelCopyWith<$Res> {
  factory _$SpinnerModelCopyWith(_SpinnerModel value, $Res Function(_SpinnerModel) _then) = __$SpinnerModelCopyWithImpl;
@override @useResult
$Res call({
 String title, SimpleColor color, List<String> items, String? description, int? lastSpinTime, String? id, int? createdTime, bool isFavorite, List<String> tags
});


@override $SimpleColorCopyWith<$Res> get color;

}
/// @nodoc
class __$SpinnerModelCopyWithImpl<$Res>
    implements _$SpinnerModelCopyWith<$Res> {
  __$SpinnerModelCopyWithImpl(this._self, this._then);

  final _SpinnerModel _self;
  final $Res Function(_SpinnerModel) _then;

/// Create a copy of SpinnerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? color = null,Object? items = null,Object? description = freezed,Object? lastSpinTime = freezed,Object? id = freezed,Object? createdTime = freezed,Object? isFavorite = null,Object? tags = null,}) {
  return _then(_SpinnerModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as SimpleColor,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<String>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,lastSpinTime: freezed == lastSpinTime ? _self.lastSpinTime : lastSpinTime // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdTime: freezed == createdTime ? _self.createdTime : createdTime // ignore: cast_nullable_to_non_nullable
as int?,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of SpinnerModel
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
