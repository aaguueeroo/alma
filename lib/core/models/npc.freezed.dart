// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'npc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Npc {

 String get id; String get name; NpcRole get role; List<TraitType> get visibleTraits; List<TraitType> get hiddenTraits; double get compatibilityFactor; String? get relationshipTypeId; int? get age; Gender? get gender; Pronoun? get pronoun;/// Optional. Use only for clear familial roles (e.g. Mother, Brother) or
/// nicknames earned in the relationship. Not for relationship descriptions
/// like "Neighborhood Friend"; use [name] for those.
 String? get alias; String? get jobId; String? get country; bool get isAlive;
/// Create a copy of Npc
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NpcCopyWith<Npc> get copyWith => _$NpcCopyWithImpl<Npc>(this as Npc, _$identity);

  /// Serializes this Npc to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Npc&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.visibleTraits, visibleTraits)&&const DeepCollectionEquality().equals(other.hiddenTraits, hiddenTraits)&&(identical(other.compatibilityFactor, compatibilityFactor) || other.compatibilityFactor == compatibilityFactor)&&(identical(other.relationshipTypeId, relationshipTypeId) || other.relationshipTypeId == relationshipTypeId)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.pronoun, pronoun) || other.pronoun == pronoun)&&(identical(other.alias, alias) || other.alias == alias)&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.country, country) || other.country == country)&&(identical(other.isAlive, isAlive) || other.isAlive == isAlive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,role,const DeepCollectionEquality().hash(visibleTraits),const DeepCollectionEquality().hash(hiddenTraits),compatibilityFactor,relationshipTypeId,age,gender,pronoun,alias,jobId,country,isAlive);

@override
String toString() {
  return 'Npc(id: $id, name: $name, role: $role, visibleTraits: $visibleTraits, hiddenTraits: $hiddenTraits, compatibilityFactor: $compatibilityFactor, relationshipTypeId: $relationshipTypeId, age: $age, gender: $gender, pronoun: $pronoun, alias: $alias, jobId: $jobId, country: $country, isAlive: $isAlive)';
}


}

/// @nodoc
abstract mixin class $NpcCopyWith<$Res>  {
  factory $NpcCopyWith(Npc value, $Res Function(Npc) _then) = _$NpcCopyWithImpl;
@useResult
$Res call({
 String id, String name, NpcRole role, List<TraitType> visibleTraits, List<TraitType> hiddenTraits, double compatibilityFactor, String? relationshipTypeId, int? age, Gender? gender, Pronoun? pronoun, String? alias, String? jobId, String? country, bool isAlive
});




}
/// @nodoc
class _$NpcCopyWithImpl<$Res>
    implements $NpcCopyWith<$Res> {
  _$NpcCopyWithImpl(this._self, this._then);

  final Npc _self;
  final $Res Function(Npc) _then;

/// Create a copy of Npc
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? role = null,Object? visibleTraits = null,Object? hiddenTraits = null,Object? compatibilityFactor = null,Object? relationshipTypeId = freezed,Object? age = freezed,Object? gender = freezed,Object? pronoun = freezed,Object? alias = freezed,Object? jobId = freezed,Object? country = freezed,Object? isAlive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as NpcRole,visibleTraits: null == visibleTraits ? _self.visibleTraits : visibleTraits // ignore: cast_nullable_to_non_nullable
as List<TraitType>,hiddenTraits: null == hiddenTraits ? _self.hiddenTraits : hiddenTraits // ignore: cast_nullable_to_non_nullable
as List<TraitType>,compatibilityFactor: null == compatibilityFactor ? _self.compatibilityFactor : compatibilityFactor // ignore: cast_nullable_to_non_nullable
as double,relationshipTypeId: freezed == relationshipTypeId ? _self.relationshipTypeId : relationshipTypeId // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,pronoun: freezed == pronoun ? _self.pronoun : pronoun // ignore: cast_nullable_to_non_nullable
as Pronoun?,alias: freezed == alias ? _self.alias : alias // ignore: cast_nullable_to_non_nullable
as String?,jobId: freezed == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,isAlive: null == isAlive ? _self.isAlive : isAlive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Npc].
extension NpcPatterns on Npc {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Npc value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Npc() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Npc value)  $default,){
final _that = this;
switch (_that) {
case _Npc():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Npc value)?  $default,){
final _that = this;
switch (_that) {
case _Npc() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  NpcRole role,  List<TraitType> visibleTraits,  List<TraitType> hiddenTraits,  double compatibilityFactor,  String? relationshipTypeId,  int? age,  Gender? gender,  Pronoun? pronoun,  String? alias,  String? jobId,  String? country,  bool isAlive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Npc() when $default != null:
return $default(_that.id,_that.name,_that.role,_that.visibleTraits,_that.hiddenTraits,_that.compatibilityFactor,_that.relationshipTypeId,_that.age,_that.gender,_that.pronoun,_that.alias,_that.jobId,_that.country,_that.isAlive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  NpcRole role,  List<TraitType> visibleTraits,  List<TraitType> hiddenTraits,  double compatibilityFactor,  String? relationshipTypeId,  int? age,  Gender? gender,  Pronoun? pronoun,  String? alias,  String? jobId,  String? country,  bool isAlive)  $default,) {final _that = this;
switch (_that) {
case _Npc():
return $default(_that.id,_that.name,_that.role,_that.visibleTraits,_that.hiddenTraits,_that.compatibilityFactor,_that.relationshipTypeId,_that.age,_that.gender,_that.pronoun,_that.alias,_that.jobId,_that.country,_that.isAlive);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  NpcRole role,  List<TraitType> visibleTraits,  List<TraitType> hiddenTraits,  double compatibilityFactor,  String? relationshipTypeId,  int? age,  Gender? gender,  Pronoun? pronoun,  String? alias,  String? jobId,  String? country,  bool isAlive)?  $default,) {final _that = this;
switch (_that) {
case _Npc() when $default != null:
return $default(_that.id,_that.name,_that.role,_that.visibleTraits,_that.hiddenTraits,_that.compatibilityFactor,_that.relationshipTypeId,_that.age,_that.gender,_that.pronoun,_that.alias,_that.jobId,_that.country,_that.isAlive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Npc extends Npc {
  const _Npc({required this.id, required this.name, required this.role, final  List<TraitType> visibleTraits = const [], final  List<TraitType> hiddenTraits = const [], this.compatibilityFactor = 0.5, this.relationshipTypeId, this.age, this.gender, this.pronoun, this.alias, this.jobId, this.country, this.isAlive = true}): _visibleTraits = visibleTraits,_hiddenTraits = hiddenTraits,super._();
  factory _Npc.fromJson(Map<String, dynamic> json) => _$NpcFromJson(json);

@override final  String id;
@override final  String name;
@override final  NpcRole role;
 final  List<TraitType> _visibleTraits;
@override@JsonKey() List<TraitType> get visibleTraits {
  if (_visibleTraits is EqualUnmodifiableListView) return _visibleTraits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visibleTraits);
}

 final  List<TraitType> _hiddenTraits;
@override@JsonKey() List<TraitType> get hiddenTraits {
  if (_hiddenTraits is EqualUnmodifiableListView) return _hiddenTraits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hiddenTraits);
}

@override@JsonKey() final  double compatibilityFactor;
@override final  String? relationshipTypeId;
@override final  int? age;
@override final  Gender? gender;
@override final  Pronoun? pronoun;
/// Optional. Use only for clear familial roles (e.g. Mother, Brother) or
/// nicknames earned in the relationship. Not for relationship descriptions
/// like "Neighborhood Friend"; use [name] for those.
@override final  String? alias;
@override final  String? jobId;
@override final  String? country;
@override@JsonKey() final  bool isAlive;

/// Create a copy of Npc
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NpcCopyWith<_Npc> get copyWith => __$NpcCopyWithImpl<_Npc>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NpcToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Npc&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other._visibleTraits, _visibleTraits)&&const DeepCollectionEquality().equals(other._hiddenTraits, _hiddenTraits)&&(identical(other.compatibilityFactor, compatibilityFactor) || other.compatibilityFactor == compatibilityFactor)&&(identical(other.relationshipTypeId, relationshipTypeId) || other.relationshipTypeId == relationshipTypeId)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.pronoun, pronoun) || other.pronoun == pronoun)&&(identical(other.alias, alias) || other.alias == alias)&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.country, country) || other.country == country)&&(identical(other.isAlive, isAlive) || other.isAlive == isAlive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,role,const DeepCollectionEquality().hash(_visibleTraits),const DeepCollectionEquality().hash(_hiddenTraits),compatibilityFactor,relationshipTypeId,age,gender,pronoun,alias,jobId,country,isAlive);

