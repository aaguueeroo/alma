// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HealthState {

 double get physicalHealth; double get mentalHealth; double get stress; List<Condition> get conditions; List<Symptom> get symptoms; HealthPredisposition get predisposition; List<String> get performedHospitalActionIds; List<String> get performedGeneralActionIdsThisYear; List<String> get diagnosedConditionIds; List<String> get generalActionIdsThisYear;
/// Create a copy of HealthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthStateCopyWith<HealthState> get copyWith => _$HealthStateCopyWithImpl<HealthState>(this as HealthState, _$identity);

  /// Serializes this HealthState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthState&&(identical(other.physicalHealth, physicalHealth) || other.physicalHealth == physicalHealth)&&(identical(other.mentalHealth, mentalHealth) || other.mentalHealth == mentalHealth)&&(identical(other.stress, stress) || other.stress == stress)&&const DeepCollectionEquality().equals(other.conditions, conditions)&&const DeepCollectionEquality().equals(other.symptoms, symptoms)&&(identical(other.predisposition, predisposition) || other.predisposition == predisposition)&&const DeepCollectionEquality().equals(other.performedHospitalActionIds, performedHospitalActionIds)&&const DeepCollectionEquality().equals(other.performedGeneralActionIdsThisYear, performedGeneralActionIdsThisYear)&&const DeepCollectionEquality().equals(other.diagnosedConditionIds, diagnosedConditionIds)&&const DeepCollectionEquality().equals(other.generalActionIdsThisYear, generalActionIdsThisYear));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,physicalHealth,mentalHealth,stress,const DeepCollectionEquality().hash(conditions),const DeepCollectionEquality().hash(symptoms),predisposition,const DeepCollectionEquality().hash(performedHospitalActionIds),const DeepCollectionEquality().hash(performedGeneralActionIdsThisYear),const DeepCollectionEquality().hash(diagnosedConditionIds),const DeepCollectionEquality().hash(generalActionIdsThisYear));

@override
String toString() {
  return 'HealthState(physicalHealth: $physicalHealth, mentalHealth: $mentalHealth, stress: $stress, conditions: $conditions, symptoms: $symptoms, predisposition: $predisposition, performedHospitalActionIds: $performedHospitalActionIds, performedGeneralActionIdsThisYear: $performedGeneralActionIdsThisYear, diagnosedConditionIds: $diagnosedConditionIds, generalActionIdsThisYear: $generalActionIdsThisYear)';
}


}

