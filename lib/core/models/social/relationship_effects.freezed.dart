// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relationship_effects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RelationshipEffects {

 int get affection; int get trust; int get respect; int get attraction; int get conflict; int get reputation;
/// Create a copy of RelationshipEffects
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelationshipEffectsCopyWith<RelationshipEffects> get copyWith => _$RelationshipEffectsCopyWithImpl<RelationshipEffects>(this as RelationshipEffects, _$identity);

  /// Serializes this RelationshipEffects to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RelationshipEffects&&(identical(other.affection, affection) || other.affection == affection)&&(identical(other.trust, trust) || other.trust == trust)&&(identical(other.respect, respect) || other.respect == respect)&&(identical(other.attraction, attraction) || other.attraction == attraction)&&(identical(other.conflict, conflict) || other.conflict == conflict)&&(identical(other.reputation, reputation) || other.reputation == reputation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,affection,trust,respect,attraction,conflict,reputation);

@override
String toString() {
  return 'RelationshipEffects(affection: $affection, trust: $trust, respect: $respect, attraction: $attraction, conflict: $conflict, reputation: $reputation)';
}


}

/// @nodoc
abstract mixin class $RelationshipEffectsCopyWith<$Res>  {
  factory $RelationshipEffectsCopyWith(RelationshipEffects value, $Res Function(RelationshipEffects) _then) = _$RelationshipEffectsCopyWithImpl;
@useResult
$Res call({
 int affection, int trust, int respect, int attraction, int conflict, int reputation
});




}
/// @nodoc
class _$RelationshipEffectsCopyWithImpl<$Res>
    implements $RelationshipEffectsCopyWith<$Res> {
  _$RelationshipEffectsCopyWithImpl(this._self, this._then);

  final RelationshipEffects _self;
  final $Res Function(RelationshipEffects) _then;

/// Create a copy of RelationshipEffects
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? affection = null,Object? trust = null,Object? respect = null,Object? attraction = null,Object? conflict = null,Object? reputation = null,}) {
  return _then(_self.copyWith(
affection: null == affection ? _self.affection : affection // ignore: cast_nullable_to_non_nullable
as int,trust: null == trust ? _self.trust : trust // ignore: cast_nullable_to_non_nullable
as int,respect: null == respect ? _self.respect : respect // ignore: cast_nullable_to_non_nullable
as int,attraction: null == attraction ? _self.attraction : attraction // ignore: cast_nullable_to_non_nullable
as int,conflict: null == conflict ? _self.conflict : conflict // ignore: cast_nullable_to_non_nullable
as int,reputation: null == reputation ? _self.reputation : reputation // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RelationshipEffects].
extension RelationshipEffectsPatterns on RelationshipEffects {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RelationshipEffects value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RelationshipEffects() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RelationshipEffects value)  $default,){
final _that = this;
switch (_that) {
case _RelationshipEffects():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RelationshipEffects value)?  $default,){
final _that = this;
switch (_that) {
case _RelationshipEffects() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int affection,  int trust,  int respect,  int attraction,  int conflict,  int reputation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RelationshipEffects() when $default != null:
return $default(_that.affection,_that.trust,_that.respect,_that.attraction,_that.conflict,_that.reputation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int affection,  int trust,  int respect,  int attraction,  int conflict,  int reputation)  $default,) {final _that = this;
switch (_that) {
case _RelationshipEffects():
return $default(_that.affection,_that.trust,_that.respect,_that.attraction,_that.conflict,_that.reputation);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int affection,  int trust,  int respect,  int attraction,  int conflict,  int reputation)?  $default,) {final _that = this;
switch (_that) {
case _RelationshipEffects() when $default != null:
return $default(_that.affection,_that.trust,_that.respect,_that.attraction,_that.conflict,_that.reputation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RelationshipEffects implements RelationshipEffects {
  const _RelationshipEffects({this.affection = 0, this.trust = 0, this.respect = 0, this.attraction = 0, this.conflict = 0, this.reputation = 0});
  factory _RelationshipEffects.fromJson(Map<String, dynamic> json) => _$RelationshipEffectsFromJson(json);

@override@JsonKey() final  int affection;
@override@JsonKey() final  int trust;
@override@JsonKey() final  int respect;
@override@JsonKey() final  int attraction;
@override@JsonKey() final  int conflict;
@override@JsonKey() final  int reputation;

/// Create a copy of RelationshipEffects
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelationshipEffectsCopyWith<_RelationshipEffects> get copyWith => __$RelationshipEffectsCopyWithImpl<_RelationshipEffects>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelationshipEffectsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RelationshipEffects&&(identical(other.affection, affection) || other.affection == affection)&&(identical(other.trust, trust) || other.trust == trust)&&(identical(other.respect, respect) || other.respect == respect)&&(identical(other.attraction, attraction) || other.attraction == attraction)&&(identical(other.conflict, conflict) || other.conflict == conflict)&&(identical(other.reputation, reputation) || other.reputation == reputation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,affection,trust,respect,attraction,conflict,reputation);

@override
String toString() {
  return 'RelationshipEffects(affection: $affection, trust: $trust, respect: $respect, attraction: $attraction, conflict: $conflict, reputation: $reputation)';
}


}

/// @nodoc
abstract mixin class _$RelationshipEffectsCopyWith<$Res> implements $RelationshipEffectsCopyWith<$Res> {
  factory _$RelationshipEffectsCopyWith(_RelationshipEffects value, $Res Function(_RelationshipEffects) _then) = __$RelationshipEffectsCopyWithImpl;
@override @useResult
$Res call({
 int affection, int trust, int respect, int attraction, int conflict, int reputation
});




}
/// @nodoc
class __$RelationshipEffectsCopyWithImpl<$Res>
    implements _$RelationshipEffectsCopyWith<$Res> {
  __$RelationshipEffectsCopyWithImpl(this._self, this._then);

  final _RelationshipEffects _self;
  final $Res Function(_RelationshipEffects) _then;

/// Create a copy of RelationshipEffects
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? affection = null,Object? trust = null,Object? respect = null,Object? attraction = null,Object? conflict = null,Object? reputation = null,}) {
  return _then(_RelationshipEffects(
affection: null == affection ? _self.affection : affection // ignore: cast_nullable_to_non_nullable
as int,trust: null == trust ? _self.trust : trust // ignore: cast_nullable_to_non_nullable
as int,respect: null == respect ? _self.respect : respect // ignore: cast_nullable_to_non_nullable
as int,attraction: null == attraction ? _self.attraction : attraction // ignore: cast_nullable_to_non_nullable
as int,conflict: null == conflict ? _self.conflict : conflict // ignore: cast_nullable_to_non_nullable
as int,reputation: null == reputation ? _self.reputation : reputation // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
