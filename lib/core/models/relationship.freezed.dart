// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relationship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Relationship {

 Npc get npc; int get value; int get discoveredTraitCount;
/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelationshipCopyWith<Relationship> get copyWith => _$RelationshipCopyWithImpl<Relationship>(this as Relationship, _$identity);

  /// Serializes this Relationship to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Relationship&&(identical(other.npc, npc) || other.npc == npc)&&(identical(other.value, value) || other.value == value)&&(identical(other.discoveredTraitCount, discoveredTraitCount) || other.discoveredTraitCount == discoveredTraitCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,npc,value,discoveredTraitCount);

@override
String toString() {
  return 'Relationship(npc: $npc, value: $value, discoveredTraitCount: $discoveredTraitCount)';
}


}

/// @nodoc
abstract mixin class $RelationshipCopyWith<$Res>  {
  factory $RelationshipCopyWith(Relationship value, $Res Function(Relationship) _then) = _$RelationshipCopyWithImpl;
@useResult
$Res call({
 Npc npc, int value, int discoveredTraitCount
});


$NpcCopyWith<$Res> get npc;

}
/// @nodoc
class _$RelationshipCopyWithImpl<$Res>
    implements $RelationshipCopyWith<$Res> {
  _$RelationshipCopyWithImpl(this._self, this._then);

  final Relationship _self;
  final $Res Function(Relationship) _then;

/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? npc = null,Object? value = null,Object? discoveredTraitCount = null,}) {
  return _then(_self.copyWith(
npc: null == npc ? _self.npc : npc // ignore: cast_nullable_to_non_nullable
as Npc,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,discoveredTraitCount: null == discoveredTraitCount ? _self.discoveredTraitCount : discoveredTraitCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NpcCopyWith<$Res> get npc {
  
  return $NpcCopyWith<$Res>(_self.npc, (value) {
    return _then(_self.copyWith(npc: value));
  });
}
}


/// Adds pattern-matching-related methods to [Relationship].
extension RelationshipPatterns on Relationship {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Relationship value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Relationship() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Relationship value)  $default,){
final _that = this;
switch (_that) {
case _Relationship():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Relationship value)?  $default,){
final _that = this;
switch (_that) {
case _Relationship() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Npc npc,  int value,  int discoveredTraitCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Relationship() when $default != null:
return $default(_that.npc,_that.value,_that.discoveredTraitCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Npc npc,  int value,  int discoveredTraitCount)  $default,) {final _that = this;
switch (_that) {
case _Relationship():
return $default(_that.npc,_that.value,_that.discoveredTraitCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Npc npc,  int value,  int discoveredTraitCount)?  $default,) {final _that = this;
switch (_that) {
case _Relationship() when $default != null:
return $default(_that.npc,_that.value,_that.discoveredTraitCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Relationship implements Relationship {
  const _Relationship({required this.npc, this.value = kDefaultRelationshipValue, this.discoveredTraitCount = 0});
  factory _Relationship.fromJson(Map<String, dynamic> json) => _$RelationshipFromJson(json);

@override final  Npc npc;
@override@JsonKey() final  int value;
@override@JsonKey() final  int discoveredTraitCount;

/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelationshipCopyWith<_Relationship> get copyWith => __$RelationshipCopyWithImpl<_Relationship>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelationshipToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Relationship&&(identical(other.npc, npc) || other.npc == npc)&&(identical(other.value, value) || other.value == value)&&(identical(other.discoveredTraitCount, discoveredTraitCount) || other.discoveredTraitCount == discoveredTraitCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,npc,value,discoveredTraitCount);

@override
String toString() {
  return 'Relationship(npc: $npc, value: $value, discoveredTraitCount: $discoveredTraitCount)';
}


}

/// @nodoc
abstract mixin class _$RelationshipCopyWith<$Res> implements $RelationshipCopyWith<$Res> {
  factory _$RelationshipCopyWith(_Relationship value, $Res Function(_Relationship) _then) = __$RelationshipCopyWithImpl;
@override @useResult
$Res call({
 Npc npc, int value, int discoveredTraitCount
});


@override $NpcCopyWith<$Res> get npc;

}
/// @nodoc
class __$RelationshipCopyWithImpl<$Res>
    implements _$RelationshipCopyWith<$Res> {
  __$RelationshipCopyWithImpl(this._self, this._then);

  final _Relationship _self;
  final $Res Function(_Relationship) _then;

/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? npc = null,Object? value = null,Object? discoveredTraitCount = null,}) {
  return _then(_Relationship(
npc: null == npc ? _self.npc : npc // ignore: cast_nullable_to_non_nullable
as Npc,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,discoveredTraitCount: null == discoveredTraitCount ? _self.discoveredTraitCount : discoveredTraitCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NpcCopyWith<$Res> get npc {
  
  return $NpcCopyWith<$Res>(_self.npc, (value) {
    return _then(_self.copyWith(npc: value));
  });
}
}

// dart format on