/// @nodoc
abstract mixin class $HealthStateCopyWith<$Res>  {
  factory $HealthStateCopyWith(HealthState value, $Res Function(HealthState) _then) = _$HealthStateCopyWithImpl;
@useResult
$Res call({
 double physicalHealth, double mentalHealth, double stress, List<Condition> conditions, List<Symptom> symptoms, HealthPredisposition predisposition, List<String> performedHospitalActionIds, List<String> performedGeneralActionIdsThisYear, List<String> diagnosedConditionIds, List<String> generalActionIdsThisYear
});


$HealthPredispositionCopyWith<$Res> get predisposition;

}
/// @nodoc
class _$HealthStateCopyWithImpl<$Res>
    implements $HealthStateCopyWith<$Res> {
  _$HealthStateCopyWithImpl(this._self, this._then);

  final HealthState _self;
  final $Res Function(HealthState) _then;

/// Create a copy of HealthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? physicalHealth = null,Object? mentalHealth = null,Object? stress = null,Object? conditions = null,Object? symptoms = null,Object? predisposition = null,Object? performedHospitalActionIds = null,Object? performedGeneralActionIdsThisYear = null,Object? diagnosedConditionIds = null,Object? generalActionIdsThisYear = null,}) {
  return _then(_self.copyWith(
physicalHealth: null == physicalHealth ? _self.physicalHealth : physicalHealth // ignore: cast_nullable_to_non_nullable
as double,mentalHealth: null == mentalHealth ? _self.mentalHealth : mentalHealth // ignore: cast_nullable_to_non_nullable
as double,stress: null == stress ? _self.stress : stress // ignore: cast_nullable_to_non_nullable
as double,conditions: null == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<Condition>,symptoms: null == symptoms ? _self.symptoms : symptoms // ignore: cast_nullable_to_non_nullable
as List<Symptom>,predisposition: null == predisposition ? _self.predisposition : predisposition // ignore: cast_nullable_to_non_nullable
as HealthPredisposition,performedHospitalActionIds: null == performedHospitalActionIds ? _self.performedHospitalActionIds : performedHospitalActionIds // ignore: cast_nullable_to_non_nullable
as List<String>,performedGeneralActionIdsThisYear: null == performedGeneralActionIdsThisYear ? _self.performedGeneralActionIdsThisYear : performedGeneralActionIdsThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,diagnosedConditionIds: null == diagnosedConditionIds ? _self.diagnosedConditionIds : diagnosedConditionIds // ignore: cast_nullable_to_non_nullable
as List<String>,generalActionIdsThisYear: null == generalActionIdsThisYear ? _self.generalActionIdsThisYear : generalActionIdsThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of HealthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthPredispositionCopyWith<$Res> get predisposition {
  
  return $HealthPredispositionCopyWith<$Res>(_self.predisposition, (value) {
    return _then(_self.copyWith(predisposition: value));
  });
}
}


/// Adds pattern-matching-related methods to [HealthState].
extension HealthStatePatterns on HealthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthState value)  $default,){
final _that = this;
switch (_that) {
case _HealthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthState value)?  $default,){
final _that = this;
switch (_that) {
case _HealthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double physicalHealth,  double mentalHealth,  double stress,  List<Condition> conditions,  List<Symptom> symptoms,  HealthPredisposition predisposition,  List<String> performedHospitalActionIds,  List<String> performedGeneralActionIdsThisYear,  List<String> diagnosedConditionIds,  List<String> generalActionIdsThisYear)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthState() when $default != null:
return $default(_that.physicalHealth,_that.mentalHealth,_that.stress,_that.conditions,_that.symptoms,_that.predisposition,_that.performedHospitalActionIds,_that.performedGeneralActionIdsThisYear,_that.diagnosedConditionIds,_that.generalActionIdsThisYear);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double physicalHealth,  double mentalHealth,  double stress,  List<Condition> conditions,  List<Symptom> symptoms,  HealthPredisposition predisposition,  List<String> performedHospitalActionIds,  List<String> performedGeneralActionIdsThisYear,  List<String> diagnosedConditionIds,  List<String> generalActionIdsThisYear)  $default,) {final _that = this;
switch (_that) {
case _HealthState():
return $default(_that.physicalHealth,_that.mentalHealth,_that.stress,_that.conditions,_that.symptoms,_that.predisposition,_that.performedHospitalActionIds,_that.performedGeneralActionIdsThisYear,_that.diagnosedConditionIds,_that.generalActionIdsThisYear);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double physicalHealth,  double mentalHealth,  double stress,  List<Condition> conditions,  List<Symptom> symptoms,  HealthPredisposition predisposition,  List<String> performedHospitalActionIds,  List<String> performedGeneralActionIdsThisYear,  List<String> diagnosedConditionIds,  List<String> generalActionIdsThisYear)?  $default,) {final _that = this;
switch (_that) {
case _HealthState() when $default != null:
return $default(_that.physicalHealth,_that.mentalHealth,_that.stress,_that.conditions,_that.symptoms,_that.predisposition,_that.performedHospitalActionIds,_that.performedGeneralActionIdsThisYear,_that.diagnosedConditionIds,_that.generalActionIdsThisYear);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthState extends HealthState {
  const _HealthState({this.physicalHealth = 80.0, this.mentalHealth = 80.0, this.stress = 0.0, final  List<Condition> conditions = const [], final  List<Symptom> symptoms = const [], required this.predisposition, final  List<String> performedHospitalActionIds = const [], final  List<String> performedGeneralActionIdsThisYear = const [], final  List<String> diagnosedConditionIds = const [], final  List<String> generalActionIdsThisYear = const []}): _conditions = conditions,_symptoms = symptoms,_performedHospitalActionIds = performedHospitalActionIds,_performedGeneralActionIdsThisYear = performedGeneralActionIdsThisYear,_diagnosedConditionIds = diagnosedConditionIds,_generalActionIdsThisYear = generalActionIdsThisYear,super._();
  factory _HealthState.fromJson(Map<String, dynamic> json) => _$HealthStateFromJson(json);

@override@JsonKey() final  double physicalHealth;
@override@JsonKey() final  double mentalHealth;
@override@JsonKey() final  double stress;
 final  List<Condition> _conditions;
@override@JsonKey() List<Condition> get conditions {
  if (_conditions is EqualUnmodifiableListView) return _conditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conditions);
}

 final  List<Symptom> _symptoms;
@override@JsonKey() List<Symptom> get symptoms {
  if (_symptoms is EqualUnmodifiableListView) return _symptoms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_symptoms);
}

@override final  HealthPredisposition predisposition;
 final  List<String> _performedHospitalActionIds;
@override@JsonKey() List<String> get performedHospitalActionIds {
  if (_performedHospitalActionIds is EqualUnmodifiableListView) return _performedHospitalActionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_performedHospitalActionIds);
}

 final  List<String> _performedGeneralActionIdsThisYear;
@override@JsonKey() List<String> get performedGeneralActionIdsThisYear {
  if (_performedGeneralActionIdsThisYear is EqualUnmodifiableListView) return _performedGeneralActionIdsThisYear;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_performedGeneralActionIdsThisYear);
}

 final  List<String> _diagnosedConditionIds;
@override@JsonKey() List<String> get diagnosedConditionIds {
  if (_diagnosedConditionIds is EqualUnmodifiableListView) return _diagnosedConditionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_diagnosedConditionIds);
}

 final  List<String> _generalActionIdsThisYear;
@override@JsonKey() List<String> get generalActionIdsThisYear {
  if (_generalActionIdsThisYear is EqualUnmodifiableListView) return _generalActionIdsThisYear;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_generalActionIdsThisYear);
}


