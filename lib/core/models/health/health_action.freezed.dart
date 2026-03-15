// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HealthAction {

 String get id; String get name; String get description; HealthActionType get type; int get timeCost; double get physicalHealthEffect; double get mentalHealthEffect; List<String> get canDiagnoseConditionIds; List<String> get canTreatConditionIds; List<AccessCondition> get conditions; List<String> get requiresDiagnosedConditionIds; Map<String, double> get treatmentSuccessRateByConditionId;
/// Create a copy of HealthAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthActionCopyWith<HealthAction> get copyWith => _$HealthActionCopyWithImpl<HealthAction>(this as HealthAction, _$identity);

  /// Serializes this HealthAction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthAction&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type)&&(identical(other.timeCost, timeCost) || other.timeCost == timeCost)&&(identical(other.physicalHealthEffect, physicalHealthEffect) || other.physicalHealthEffect == physicalHealthEffect)&&(identical(other.mentalHealthEffect, mentalHealthEffect) || other.mentalHealthEffect == mentalHealthEffect)&&const DeepCollectionEquality().equals(other.canDiagnoseConditionIds, canDiagnoseConditionIds)&&const DeepCollectionEquality().equals(other.canTreatConditionIds, canTreatConditionIds)&&const DeepCollectionEquality().equals(other.conditions, conditions)&&const DeepCollectionEquality().equals(other.requiresDiagnosedConditionIds, requiresDiagnosedConditionIds)&&const DeepCollectionEquality().equals(other.treatmentSuccessRateByConditionId, treatmentSuccessRateByConditionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,type,timeCost,physicalHealthEffect,mentalHealthEffect,const DeepCollectionEquality().hash(canDiagnoseConditionIds),const DeepCollectionEquality().hash(canTreatConditionIds),const DeepCollectionEquality().hash(conditions),const DeepCollectionEquality().hash(requiresDiagnosedConditionIds),const DeepCollectionEquality().hash(treatmentSuccessRateByConditionId));

@override
String toString() {
  return 'HealthAction(id: $id, name: $name, description: $description, type: $type, timeCost: $timeCost, physicalHealthEffect: $physicalHealthEffect, mentalHealthEffect: $mentalHealthEffect, canDiagnoseConditionIds: $canDiagnoseConditionIds, canTreatConditionIds: $canTreatConditionIds, conditions: $conditions, requiresDiagnosedConditionIds: $requiresDiagnosedConditionIds, treatmentSuccessRateByConditionId: $treatmentSuccessRateByConditionId)';
}


}

