// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SkillSet {

 int get intelligence; int get creativity; int get communication; int get emotionalStability; int get fitness;
/// Create a copy of SkillSet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkillSetCopyWith<SkillSet> get copyWith => _$SkillSetCopyWithImpl<SkillSet>(this as SkillSet, _$identity);

  /// Serializes this SkillSet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkillSet&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.creativity, creativity) || other.creativity == creativity)&&(identical(other.communication, communication) || other.communication == communication)&&(identical(other.emotionalStability, emotionalStability) || other.emotionalStability == emotionalStability)&&(identical(other.fitness, fitness) || other.fitness == fitness));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intelligence,creativity,communication,emotionalStability,fitness);

@override
String toString() {
  return 'SkillSet(intelligence: $intelligence, creativity: $creativity, communication: $communication, emotionalStability: $emotionalStability, fitness: $fitness)';
}


}

/// @nodoc
abstract mixin class $SkillSetCopyWith<$Res>  {
  factory $SkillSetCopyWith(SkillSet value, $Res Function(SkillSet) _then) = _$SkillSetCopyWithImpl;
@useResult
$Res call({
 int intelligence, int creativity, int communication, int emotionalStability, int fitness
});




}
/// @nodoc
class _$SkillSetCopyWithImpl<$Res>
    implements $SkillSetCopyWith<$Res> {
  _$SkillSetCopyWithImpl(this._self, this._then);

  final SkillSet _self;
  final $Res Function(SkillSet) _then;

/// Create a copy of SkillSet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intelligence = null,Object? creativity = null,Object? communication = null,Object? emotionalStability = null,Object? fitness = null,}) {
  return _then(_self.copyWith(
intelligence: null == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int,creativity: null == creativity ? _self.creativity : creativity // ignore: cast_nullable_to_non_nullable
as int,communication: null == communication ? _self.communication : communication // ignore: cast_nullable_to_non_nullable
as int,emotionalStability: null == emotionalStability ? _self.emotionalStability : emotionalStability // ignore: cast_nullable_to_non_nullable
as int,fitness: null == fitness ? _self.fitness : fitness // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SkillSet].
extension SkillSetPatterns on SkillSet {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkillSet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkillSet() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkillSet value)  $default,){
final _that = this;
switch (_that) {
case _SkillSet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkillSet value)?  $default,){
final _that = this;
switch (_that) {
case _SkillSet() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int intelligence,  int creativity,  int communication,  int emotionalStability,  int fitness)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkillSet() when $default != null:
return $default(_that.intelligence,_that.creativity,_that.communication,_that.emotionalStability,_that.fitness);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int intelligence,  int creativity,  int communication,  int emotionalStability,  int fitness)  $default,) {final _that = this;
switch (_that) {
case _SkillSet():
return $default(_that.intelligence,_that.creativity,_that.communication,_that.emotionalStability,_that.fitness);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int intelligence,  int creativity,  int communication,  int emotionalStability,  int fitness)?  $default,) {final _that = this;
switch (_that) {
case _SkillSet() when $default != null:
return $default(_that.intelligence,_that.creativity,_that.communication,_that.emotionalStability,_that.fitness);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SkillSet implements SkillSet {
  const _SkillSet({this.intelligence = kDefaultSkillValue, this.creativity = kDefaultSkillValue, this.communication = kDefaultSkillValue, this.emotionalStability = kDefaultSkillValue, this.fitness = kDefaultSkillValue});
  factory _SkillSet.fromJson(Map<String, dynamic> json) => _$SkillSetFromJson(json);

@override@JsonKey() final  int intelligence;
@override@JsonKey() final  int creativity;
@override@JsonKey() final  int communication;
@override@JsonKey() final  int emotionalStability;
@override@JsonKey() final  int fitness;

/// Create a copy of SkillSet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkillSetCopyWith<_SkillSet> get copyWith => __$SkillSetCopyWithImpl<_SkillSet>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SkillSetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkillSet&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.creativity, creativity) || other.creativity == creativity)&&(identical(other.communication, communication) || other.communication == communication)&&(identical(other.emotionalStability, emotionalStability) || other.emotionalStability == emotionalStability)&&(identical(other.fitness, fitness) || other.fitness == fitness));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,intelligence,creativity,communication,emotionalStability,fitness);

@override
String toString() {
  return 'SkillSet(intelligence: $intelligence, creativity: $creativity, communication: $communication, emotionalStability: $emotionalStability, fitness: $fitness)';
}


}

/// @nodoc
abstract mixin class _$SkillSetCopyWith<$Res> implements $SkillSetCopyWith<$Res> {
  factory _$SkillSetCopyWith(_SkillSet value, $Res Function(_SkillSet) _then) = __$SkillSetCopyWithImpl;
@override @useResult
$Res call({
 int intelligence, int creativity, int communication, int emotionalStability, int fitness
});




}
/// @nodoc
class __$SkillSetCopyWithImpl<$Res>
    implements _$SkillSetCopyWith<$Res> {
  __$SkillSetCopyWithImpl(this._self, this._then);

  final _SkillSet _self;
  final $Res Function(_SkillSet) _then;

/// Create a copy of SkillSet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intelligence = null,Object? creativity = null,Object? communication = null,Object? emotionalStability = null,Object? fitness = null,}) {
  return _then(_SkillSet(
intelligence: null == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int,creativity: null == creativity ? _self.creativity : creativity // ignore: cast_nullable_to_non_nullable
as int,communication: null == communication ? _self.communication : communication // ignore: cast_nullable_to_non_nullable
as int,emotionalStability: null == emotionalStability ? _self.emotionalStability : emotionalStability // ignore: cast_nullable_to_non_nullable
as int,fitness: null == fitness ? _self.fitness : fitness // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