/// Create a copy of HealthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthStateCopyWith<_HealthState> get copyWith => __$HealthStateCopyWithImpl<_HealthState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthState&&(identical(other.physicalHealth, physicalHealth) || other.physicalHealth == physicalHealth)&&(identical(other.mentalHealth, mentalHealth) || other.mentalHealth == mentalHealth)&&(identical(other.stress, stress) || other.stress == stress)&&const DeepCollectionEquality().equals(other._conditions, _conditions)&&const DeepCollectionEquality().equals(other._symptoms, _symptoms)&&(identical(other.predisposition, predisposition) || other.predisposition == predisposition)&&const DeepCollectionEquality().equals(other._performedHospitalActionIds, _performedHospitalActionIds)&&const DeepCollectionEquality().equals(other._performedGeneralActionIdsThisYear, _performedGeneralActionIdsThisYear)&&const DeepCollectionEquality().equals(other._diagnosedConditionIds, _diagnosedConditionIds)&&const DeepCollectionEquality().equals(other._generalActionIdsThisYear, _generalActionIdsThisYear));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,physicalHealth,mentalHealth,stress,const DeepCollectionEquality().hash(_conditions),const DeepCollectionEquality().hash(_symptoms),predisposition,const DeepCollectionEquality().hash(_performedHospitalActionIds),const DeepCollectionEquality().hash(_performedGeneralActionIdsThisYear),const DeepCollectionEquality().hash(_diagnosedConditionIds),const DeepCollectionEquality().hash(_generalActionIdsThisYear));

@override
String toString() {
  return 'HealthState(physicalHealth: $physicalHealth, mentalHealth: $mentalHealth, stress: $stress, conditions: $conditions, symptoms: $symptoms, predisposition: $predisposition, performedHospitalActionIds: $performedHospitalActionIds, performedGeneralActionIdsThisYear: $performedGeneralActionIdsThisYear, diagnosedConditionIds: $diagnosedConditionIds, generalActionIdsThisYear: $generalActionIdsThisYear)';
}


}

/// @nodoc
abstract mixin class _$HealthStateCopyWith<$Res> implements $HealthStateCopyWith<$Res> {
  factory _$HealthStateCopyWith(_HealthState value, $Res Function(_HealthState) _then) = __$HealthStateCopyWithImpl;
@override @useResult
$Res call({
 double physicalHealth, double mentalHealth, double stress, List<Condition> conditions, List<Symptom> symptoms, HealthPredisposition predisposition, List<String> performedHospitalActionIds, List<String> performedGeneralActionIdsThisYear, List<String> diagnosedConditionIds, List<String> generalActionIdsThisYear
});


@override $HealthPredispositionCopyWith<$Res> get predisposition;

}
/// @nodoc
class __$HealthStateCopyWithImpl<$Res>
    implements _$HealthStateCopyWith<$Res> {
  __$HealthStateCopyWithImpl(this._self, this._then);

  final _HealthState _self;
  final $Res Function(_HealthState) _then;

/// Create a copy of HealthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? physicalHealth = null,Object? mentalHealth = null,Object? stress = null,Object? conditions = null,Object? symptoms = null,Object? predisposition = null,Object? performedHospitalActionIds = null,Object? performedGeneralActionIdsThisYear = null,Object? diagnosedConditionIds = null,Object? generalActionIdsThisYear = null,}) {
  return _then(_HealthState(
physicalHealth: null == physicalHealth ? _self.physicalHealth : physicalHealth // ignore: cast_nullable_to_non_nullable
as double,mentalHealth: null == mentalHealth ? _self.mentalHealth : mentalHealth // ignore: cast_nullable_to_non_nullable
as double,stress: null == stress ? _self.stress : stress // ignore: cast_nullable_to_non_nullable
as double,conditions: null == conditions ? _self._conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<Condition>,symptoms: null == symptoms ? _self._symptoms : symptoms // ignore: cast_nullable_to_non_nullable
as List<Symptom>,predisposition: null == predisposition ? _self.predisposition : predisposition // ignore: cast_nullable_to_non_nullable
as HealthPredisposition,performedHospitalActionIds: null == performedHospitalActionIds ? _self._performedHospitalActionIds : performedHospitalActionIds // ignore: cast_nullable_to_non_nullable
as List<String>,performedGeneralActionIdsThisYear: null == performedGeneralActionIdsThisYear ? _self._performedGeneralActionIdsThisYear : performedGeneralActionIdsThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,diagnosedConditionIds: null == diagnosedConditionIds ? _self._diagnosedConditionIds : diagnosedConditionIds // ignore: cast_nullable_to_non_nullable
as List<String>,generalActionIdsThisYear: null == generalActionIdsThisYear ? _self._generalActionIdsThisYear : generalActionIdsThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of HealthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthPredispositionCopyWith<$Res> get predisposition {
  
  return $HealthPredispositionCopyWith<$Res>(_self.predisposition, (value) {
    return _then(_self.copyWith(predisposition: value));
  });
}
}

// dart format on