/// @nodoc
abstract mixin class $HealthActionCopyWith<$Res>  {
  factory $HealthActionCopyWith(HealthAction value, $Res Function(HealthAction) _then) = _$HealthActionCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, HealthActionType type, int timeCost, double physicalHealthEffect, double mentalHealthEffect, List<String> canDiagnoseConditionIds, List<String> canTreatConditionIds, List<AccessCondition> conditions, List<String> requiresDiagnosedConditionIds, Map<String, double> treatmentSuccessRateByConditionId
});




}
/// @nodoc
class _$HealthActionCopyWithImpl<$Res>
    implements $HealthActionCopyWith<$Res> {
  _$HealthActionCopyWithImpl(this._self, this._then);

  final HealthAction _self;
  final $Res Function(HealthAction) _then;

/// Create a copy of HealthAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? type = null,Object? timeCost = null,Object? physicalHealthEffect = null,Object? mentalHealthEffect = null,Object? canDiagnoseConditionIds = null,Object? canTreatConditionIds = null,Object? conditions = null,Object? requiresDiagnosedConditionIds = null,Object? treatmentSuccessRateByConditionId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as HealthActionType,timeCost: null == timeCost ? _self.timeCost : timeCost // ignore: cast_nullable_to_non_nullable
as int,physicalHealthEffect: null == physicalHealthEffect ? _self.physicalHealthEffect : physicalHealthEffect // ignore: cast_nullable_to_non_nullable
as double,mentalHealthEffect: null == mentalHealthEffect ? _self.mentalHealthEffect : mentalHealthEffect // ignore: cast_nullable_to_non_nullable
as double,canDiagnoseConditionIds: null == canDiagnoseConditionIds ? _self.canDiagnoseConditionIds : canDiagnoseConditionIds // ignore: cast_nullable_to_non_nullable
as List<String>,canTreatConditionIds: null == canTreatConditionIds ? _self.canTreatConditionIds : canTreatConditionIds // ignore: cast_nullable_to_non_nullable
as List<String>,conditions: null == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<AccessCondition>,requiresDiagnosedConditionIds: null == requiresDiagnosedConditionIds ? _self.requiresDiagnosedConditionIds : requiresDiagnosedConditionIds // ignore: cast_nullable_to_non_nullable
as List<String>,treatmentSuccessRateByConditionId: null == treatmentSuccessRateByConditionId ? _self.treatmentSuccessRateByConditionId : treatmentSuccessRateByConditionId // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthAction].
extension HealthActionPatterns on HealthAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthAction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthAction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthAction value)  $default,){
final _that = this;
switch (_that) {
case _HealthAction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthAction value)?  $default,){
final _that = this;
switch (_that) {
case _HealthAction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  HealthActionType type,  int timeCost,  double physicalHealthEffect,  double mentalHealthEffect,  List<String> canDiagnoseConditionIds,  List<String> canTreatConditionIds,  List<AccessCondition> conditions,  List<String> requiresDiagnosedConditionIds,  Map<String, double> treatmentSuccessRateByConditionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthAction() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.type,_that.timeCost,_that.physicalHealthEffect,_that.mentalHealthEffect,_that.canDiagnoseConditionIds,_that.canTreatConditionIds,_that.conditions,_that.requiresDiagnosedConditionIds,_that.treatmentSuccessRateByConditionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  HealthActionType type,  int timeCost,  double physicalHealthEffect,  double mentalHealthEffect,  List<String> canDiagnoseConditionIds,  List<String> canTreatConditionIds,  List<AccessCondition> conditions,  List<String> requiresDiagnosedConditionIds,  Map<String, double> treatmentSuccessRateByConditionId)  $default,) {final _that = this;
switch (_that) {
case _HealthAction():
return $default(_that.id,_that.name,_that.description,_that.type,_that.timeCost,_that.physicalHealthEffect,_that.mentalHealthEffect,_that.canDiagnoseConditionIds,_that.canTreatConditionIds,_that.conditions,_that.requiresDiagnosedConditionIds,_that.treatmentSuccessRateByConditionId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  HealthActionType type,  int timeCost,  double physicalHealthEffect,  double mentalHealthEffect,  List<String> canDiagnoseConditionIds,  List<String> canTreatConditionIds,  List<AccessCondition> conditions,  List<String> requiresDiagnosedConditionIds,  Map<String, double> treatmentSuccessRateByConditionId)?  $default,) {final _that = this;
switch (_that) {
case _HealthAction() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.type,_that.timeCost,_that.physicalHealthEffect,_that.mentalHealthEffect,_that.canDiagnoseConditionIds,_that.canTreatConditionIds,_that.conditions,_that.requiresDiagnosedConditionIds,_that.treatmentSuccessRateByConditionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthAction implements HealthAction {
  const _HealthAction({required this.id, required this.name, required this.description, required this.type, required this.timeCost, this.physicalHealthEffect = 0.0, this.mentalHealthEffect = 0.0, final  List<String> canDiagnoseConditionIds = const [], final  List<String> canTreatConditionIds = const [], final  List<AccessCondition> conditions = const [], final  List<String> requiresDiagnosedConditionIds = const [], final  Map<String, double> treatmentSuccessRateByConditionId = const {}}): _canDiagnoseConditionIds = canDiagnoseConditionIds,_canTreatConditionIds = canTreatConditionIds,_conditions = conditions,_requiresDiagnosedConditionIds = requiresDiagnosedConditionIds,_treatmentSuccessRateByConditionId = treatmentSuccessRateByConditionId;
  factory _HealthAction.fromJson(Map<String, dynamic> json) => _$HealthActionFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
@override final  HealthActionType type;
@override final  int timeCost;
@override@JsonKey() final  double physicalHealthEffect;
@override@JsonKey() final  double mentalHealthEffect;
 final  List<String> _canDiagnoseConditionIds;
@override@JsonKey() List<String> get canDiagnoseConditionIds {
  if (_canDiagnoseConditionIds is EqualUnmodifiableListView) return _canDiagnoseConditionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_canDiagnoseConditionIds);
}

 final  List<String> _canTreatConditionIds;
@override@JsonKey() List<String> get canTreatConditionIds {
  if (_canTreatConditionIds is EqualUnmodifiableListView) return _canTreatConditionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_canTreatConditionIds);
}

 final  List<AccessCondition> _conditions;
@override@JsonKey() List<AccessCondition> get conditions {
  if (_conditions is EqualUnmodifiableListView) return _conditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conditions);
}

 final  List<String> _requiresDiagnosedConditionIds;
@override@JsonKey() List<String> get requiresDiagnosedConditionIds {
  if (_requiresDiagnosedConditionIds is EqualUnmodifiableListView) return _requiresDiagnosedConditionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_requiresDiagnosedConditionIds);
}

 final  Map<String, double> _treatmentSuccessRateByConditionId;
