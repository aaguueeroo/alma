// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'soul.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Soul {

 String get id; String get name; int get remainingLives; List<SoulSubject> get subjects; Map<String, int> get metaStats; DateTime get createdAt; String? get currentLifeId;
/// Create a copy of Soul
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SoulCopyWith<Soul> get copyWith => _$SoulCopyWithImpl<Soul>(this as Soul, _$identity);

  /// Serializes this Soul to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Soul&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.remainingLives, remainingLives) || other.remainingLives == remainingLives)&&const DeepCollectionEquality().equals(other.subjects, subjects)&&const DeepCollectionEquality().equals(other.metaStats, metaStats)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.currentLifeId, currentLifeId) || other.currentLifeId == currentLifeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,remainingLives,const DeepCollectionEquality().hash(subjects),const DeepCollectionEquality().hash(metaStats),createdAt,currentLifeId);

@override
String toString() {
  return 'Soul(id: $id, name: $name, remainingLives: $remainingLives, subjects: $subjects, metaStats: $metaStats, createdAt: $createdAt, currentLifeId: $currentLifeId)';
}


}

/// @nodoc
abstract mixin class $SoulCopyWith<$Res>  {
  factory $SoulCopyWith(Soul value, $Res Function(Soul) _then) = _$SoulCopyWithImpl;
@useResult
$Res call({
 String id, String name, int remainingLives, List<SoulSubject> subjects, Map<String, int> metaStats, DateTime createdAt, String? currentLifeId
});




}
/// @nodoc
class _$SoulCopyWithImpl<$Res>
    implements $SoulCopyWith<$Res> {
  _$SoulCopyWithImpl(this._self, this._then);

  final Soul _self;
  final $Res Function(Soul) _then;

/// Create a copy of Soul
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? remainingLives = null,Object? subjects = null,Object? metaStats = null,Object? createdAt = null,Object? currentLifeId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,remainingLives: null == remainingLives ? _self.remainingLives : remainingLives // ignore: cast_nullable_to_non_nullable
as int,subjects: null == subjects ? _self.subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<SoulSubject>,metaStats: null == metaStats ? _self.metaStats : metaStats // ignore: cast_nullable_to_non_nullable
as Map<String, int>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,currentLifeId: freezed == currentLifeId ? _self.currentLifeId : currentLifeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Soul].
extension SoulPatterns on Soul {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Soul value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Soul() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Soul value)  $default,){
final _that = this;
switch (_that) {
case _Soul():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Soul value)?  $default,){
final _that = this;
switch (_that) {
case _Soul() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  int remainingLives,  List<SoulSubject> subjects,  Map<String, int> metaStats,  DateTime createdAt,  String? currentLifeId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Soul() when $default != null:
return $default(_that.id,_that.name,_that.remainingLives,_that.subjects,_that.metaStats,_that.createdAt,_that.currentLifeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  int remainingLives,  List<SoulSubject> subjects,  Map<String, int> metaStats,  DateTime createdAt,  String? currentLifeId)  $default,) {final _that = this;
switch (_that) {
case _Soul():
return $default(_that.id,_that.name,_that.remainingLives,_that.subjects,_that.metaStats,_that.createdAt,_that.currentLifeId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  int remainingLives,  List<SoulSubject> subjects,  Map<String, int> metaStats,  DateTime createdAt,  String? currentLifeId)?  $default,) {final _that = this;
switch (_that) {
case _Soul() when $default != null:
return $default(_that.id,_that.name,_that.remainingLives,_that.subjects,_that.metaStats,_that.createdAt,_that.currentLifeId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Soul implements Soul {
  const _Soul({required this.id, required this.name, this.remainingLives = kDefaultMaxLives, required final  List<SoulSubject> subjects, final  Map<String, int> metaStats = const {}, required this.createdAt, this.currentLifeId}): _subjects = subjects,_metaStats = metaStats;
  factory _Soul.fromJson(Map<String, dynamic> json) => _$SoulFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  int remainingLives;
 final  List<SoulSubject> _subjects;
@override List<SoulSubject> get subjects {
  if (_subjects is EqualUnmodifiableListView) return _subjects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subjects);
}

 final  Map<String, int> _metaStats;
@override@JsonKey() Map<String, int> get metaStats {
  if (_metaStats is EqualUnmodifiableMapView) return _metaStats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metaStats);
}

@override final  DateTime createdAt;
@override final  String? currentLifeId;

/// Create a copy of Soul
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SoulCopyWith<_Soul> get copyWith => __$SoulCopyWithImpl<_Soul>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SoulToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Soul&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.remainingLives, remainingLives) || other.remainingLives == remainingLives)&&const DeepCollectionEquality().equals(other._subjects, _subjects)&&const DeepCollectionEquality().equals(other._metaStats, _metaStats)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.currentLifeId, currentLifeId) || other.currentLifeId == currentLifeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,remainingLives,const DeepCollectionEquality().hash(_subjects),const DeepCollectionEquality().hash(_metaStats),createdAt,currentLifeId);

@override
String toString() {
  return 'Soul(id: $id, name: $name, remainingLives: $remainingLives, subjects: $subjects, metaStats: $metaStats, createdAt: $createdAt, currentLifeId: $currentLifeId)';
}


}

/// @nodoc
abstract mixin class _$SoulCopyWith<$Res> implements $SoulCopyWith<$Res> {
  factory _$SoulCopyWith(_Soul value, $Res Function(_Soul) _then) = __$SoulCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int remainingLives, List<SoulSubject> subjects, Map<String, int> metaStats, DateTime createdAt, String? currentLifeId
});




}
/// @nodoc
class __$SoulCopyWithImpl<$Res>
    implements _$SoulCopyWith<$Res> {
  __$SoulCopyWithImpl(this._self, this._then);

  final _Soul _self;
  final $Res Function(_Soul) _then;

/// Create a copy of Soul
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? remainingLives = null,Object? subjects = null,Object? metaStats = null,Object? createdAt = null,Object? currentLifeId = freezed,}) {
  return _then(_Soul(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,remainingLives: null == remainingLives ? _self.remainingLives : remainingLives // ignore: cast_nullable_to_non_nullable
as int,subjects: null == subjects ? _self._subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<SoulSubject>,metaStats: null == metaStats ? _self._metaStats : metaStats // ignore: cast_nullable_to_non_nullable
as Map<String, int>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,currentLifeId: freezed == currentLifeId ? _self.currentLifeId : currentLifeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
