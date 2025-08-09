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

 String get id; DunnoStatsModel get stats; String get title; SimpleColor get color; List<SpinnerSegmentModel> get segments; String? get description; String? get confetti; String? get paletteId; bool get isFavorite; List<String> get tags;
/// Create a copy of SpinnerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpinnerModelCopyWith<SpinnerModel> get copyWith => _$SpinnerModelCopyWithImpl<SpinnerModel>(this as SpinnerModel, _$identity);

  /// Serializes this SpinnerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpinnerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.title, title) || other.title == title)&&(identical(other.color, color) || other.color == color)&&const DeepCollectionEquality().equals(other.segments, segments)&&(identical(other.description, description) || other.description == description)&&(identical(other.confetti, confetti) || other.confetti == confetti)&&(identical(other.paletteId, paletteId) || other.paletteId == paletteId)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,stats,title,color,const DeepCollectionEquality().hash(segments),description,confetti,paletteId,isFavorite,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'SpinnerModel(id: $id, stats: $stats, title: $title, color: $color, segments: $segments, description: $description, confetti: $confetti, paletteId: $paletteId, isFavorite: $isFavorite, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $SpinnerModelCopyWith<$Res>  {
  factory $SpinnerModelCopyWith(SpinnerModel value, $Res Function(SpinnerModel) _then) = _$SpinnerModelCopyWithImpl;
@useResult
$Res call({
 String title, SimpleColor color, List<SpinnerSegmentModel> segments, String? description, String? id, String? confetti, DunnoStatsModel? stats, String? paletteId, bool isFavorite, List<String> tags
});


$SimpleColorCopyWith<$Res> get color;$DunnoStatsModelCopyWith<$Res>? get stats;

}
/// @nodoc
class _$SpinnerModelCopyWithImpl<$Res>
    implements $SpinnerModelCopyWith<$Res> {
  _$SpinnerModelCopyWithImpl(this._self, this._then);

  final SpinnerModel _self;
  final $Res Function(SpinnerModel) _then;

/// Create a copy of SpinnerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? color = null,Object? segments = null,Object? description = freezed,Object? id = freezed,Object? confetti = freezed,Object? stats = freezed,Object? paletteId = freezed,Object? isFavorite = null,Object? tags = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as SimpleColor,segments: null == segments ? _self.segments : segments // ignore: cast_nullable_to_non_nullable
as List<SpinnerSegmentModel>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,confetti: freezed == confetti ? _self.confetti : confetti // ignore: cast_nullable_to_non_nullable
as String?,stats: freezed == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as DunnoStatsModel?,paletteId: freezed == paletteId ? _self.paletteId : paletteId // ignore: cast_nullable_to_non_nullable
as String?,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
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
}/// Create a copy of SpinnerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DunnoStatsModelCopyWith<$Res>? get stats {
    return $DunnoStatsModelCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  SimpleColor color,  List<SpinnerSegmentModel> segments,  String? description,  String? id,  String? confetti,  DunnoStatsModel? stats,  String? paletteId,  bool isFavorite,  List<String> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpinnerModel() when $default != null:
return $default(_that.title,_that.color,_that.segments,_that.description,_that.id,_that.confetti,_that.stats,_that.paletteId,_that.isFavorite,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  SimpleColor color,  List<SpinnerSegmentModel> segments,  String? description,  String? id,  String? confetti,  DunnoStatsModel? stats,  String? paletteId,  bool isFavorite,  List<String> tags)  $default,) {final _that = this;
switch (_that) {
case _SpinnerModel():
return $default(_that.title,_that.color,_that.segments,_that.description,_that.id,_that.confetti,_that.stats,_that.paletteId,_that.isFavorite,_that.tags);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  SimpleColor color,  List<SpinnerSegmentModel> segments,  String? description,  String? id,  String? confetti,  DunnoStatsModel? stats,  String? paletteId,  bool isFavorite,  List<String> tags)?  $default,) {final _that = this;
switch (_that) {
case _SpinnerModel() when $default != null:
return $default(_that.title,_that.color,_that.segments,_that.description,_that.id,_that.confetti,_that.stats,_that.paletteId,_that.isFavorite,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpinnerModel extends SpinnerModel {
   _SpinnerModel({required this.title, required this.color, required final  List<SpinnerSegmentModel> segments, this.description, final  String? id, this.confetti, final  DunnoStatsModel? stats, this.paletteId, this.isFavorite = false, final  List<String> tags = const []}): _segments = segments,_tags = tags,super._(id: id, stats: stats);
  factory _SpinnerModel.fromJson(Map<String, dynamic> json) => _$SpinnerModelFromJson(json);

@override final  String title;
@override final  SimpleColor color;
 final  List<SpinnerSegmentModel> _segments;
@override List<SpinnerSegmentModel> get segments {
  if (_segments is EqualUnmodifiableListView) return _segments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_segments);
}

@override final  String? description;
@override final  String? confetti;
@override final  String? paletteId;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpinnerModel&&(identical(other.title, title) || other.title == title)&&(identical(other.color, color) || other.color == color)&&const DeepCollectionEquality().equals(other._segments, _segments)&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&(identical(other.confetti, confetti) || other.confetti == confetti)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.paletteId, paletteId) || other.paletteId == paletteId)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,color,const DeepCollectionEquality().hash(_segments),description,id,confetti,stats,paletteId,isFavorite,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'SpinnerModel(title: $title, color: $color, segments: $segments, description: $description, id: $id, confetti: $confetti, stats: $stats, paletteId: $paletteId, isFavorite: $isFavorite, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$SpinnerModelCopyWith<$Res> implements $SpinnerModelCopyWith<$Res> {
  factory _$SpinnerModelCopyWith(_SpinnerModel value, $Res Function(_SpinnerModel) _then) = __$SpinnerModelCopyWithImpl;
@override @useResult
$Res call({
 String title, SimpleColor color, List<SpinnerSegmentModel> segments, String? description, String? id, String? confetti, DunnoStatsModel? stats, String? paletteId, bool isFavorite, List<String> tags
});


@override $SimpleColorCopyWith<$Res> get color;@override $DunnoStatsModelCopyWith<$Res>? get stats;

}
/// @nodoc
class __$SpinnerModelCopyWithImpl<$Res>
    implements _$SpinnerModelCopyWith<$Res> {
  __$SpinnerModelCopyWithImpl(this._self, this._then);

  final _SpinnerModel _self;
  final $Res Function(_SpinnerModel) _then;

/// Create a copy of SpinnerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? color = null,Object? segments = null,Object? description = freezed,Object? id = freezed,Object? confetti = freezed,Object? stats = freezed,Object? paletteId = freezed,Object? isFavorite = null,Object? tags = null,}) {
  return _then(_SpinnerModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as SimpleColor,segments: null == segments ? _self._segments : segments // ignore: cast_nullable_to_non_nullable
as List<SpinnerSegmentModel>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,confetti: freezed == confetti ? _self.confetti : confetti // ignore: cast_nullable_to_non_nullable
as String?,stats: freezed == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as DunnoStatsModel?,paletteId: freezed == paletteId ? _self.paletteId : paletteId // ignore: cast_nullable_to_non_nullable
as String?,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
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
}/// Create a copy of SpinnerModel
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
