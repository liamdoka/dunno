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

 String get id; SpinnerStatsModel get stats; String get title; SimpleColor get color; List<SpinnerSegmentModel> get segments; String? get description; String? get emojis; ColorPaletteModel? get palette; bool get isFavorite; List<String> get tags;
/// Create a copy of SpinnerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpinnerModelCopyWith<SpinnerModel> get copyWith => _$SpinnerModelCopyWithImpl<SpinnerModel>(this as SpinnerModel, _$identity);

  /// Serializes this SpinnerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpinnerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.title, title) || other.title == title)&&(identical(other.color, color) || other.color == color)&&const DeepCollectionEquality().equals(other.segments, segments)&&(identical(other.description, description) || other.description == description)&&(identical(other.emojis, emojis) || other.emojis == emojis)&&(identical(other.palette, palette) || other.palette == palette)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,stats,title,color,const DeepCollectionEquality().hash(segments),description,emojis,palette,isFavorite,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'SpinnerModel(id: $id, stats: $stats, title: $title, color: $color, segments: $segments, description: $description, emojis: $emojis, palette: $palette, isFavorite: $isFavorite, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $SpinnerModelCopyWith<$Res>  {
  factory $SpinnerModelCopyWith(SpinnerModel value, $Res Function(SpinnerModel) _then) = _$SpinnerModelCopyWithImpl;
@useResult
$Res call({
 String title, SimpleColor color, List<SpinnerSegmentModel> segments, String? description, String? id, String? emojis, SpinnerStatsModel? stats, ColorPaletteModel? palette, bool isFavorite, List<String> tags
});