@override
String toString() {
  return 'Npc(id: $id, name: $name, role: $role, visibleTraits: $visibleTraits, hiddenTraits: $hiddenTraits, compatibilityFactor: $compatibilityFactor, relationshipTypeId: $relationshipTypeId, age: $age, gender: $gender, pronoun: $pronoun, alias: $alias, jobId: $jobId, country: $country, isAlive: $isAlive)';
}


}

/// @nodoc
abstract mixin class _$NpcCopyWith<$Res> implements $NpcCopyWith<$Res> {
  factory _$NpcCopyWith(_Npc value, $Res Function(_Npc) _then) = __$NpcCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, NpcRole role, List<TraitType> visibleTraits, List<TraitType> hiddenTraits, double compatibilityFactor, String? relationshipTypeId, int? age, Gender? gender, Pronoun? pronoun, String? alias, String? jobId, String? country, bool isAlive
});




}
/// @nodoc
class __$NpcCopyWithImpl<$Res>
    implements _$NpcCopyWith<$Res> {
  __$NpcCopyWithImpl(this._self, this._then);

  final _Npc _self;
  final $Res Function(_Npc) _then;

/// Create a copy of Npc
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? role = null,Object? visibleTraits = null,Object? hiddenTraits = null,Object? compatibilityFactor = null,Object? relationshipTypeId = freezed,Object? age = freezed,Object? gender = freezed,Object? pronoun = freezed,Object? alias = freezed,Object? jobId = freezed,Object? country = freezed,Object? isAlive = null,}) {
  return _then(_Npc(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as NpcRole,visibleTraits: null == visibleTraits ? _self._visibleTraits : visibleTraits // ignore: cast_nullable_to_non_nullable
as List<TraitType>,hiddenTraits: null == hiddenTraits ? _self._hiddenTraits : hiddenTraits // ignore: cast_nullable_to_non_nullable
as List<TraitType>,compatibilityFactor: null == compatibilityFactor ? _self.compatibilityFactor : compatibilityFactor // ignore: cast_nullable_to_non_nullable
as double,relationshipTypeId: freezed == relationshipTypeId ? _self.relationshipTypeId : relationshipTypeId // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,pronoun: freezed == pronoun ? _self.pronoun : pronoun // ignore: cast_nullable_to_non_nullable
as Pronoun?,alias: freezed == alias ? _self.alias : alias // ignore: cast_nullable_to_non_nullable
as String?,jobId: freezed == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,isAlive: null == isAlive ? _self.isAlive : isAlive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
