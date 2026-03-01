// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relationship_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RelationshipState {

 int get affection; int get trust; int get respect; int get attraction; int get conflict;
/// Create a copy of RelationshipState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelationshipStateCopyWith<RelationshipState> get copyWith => _$RelationshipStateCopyWithImpl<RelationshipState>(this as RelationshipState, _$identity);

  /// Serializes this RelationshipState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RelationshipState&&(identical(other.affection, affection) || other.affection == affection)&&(identical(other.trust, trust) || other.trust == trust)&&(identical(other.respect, respect) || other.respect == respect)&&(identical(other.attraction, attraction) || other.attraction == attraction)&&(identical(other.conflict, conflict) || other.conflict == conflict));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,affection,trust,respect,attraction,conflict);

@override
String toString() {
  return 'RelationshipState(affection: $affection, trust: $trust, respect: $respect, attraction: $attraction, conflict: $conflict)';
}


}

/// @nodoc
abstract mixin class $RelationshipStateCopyWith<$Res>  {
  factory $RelationshipStateCopyWith(RelationshipState value, $Res Function(RelationshipState) _then) = _$RelationshipStateCopyWithImpl;
@useResult
$Res call({
 int affection, int trust, int respect, int attraction, int conflict
});




}
/// @nodoc
class _$RelationshipStateCopyWithImpl<$Res>
    implements $RelationshipStateCopyWith<$Res> {
  _$RelationshipStateCopyWithImpl(this._self, this._then);

  final RelationshipState _self;
  final $Res Function(RelationshipState) _then;

/// Create a copy of RelationshipState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? affection = null,Object? trust = null,Object? respect = null,Object? attraction = null,Object? conflict = null,}) {
  return _then(_self.copyWith(
affection: null == affection ? _self.affection : affection // ignore: cast_nullable_to_non_nullable
as int,trust: null == trust ? _self.trust : trust // ignore: cast_nullable_to_non_nullable
as int,respect: null == respect ? _self.respect : respect // ignore: cast_nullable_to_non_nullable
as int,attraction: null == attraction ? _self.attraction : attraction // ignore: cast_nullable_to_non_nullable
as int,conflict: null == conflict ? _self.conflict : conflict // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RelationshipState].
extension RelationshipStatePatterns on RelationshipState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RelationshipState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RelationshipState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RelationshipState value)  $default,){
final _that = this;
switch (_that) {
case _RelationshipState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RelationshipState value)?  $default,){
final _that = this;
switch (_that) {
case _RelationshipState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int affection,  int trust,  int respect,  int attraction,  int conflict)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RelationshipState() when $default != null:
return $default(_that.affection,_that.trust,_that.respect,_that.attraction,_that.conflict);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int affection,  int trust,  int respect,  int attraction,  int conflict)  $default,) {final _that = this;
switch (_that) {
case _RelationshipState():
return $default(_that.affection,_that.trust,_that.respect,_that.attraction,_that.conflict);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int affection,  int trust,  int respect,  int attraction,  int conflict)?  $default,) {final _that = this;
switch (_that) {
case _RelationshipState() when $default != null:
return $default(_that.affection,_that.trust,_that.respect,_that.attraction,_that.conflict);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RelationshipState extends RelationshipState {
  const _RelationshipState({this.affection = 0, this.trust = 0, this.respect = 0, this.attraction = 0, this.conflict = 0}): super._();
  factory _RelationshipState.fromJson(Map<String, dynamic> json) => _$RelationshipStateFromJson(json);

@override@JsonKey() final  int affection;
@override@JsonKey() final  int trust;
@override@JsonKey() final  int respect;
@override@JsonKey() final  int attraction;
@override@JsonKey() final  int conflict;

/// Create a copy of RelationshipState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelationshipStateCopyWith<_RelationshipState> get copyWith => __$RelationshipStateCopyWithImpl<_RelationshipState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelationshipStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RelationshipState&&(identical(other.affection, affection) || other.affection == affection)&&(identical(other.trust, trust) || other.trust == trust)&&(identical(other.respect, respect) || other.respect == respect)&&(identical(other.attraction, attraction) || other.attraction == attraction)&&(identical(other.conflict, conflict) || other.conflict == conflict));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,affection,trust,respect,attraction,conflict);

@override
String toString() {
  return 'RelationshipState(affection: $affection, trust: $trust, respect: $respect, attraction: $attraction, conflict: $conflict)';
}


}

/// @nodoc
abstract mixin class _$RelationshipStateCopyWith<$Res> implements $RelationshipStateCopyWith<$Res> {
  factory _$RelationshipStateCopyWith(_RelationshipState value, $Res Function(_RelationshipState) _then) = __$RelationshipStateCopyWithImpl;
@override @useResult
$Res call({
 int affection, int trust, int respect, int attraction, int conflict
});




}
/// @nodoc
class __$RelationshipStateCopyWithImpl<$Res>
    implements _$RelationshipStateCopyWith<$Res> {
  __$RelationshipStateCopyWithImpl(this._self, this._then);

  final _RelationshipState _self;
  final $Res Function(_RelationshipState) _then;

/// Create a copy of RelationshipState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? affection = null,Object? trust = null,Object? respect = null,Object? attraction = null,Object? conflict = null,}) {
  return _then(_RelationshipState(
affection: null == affection ? _self.affection : affection // ignore: cast_nullable_to_non_nullable
as int,trust: null == trust ? _self.trust : trust // ignore: cast_nullable_to_non_nullable
as int,respect: null == respect ? _self.respect : respect // ignore: cast_nullable_to_non_nullable
as int,attraction: null == attraction ? _self.attraction : attraction // ignore: cast_nullable_to_non_nullable
as int,conflict: null == conflict ? _self.conflict : conflict // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