$SimpleColorCopyWith<$Res> get color;$SpinnerStatsModelCopyWith<$Res>? get stats;$ColorPaletteModelCopyWith<$Res>? get palette;

}
/// @nodoc
class _$SpinnerModelCopyWithImpl<$Res>
    implements $SpinnerModelCopyWith<$Res> {
  _$SpinnerModelCopyWithImpl(this._self, this._then);

  final SpinnerModel _self;
  final $Res Function(SpinnerModel) _then;

/// Create a copy of SpinnerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? color = null,Object? segments = null,Object? description = freezed,Object? id = freezed,Object? emojis = freezed,Object? stats = freezed,Object? palette = freezed,Object? isFavorite = null,Object? tags = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as SimpleColor,segments: null == segments ? _self.segments : segments // ignore: cast_nullable_to_non_nullable
as List<SpinnerSegmentModel>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,emojis: freezed == emojis ? _self.emojis : emojis // ignore: cast_nullable_to_non_nullable
as String?,stats: freezed == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as SpinnerStatsModel?,palette: freezed == palette ? _self.palette : palette // ignore: cast_nullable_to_non_nullable
as ColorPaletteModel?,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
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
$SpinnerStatsModelCopyWith<$Res>? get stats {
    return $SpinnerStatsModelCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}/// Create a copy of SpinnerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColorPaletteModelCopyWith<$Res>? get palette {
    if (_self.palette == null) {
    return null;
  }

  return $ColorPaletteModelCopyWith<$Res>(_self.palette!, (value) {
    return _then(_self.copyWith(palette: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  SimpleColor color,  List<SpinnerSegmentModel> segments,  String? description,  String? id,  String? emojis,  SpinnerStatsModel? stats,  ColorPaletteModel? palette,  bool isFavorite,  List<String> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpinnerModel() when $default != null:
return $default(_that.title,_that.color,_that.segments,_that.description,_that.id,_that.emojis,_that.stats,_that.palette,_that.isFavorite,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  SimpleColor color,  List<SpinnerSegmentModel> segments,  String? description,  String? id,  String? emojis,  SpinnerStatsModel? stats,  ColorPaletteModel? palette,  bool isFavorite,  List<String> tags)  $default,) {final _that = this;
switch (_that) {
case _SpinnerModel():
return $default(_that.title,_that.color,_that.segments,_that.description,_that.id,_that.emojis,_that.stats,_that.palette,_that.isFavorite,_that.tags);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  SimpleColor color,  List<SpinnerSegmentModel> segments,  String? description,  String? id,  String? emojis,  SpinnerStatsModel? stats,  ColorPaletteModel? palette,  bool isFavorite,  List<String> tags)?  $default,) {final _that = this;
switch (_that) {
case _SpinnerModel() when $default != null:
return $default(_that.title,_that.color,_that.segments,_that.description,_that.id,_that.emojis,_that.stats,_that.palette,_that.isFavorite,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpinnerModel extends SpinnerModel {
   _SpinnerModel({required this.title, required this.color, required final  List<SpinnerSegmentModel> segments, this.description, final  String? id, this.emojis, final  SpinnerStatsModel? stats, this.palette, this.isFavorite = false, final  List<String> tags = const []}): _segments = segments,_tags = tags,super._(id: id, stats: stats);
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
@override final  String? emojis;
@override final  ColorPaletteModel? palette;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpinnerModel&&(identical(other.title, title) || other.title == title)&&(identical(other.color, color) || other.color == color)&&const DeepCollectionEquality().equals(other._segments, _segments)&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&(identical(other.emojis, emojis) || other.emojis == emojis)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.palette, palette) || other.palette == palette)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,color,const DeepCollectionEquality().hash(_segments),description,id,emojis,stats,palette,isFavorite,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'SpinnerModel(title: $title, color: $color, segments: $segments, description: $description, id: $id, emojis: $emojis, stats: $stats, palette: $palette, isFavorite: $isFavorite, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$SpinnerModelCopyWith<$Res> implements $SpinnerModelCopyWith<$Res> {
  factory _$SpinnerModelCopyWith(_SpinnerModel value, $Res Function(_SpinnerModel) _then) = __$SpinnerModelCopyWithImpl;
@override @useResult
$Res call({
 String title, SimpleColor color, List<SpinnerSegmentModel> segments, String? description, String? id, String? emojis, SpinnerStatsModel? stats, ColorPaletteModel? palette, bool isFavorite, List<String> tags
});


@override $SimpleColorCopyWith<$Res> get color;@override $SpinnerStatsModelCopyWith<$Res>? get stats;@override $ColorPaletteModelCopyWith<$Res>? get palette;

}
/// @nodoc
class __$SpinnerModelCopyWithImpl<$Res>
    implements _$SpinnerModelCopyWith<$Res> {
  __$SpinnerModelCopyWithImpl(this._self, this._then);

  final _SpinnerModel _self;
  final $Res Function(_SpinnerModel) _then;

/// Create a copy of SpinnerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? color = null,Object? segments = null,Object? description = freezed,Object? id = freezed,Object? emojis = freezed,Object? stats = freezed,Object? palette = freezed,Object? isFavorite = null,Object? tags = null,}) {
  return _then(_SpinnerModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as SimpleColor,segments: null == segments ? _self._segments : segments // ignore: cast_nullable_to_non_nullable
as List<SpinnerSegmentModel>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,emojis: freezed == emojis ? _self.emojis : emojis // ignore: cast_nullable_to_non_nullable
as String?,stats: freezed == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as SpinnerStatsModel?,palette: freezed == palette ? _self.palette : palette // ignore: cast_nullable_to_non_nullable
as ColorPaletteModel?,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
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
$SpinnerStatsModelCopyWith<$Res>? get stats {
    return $SpinnerStatsModelCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}/// Create a copy of SpinnerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColorPaletteModelCopyWith<$Res>? get palette {
    if (_self.palette == null) {
    return null;
  }

  return $ColorPaletteModelCopyWith<$Res>(_self.palette!, (value) {
    return _then(_self.copyWith(palette: value));
  });
}
}


/// @nodoc
mixin _$SpinnerStatsModel {

 int get createdTime; int? get lastEditTime; int? get lastSpinTime; int? get deletedTime; int get spinCount; int get editCount;
/// Create a copy of SpinnerStatsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpinnerStatsModelCopyWith<SpinnerStatsModel> get copyWith => _$SpinnerStatsModelCopyWithImpl<SpinnerStatsModel>(this as SpinnerStatsModel, _$identity);

  /// Serializes this SpinnerStatsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpinnerStatsModel&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime)&&(identical(other.lastEditTime, lastEditTime) || other.lastEditTime == lastEditTime)&&(identical(other.lastSpinTime, lastSpinTime) || other.lastSpinTime == lastSpinTime)&&(identical(other.deletedTime, deletedTime) || other.deletedTime == deletedTime)&&(identical(other.spinCount, spinCount) || other.spinCount == spinCount)&&(identical(other.editCount, editCount) || other.editCount == editCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdTime,lastEditTime,lastSpinTime,deletedTime,spinCount,editCount);

@override
String toString() {
  return 'SpinnerStatsModel(createdTime: $createdTime, lastEditTime: $lastEditTime, lastSpinTime: $lastSpinTime, deletedTime: $deletedTime, spinCount: $spinCount, editCount: $editCount)';
}


}

/// @nodoc
abstract mixin class $SpinnerStatsModelCopyWith<$Res>  {
  factory $SpinnerStatsModelCopyWith(SpinnerStatsModel value, $Res Function(SpinnerStatsModel) _then) = _$SpinnerStatsModelCopyWithImpl;
@useResult
$Res call({
 int? createdTime, int? lastEditTime, int? lastSpinTime, int? deletedTime, int spinCount, int editCount
});




}
/// @nodoc
class _$SpinnerStatsModelCopyWithImpl<$Res>
    implements $SpinnerStatsModelCopyWith<$Res> {
  _$SpinnerStatsModelCopyWithImpl(this._self, this._then);

  final SpinnerStatsModel _self;
  final $Res Function(SpinnerStatsModel) _then;

/// Create a copy of SpinnerStatsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdTime = freezed,Object? lastEditTime = freezed,Object? lastSpinTime = freezed,Object? deletedTime = freezed,Object? spinCount = null,Object? editCount = null,}) {
  return _then(_self.copyWith(
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


/// Adds pattern-matching-related methods to [SpinnerStatsModel].
extension SpinnerStatsModelPatterns on SpinnerStatsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpinnerStatsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpinnerStatsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpinnerStatsModel value)  $default,){
final _that = this;
switch (_that) {
case _SpinnerStatsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpinnerStatsModel value)?  $default,){
final _that = this;
switch (_that) {
case _SpinnerStatsModel() when $default != null:
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
case _SpinnerStatsModel() when $default != null:
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
case _SpinnerStatsModel():
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
case _SpinnerStatsModel() when $default != null:
return $default(_that.createdTime,_that.lastEditTime,_that.lastSpinTime,_that.deletedTime,_that.spinCount,_that.editCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpinnerStatsModel extends SpinnerStatsModel {
   _SpinnerStatsModel({final  int? createdTime, this.lastEditTime, this.lastSpinTime, this.deletedTime, this.spinCount = 0, this.editCount = 0}): super._(createdTime: createdTime);
  factory _SpinnerStatsModel.fromJson(Map<String, dynamic> json) => _$SpinnerStatsModelFromJson(json);

@override final  int? lastEditTime;
@override final  int? lastSpinTime;
@override final  int? deletedTime;
@override@JsonKey() final  int spinCount;
@override@JsonKey() final  int editCount;

/// Create a copy of SpinnerStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpinnerStatsModelCopyWith<_SpinnerStatsModel> get copyWith => __$SpinnerStatsModelCopyWithImpl<_SpinnerStatsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpinnerStatsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpinnerStatsModel&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime)&&(identical(other.lastEditTime, lastEditTime) || other.lastEditTime == lastEditTime)&&(identical(other.lastSpinTime, lastSpinTime) || other.lastSpinTime == lastSpinTime)&&(identical(other.deletedTime, deletedTime) || other.deletedTime == deletedTime)&&(identical(other.spinCount, spinCount) || other.spinCount == spinCount)&&(identical(other.editCount, editCount) || other.editCount == editCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdTime,lastEditTime,lastSpinTime,deletedTime,spinCount,editCount);

@override
String toString() {
  return 'SpinnerStatsModel(createdTime: $createdTime, lastEditTime: $lastEditTime, lastSpinTime: $lastSpinTime, deletedTime: $deletedTime, spinCount: $spinCount, editCount: $editCount)';
}


}

/// @nodoc
abstract mixin class _$SpinnerStatsModelCopyWith<$Res> implements $SpinnerStatsModelCopyWith<$Res> {
  factory _$SpinnerStatsModelCopyWith(_SpinnerStatsModel value, $Res Function(_SpinnerStatsModel) _then) = __$SpinnerStatsModelCopyWithImpl;
@override @useResult
$Res call({
 int? createdTime, int? lastEditTime, int? lastSpinTime, int? deletedTime, int spinCount, int editCount
});




}
/// @nodoc
class __$SpinnerStatsModelCopyWithImpl<$Res>
    implements _$SpinnerStatsModelCopyWith<$Res> {
  __$SpinnerStatsModelCopyWithImpl(this._self, this._then);

  final _SpinnerStatsModel _self;
  final $Res Function(_SpinnerStatsModel) _then;

/// Create a copy of SpinnerStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdTime = freezed,Object? lastEditTime = freezed,Object? lastSpinTime = freezed,Object? deletedTime = freezed,Object? spinCount = null,Object? editCount = null,}) {
  return _then(_SpinnerStatsModel(
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
