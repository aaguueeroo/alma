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

 Npc get npc; int get value; int get discoveredTraitCount; String? get relationshipTypeId; RelationshipState get metrics; bool get isActive; bool get cohabiting; List<String> get usedActionIds; List<String> get usedActionIdsThisYear; List<String> get actionIdsThisYear; int? get metAt;
/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelationshipCopyWith<Relationship> get copyWith => _$RelationshipCopyWithImpl<Relationship>(this as Relationship, _$identity);

  /// Serializes this Relationship to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Relationship&&(identical(other.npc, npc) || other.npc == npc)&&(identical(other.value, value) || other.value == value)&&(identical(other.discoveredTraitCount, discoveredTraitCount) || other.discoveredTraitCount == discoveredTraitCount)&&(identical(other.relationshipTypeId, relationshipTypeId) || other.relationshipTypeId == relationshipTypeId)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.cohabiting, cohabiting) || other.cohabiting == cohabiting)&&const DeepCollectionEquality().equals(other.usedActionIds, usedActionIds)&&const DeepCollectionEquality().equals(other.usedActionIdsThisYear, usedActionIdsThisYear)&&const DeepCollectionEquality().equals(other.actionIdsThisYear, actionIdsThisYear)&&(identical(other.metAt, metAt) || other.metAt == metAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,npc,value,discoveredTraitCount,relationshipTypeId,metrics,isActive,cohabiting,const DeepCollectionEquality().hash(usedActionIds),const DeepCollectionEquality().hash(usedActionIdsThisYear),const DeepCollectionEquality().hash(actionIdsThisYear),metAt);

@override
String toString() {
  return 'Relationship(npc: $npc, value: $value, discoveredTraitCount: $discoveredTraitCount, relationshipTypeId: $relationshipTypeId, metrics: $metrics, isActive: $isActive, cohabiting: $cohabiting, usedActionIds: $usedActionIds, usedActionIdsThisYear: $usedActionIdsThisYear, actionIdsThisYear: $actionIdsThisYear, metAt: $metAt)';
}


}