@override@JsonKey() Map<String, double> get treatmentSuccessRateByConditionId {
  if (_treatmentSuccessRateByConditionId is EqualUnmodifiableMapView) return _treatmentSuccessRateByConditionId;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_treatmentSuccessRateByConditionId);
}


/// Create a copy of HealthAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthActionCopyWith<_HealthAction> get copyWith => __$HealthActionCopyWithImpl<_HealthAction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthActionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthAction&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type)&&(identical(other.timeCost, timeCost) || other.timeCost == timeCost)&&(identical(other.physicalHealthEffect, physicalHealthEffect) || other.physicalHealthEffect == physicalHealthEffect)&&(identical(other.mentalHealthEffect, mentalHealthEffect) || other.mentalHealthEffect == mentalHealthEffect)&&const DeepCollectionEquality().equals(other._canDiagnoseConditionIds, _canDiagnoseConditionIds)&&const DeepCollectionEquality().equals(other._canTreatConditionIds, _canTreatConditionIds)&&const DeepCollectionEquality().equals(other._conditions, _conditions)&&const DeepCollectionEquality().equals(other._requiresDiagnosedConditionIds, _requiresDiagnosedConditionIds)&&const DeepCollectionEquality().equals(other._treatmentSuccessRateByConditionId, _treatmentSuccessRateByConditionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,type,timeCost,physicalHealthEffect,mentalHealthEffect,const DeepCollectionEquality().hash(_canDiagnoseConditionIds),const DeepCollectionEquality().hash(_canTreatConditionIds),const DeepCollectionEquality().hash(_conditions),const DeepCollectionEquality().hash(_requiresDiagnosedConditionIds),const DeepCollectionEquality().hash(_treatmentSuccessRateByConditionId));

@override
String toString() {
  return 'HealthAction(id: $id, name: $name, description: $description, type: $type, timeCost: $timeCost, physicalHealthEffect: $physicalHealthEffect, mentalHealthEffect: $mentalHealthEffect, canDiagnoseConditionIds: $canDiagnoseConditionIds, canTreatConditionIds: $canTreatConditionIds, conditions: $conditions, requiresDiagnosedConditionIds: $requiresDiagnosedConditionIds, treatmentSuccessRateByConditionId: $treatmentSuccessRateByConditionId)';
}


}

/// @nodoc
abstract mixin class _$HealthActionCopyWith<$Res> implements $HealthActionCopyWith<$Res> {
  factory _$HealthActionCopyWith(_HealthAction value, $Res Function(_HealthAction) _then) = __$HealthActionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, HealthActionType type, int timeCost, double physicalHealthEffect, double mentalHealthEffect, List<String> canDiagnoseConditionIds, List<String> canTreatConditionIds, List<AccessCondition> conditions, List<String> requiresDiagnosedConditionIds, Map<String, double> treatmentSuccessRateByConditionId
});




}
/// @nodoc
class __$HealthActionCopyWithImpl<$Res>
    implements _$HealthActionCopyWith<$Res> {
  __$HealthActionCopyWithImpl(this._self, this._then);

  final _HealthAction _self;
  final $Res Function(_HealthAction) _then;

/// Create a copy of HealthAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? type = null,Object? timeCost = null,Object? physicalHealthEffect = null,Object? mentalHealthEffect = null,Object? canDiagnoseConditionIds = null,Object? canTreatConditionIds = null,Object? conditions = null,Object? requiresDiagnosedConditionIds = null,Object? treatmentSuccessRateByConditionId = null,}) {
  return _then(_HealthAction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as HealthActionType,timeCost: null == timeCost ? _self.timeCost : timeCost // ignore: cast_nullable_to_non_nullable
as int,physicalHealthEffect: null == physicalHealthEffect ? _self.physicalHealthEffect : physicalHealthEffect // ignore: cast_nullable_to_non_nullable
as double,mentalHealthEffect: null == mentalHealthEffect ? _self.mentalHealthEffect : mentalHealthEffect // ignore: cast_nullable_to_non_nullable
as double,canDiagnoseConditionIds: null == canDiagnoseConditionIds ? _self._canDiagnoseConditionIds : canDiagnoseConditionIds // ignore: cast_nullable_to_non_nullable
as List<String>,canTreatConditionIds: null == canTreatConditionIds ? _self._canTreatConditionIds : canTreatConditionIds // ignore: cast_nullable_to_non_nullable
as List<String>,conditions: null == conditions ? _self._conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<AccessCondition>,requiresDiagnosedConditionIds: null == requiresDiagnosedConditionIds ? _self._requiresDiagnosedConditionIds : requiresDiagnosedConditionIds // ignore: cast_nullable_to_non_nullable
as List<String>,treatmentSuccessRateByConditionId: null == treatmentSuccessRateByConditionId ? _self._treatmentSuccessRateByConditionId : treatmentSuccessRateByConditionId // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}


}

// dart format on