/// @nodoc
abstract mixin class $RelationshipCopyWith<$Res>  {
  factory $RelationshipCopyWith(Relationship value, $Res Function(Relationship) _then) = _$RelationshipCopyWithImpl;
@useResult
$Res call({
 Npc npc, int value, int discoveredTraitCount, String? relationshipTypeId, RelationshipState metrics, bool isActive, bool cohabiting, List<String> usedActionIds, List<String> usedActionIdsThisYear, List<String> actionIdsThisYear, int? metAt
});


$NpcCopyWith<$Res> get npc;$RelationshipStateCopyWith<$Res> get metrics;

}
/// @nodoc
class _$RelationshipCopyWithImpl<$Res>
    implements $RelationshipCopyWith<$Res> {
  _$RelationshipCopyWithImpl(this._self, this._then);

  final Relationship _self;
  final $Res Function(Relationship) _then;

/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? npc = null,Object? value = null,Object? discoveredTraitCount = null,Object? relationshipTypeId = freezed,Object? metrics = null,Object? isActive = null,Object? cohabiting = null,Object? usedActionIds = null,Object? usedActionIdsThisYear = null,Object? actionIdsThisYear = null,Object? metAt = freezed,}) {
  return _then(_self.copyWith(
npc: null == npc ? _self.npc : npc // ignore: cast_nullable_to_non_nullable
as Npc,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,discoveredTraitCount: null == discoveredTraitCount ? _self.discoveredTraitCount : discoveredTraitCount // ignore: cast_nullable_to_non_nullable
as int,relationshipTypeId: freezed == relationshipTypeId ? _self.relationshipTypeId : relationshipTypeId // ignore: cast_nullable_to_non_nullable
as String?,metrics: null == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as RelationshipState,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,cohabiting: null == cohabiting ? _self.cohabiting : cohabiting // ignore: cast_nullable_to_non_nullable
as bool,usedActionIds: null == usedActionIds ? _self.usedActionIds : usedActionIds // ignore: cast_nullable_to_non_nullable
as List<String>,usedActionIdsThisYear: null == usedActionIdsThisYear ? _self.usedActionIdsThisYear : usedActionIdsThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,actionIdsThisYear: null == actionIdsThisYear ? _self.actionIdsThisYear : actionIdsThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,metAt: freezed == metAt ? _self.metAt : metAt // ignore: cast_nullable_to_non_nullable
as int?,
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
}/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RelationshipStateCopyWith<$Res> get metrics {
  
  return $RelationshipStateCopyWith<$Res>(_self.metrics, (value) {
    return _then(_self.copyWith(metrics: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Npc npc,  int value,  int discoveredTraitCount,  String? relationshipTypeId,  RelationshipState metrics,  bool isActive,  bool cohabiting,  List<String> usedActionIds,  List<String> usedActionIdsThisYear,  List<String> actionIdsThisYear,  int? metAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Relationship() when $default != null:
return $default(_that.npc,_that.value,_that.discoveredTraitCount,_that.relationshipTypeId,_that.metrics,_that.isActive,_that.cohabiting,_that.usedActionIds,_that.usedActionIdsThisYear,_that.actionIdsThisYear,_that.metAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Npc npc,  int value,  int discoveredTraitCount,  String? relationshipTypeId,  RelationshipState metrics,  bool isActive,  bool cohabiting,  List<String> usedActionIds,  List<String> usedActionIdsThisYear,  List<String> actionIdsThisYear,  int? metAt)  $default,) {final _that = this;
switch (_that) {
case _Relationship():
return $default(_that.npc,_that.value,_that.discoveredTraitCount,_that.relationshipTypeId,_that.metrics,_that.isActive,_that.cohabiting,_that.usedActionIds,_that.usedActionIdsThisYear,_that.actionIdsThisYear,_that.metAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Npc npc,  int value,  int discoveredTraitCount,  String? relationshipTypeId,  RelationshipState metrics,  bool isActive,  bool cohabiting,  List<String> usedActionIds,  List<String> usedActionIdsThisYear,  List<String> actionIdsThisYear,  int? metAt)?  $default,) {final _that = this;
switch (_that) {
case _Relationship() when $default != null:
return $default(_that.npc,_that.value,_that.discoveredTraitCount,_that.relationshipTypeId,_that.metrics,_that.isActive,_that.cohabiting,_that.usedActionIds,_that.usedActionIdsThisYear,_that.actionIdsThisYear,_that.metAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Relationship extends Relationship {
  const _Relationship({required this.npc, this.value = kDefaultRelationshipValue, this.discoveredTraitCount = 0, this.relationshipTypeId, this.metrics = const RelationshipState(), this.isActive = true, this.cohabiting = false, final  List<String> usedActionIds = const [], final  List<String> usedActionIdsThisYear = const [], final  List<String> actionIdsThisYear = const [], this.metAt}): _usedActionIds = usedActionIds,_usedActionIdsThisYear = usedActionIdsThisYear,_actionIdsThisYear = actionIdsThisYear,super._();
  factory _Relationship.fromJson(Map<String, dynamic> json) => _$RelationshipFromJson(json);

@override final  Npc npc;
@override@JsonKey() final  int value;
@override@JsonKey() final  int discoveredTraitCount;
@override final  String? relationshipTypeId;
@override@JsonKey() final  RelationshipState metrics;
@override@JsonKey() final  bool isActive;
@override@JsonKey() final  bool cohabiting;
 final  List<String> _usedActionIds;
@override@JsonKey() List<String> get usedActionIds {
  if (_usedActionIds is EqualUnmodifiableListView) return _usedActionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_usedActionIds);
}

 final  List<String> _usedActionIdsThisYear;
@override@JsonKey() List<String> get usedActionIdsThisYear {
  if (_usedActionIdsThisYear is EqualUnmodifiableListView) return _usedActionIdsThisYear;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_usedActionIdsThisYear);
}

 final  List<String> _actionIdsThisYear;
@override@JsonKey() List<String> get actionIdsThisYear {
  if (_actionIdsThisYear is EqualUnmodifiableListView) return _actionIdsThisYear;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_actionIdsThisYear);
}

@override final  int? metAt;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Relationship&&(identical(other.npc, npc) || other.npc == npc)&&(identical(other.value, value) || other.value == value)&&(identical(other.discoveredTraitCount, discoveredTraitCount) || other.discoveredTraitCount == discoveredTraitCount)&&(identical(other.relationshipTypeId, relationshipTypeId) || other.relationshipTypeId == relationshipTypeId)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.cohabiting, cohabiting) || other.cohabiting == cohabiting)&&const DeepCollectionEquality().equals(other._usedActionIds, _usedActionIds)&&const DeepCollectionEquality().equals(other._usedActionIdsThisYear, _usedActionIdsThisYear)&&const DeepCollectionEquality().equals(other._actionIdsThisYear, _actionIdsThisYear)&&(identical(other.metAt, metAt) || other.metAt == metAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,npc,value,discoveredTraitCount,relationshipTypeId,metrics,isActive,cohabiting,const DeepCollectionEquality().hash(_usedActionIds),const DeepCollectionEquality().hash(_usedActionIdsThisYear),const DeepCollectionEquality().hash(_actionIdsThisYear),metAt);

@override
String toString() {
  return 'Relationship(npc: $npc, value: $value, discoveredTraitCount: $discoveredTraitCount, relationshipTypeId: $relationshipTypeId, metrics: $metrics, isActive: $isActive, cohabiting: $cohabiting, usedActionIds: $usedActionIds, usedActionIdsThisYear: $usedActionIdsThisYear, actionIdsThisYear: $actionIdsThisYear, metAt: $metAt)';
}


}

/// @nodoc
abstract mixin class _$RelationshipCopyWith<$Res> implements $RelationshipCopyWith<$Res> {
  factory _$RelationshipCopyWith(_Relationship value, $Res Function(_Relationship) _then) = __$RelationshipCopyWithImpl;
@override @useResult
$Res call({
 Npc npc, int value, int discoveredTraitCount, String? relationshipTypeId, RelationshipState metrics, bool isActive, bool cohabiting, List<String> usedActionIds, List<String> usedActionIdsThisYear, List<String> actionIdsThisYear, int? metAt
});


@override $NpcCopyWith<$Res> get npc;@override $RelationshipStateCopyWith<$Res> get metrics;

}
/// @nodoc
class __$RelationshipCopyWithImpl<$Res>
    implements _$RelationshipCopyWith<$Res> {
  __$RelationshipCopyWithImpl(this._self, this._then);

  final _Relationship _self;
  final $Res Function(_Relationship) _then;

/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? npc = null,Object? value = null,Object? discoveredTraitCount = null,Object? relationshipTypeId = freezed,Object? metrics = null,Object? isActive = null,Object? cohabiting = null,Object? usedActionIds = null,Object? usedActionIdsThisYear = null,Object? actionIdsThisYear = null,Object? metAt = freezed,}) {
  return _then(_Relationship(
npc: null == npc ? _self.npc : npc // ignore: cast_nullable_to_non_nullable
as Npc,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,discoveredTraitCount: null == discoveredTraitCount ? _self.discoveredTraitCount : discoveredTraitCount // ignore: cast_nullable_to_non_nullable
as int,relationshipTypeId: freezed == relationshipTypeId ? _self.relationshipTypeId : relationshipTypeId // ignore: cast_nullable_to_non_nullable
as String?,metrics: null == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as RelationshipState,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,cohabiting: null == cohabiting ? _self.cohabiting : cohabiting // ignore: cast_nullable_to_non_nullable
as bool,usedActionIds: null == usedActionIds ? _self._usedActionIds : usedActionIds // ignore: cast_nullable_to_non_nullable
as List<String>,usedActionIdsThisYear: null == usedActionIdsThisYear ? _self._usedActionIdsThisYear : usedActionIdsThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,actionIdsThisYear: null == actionIdsThisYear ? _self._actionIdsThisYear : actionIdsThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,metAt: freezed == metAt ? _self.metAt : metAt // ignore: cast_nullable_to_non_nullable
as int?,
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
}/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RelationshipStateCopyWith<$Res> get metrics {
  
  return $RelationshipStateCopyWith<$Res>(_self.metrics, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}
}

// dart format on
