// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'condition_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConditionDefinition {

 String get id; String get name; ConditionType get type; bool get isChronic; int get severity; List<String> get symptomIds; double get physicalHealthEffect; double get mentalHealthEffect; double get timeCostMultiplier; double get workPerformanceEffect; double get studyPerformanceEffect; double get relationshipEffect; double get lifetimeChance; bool get canDevelopAtBirth; int get minAgeToDevelop; int get maxAgeToDevelop; int? get averageDurationYears; int? get blocksWorkAtSeverity; int? get blocksStudyAtSeverity; double? get defaultTreatmentSuccessRate;
/// Create a copy of ConditionDefinition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConditionDefinitionCopyWith<ConditionDefinition> get copyWith => _$ConditionDefinitionCopyWithImpl<ConditionDefinition>(this as ConditionDefinition, _$identity);

  /// Serializes this ConditionDefinition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConditionDefinition&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.isChronic, isChronic) || other.isChronic == isChronic)&&(identical(other.severity, severity) || other.severity == severity)&&const DeepCollectionEquality().equals(other.symptomIds, symptomIds)&&(identical(other.physicalHealthEffect, physicalHealthEffect) || other.physicalHealthEffect == physicalHealthEffect)&&(identical(other.mentalHealthEffect, mentalHealthEffect) || other.mentalHealthEffect == mentalHealthEffect)&&(identical(other.timeCostMultiplier, timeCostMultiplier) || other.timeCostMultiplier == timeCostMultiplier)&&(identical(other.workPerformanceEffect, workPerformanceEffect) || other.workPerformanceEffect == workPerformanceEffect)&&(identical(other.studyPerformanceEffect, studyPerformanceEffect) || other.studyPerformanceEffect == studyPerformanceEffect)&&(identical(other.relationshipEffect, relationshipEffect) || other.relationshipEffect == relationshipEffect)&&(identical(other.lifetimeChance, lifetimeChance) || other.lifetimeChance == lifetimeChance)&&(identical(other.canDevelopAtBirth, canDevelopAtBirth) || other.canDevelopAtBirth == canDevelopAtBirth)&&(identical(other.minAgeToDevelop, minAgeToDevelop) || other.minAgeToDevelop == minAgeToDevelop)&&(identical(other.maxAgeToDevelop, maxAgeToDevelop) || other.maxAgeToDevelop == maxAgeToDevelop)&&(identical(other.averageDurationYears, averageDurationYears) || other.averageDurationYears == averageDurationYears)&&(identical(other.blocksWorkAtSeverity, blocksWorkAtSeverity) || other.blocksWorkAtSeverity == blocksWorkAtSeverity)&&(identical(other.blocksStudyAtSeverity, blocksStudyAtSeverity) || other.blocksStudyAtSeverity == blocksStudyAtSeverity)&&(identical(other.defaultTreatmentSuccessRate, defaultTreatmentSuccessRate) || other.defaultTreatmentSuccessRate == defaultTreatmentSuccessRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,type,isChronic,severity,const DeepCollectionEquality().hash(symptomIds),physicalHealthEffect,mentalHealthEffect,timeCostMultiplier,workPerformanceEffect,studyPerformanceEffect,relationshipEffect,lifetimeChance,canDevelopAtBirth,minAgeToDevelop,maxAgeToDevelop,averageDurationYears,blocksWorkAtSeverity,blocksStudyAtSeverity,defaultTreatmentSuccessRate]);

@override
String toString() {
  return 'ConditionDefinition(id: $id, name: $name, type: $type, isChronic: $isChronic, severity: $severity, symptomIds: $symptomIds, physicalHealthEffect: $physicalHealthEffect, mentalHealthEffect: $mentalHealthEffect, timeCostMultiplier: $timeCostMultiplier, workPerformanceEffect: $workPerformanceEffect, studyPerformanceEffect: $studyPerformanceEffect, relationshipEffect: $relationshipEffect, lifetimeChance: $lifetimeChance, canDevelopAtBirth: $canDevelopAtBirth, minAgeToDevelop: $minAgeToDevelop, maxAgeToDevelop: $maxAgeToDevelop, averageDurationYears: $averageDurationYears, blocksWorkAtSeverity: $blocksWorkAtSeverity, blocksStudyAtSeverity: $blocksStudyAtSeverity, defaultTreatmentSuccessRate: $defaultTreatmentSuccessRate)';
}


}

/// @nodoc
abstract mixin class $ConditionDefinitionCopyWith<$Res>  {
  factory $ConditionDefinitionCopyWith(ConditionDefinition value, $Res Function(ConditionDefinition) _then) = _$ConditionDefinitionCopyWithImpl;
@useResult
$Res call({
 String id, String name, ConditionType type, bool isChronic, int severity, List<String> symptomIds, double physicalHealthEffect, double mentalHealthEffect, double timeCostMultiplier, double workPerformanceEffect, double studyPerformanceEffect, double relationshipEffect, double lifetimeChance, bool canDevelopAtBirth, int minAgeToDevelop, int maxAgeToDevelop, int? averageDurationYears, int? blocksWorkAtSeverity, int? blocksStudyAtSeverity, double? defaultTreatmentSuccessRate
});




}
/// @nodoc
class _$ConditionDefinitionCopyWithImpl<$Res>
    implements $ConditionDefinitionCopyWith<$Res> {
  _$ConditionDefinitionCopyWithImpl(this._self, this._then);

  final ConditionDefinition _self;
  final $Res Function(ConditionDefinition) _then;

/// Create a copy of ConditionDefinition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? isChronic = null,Object? severity = null,Object? symptomIds = null,Object? physicalHealthEffect = null,Object? mentalHealthEffect = null,Object? timeCostMultiplier = null,Object? workPerformanceEffect = null,Object? studyPerformanceEffect = null,Object? relationshipEffect = null,Object? lifetimeChance = null,Object? canDevelopAtBirth = null,Object? minAgeToDevelop = null,Object? maxAgeToDevelop = null,Object? averageDurationYears = freezed,Object? blocksWorkAtSeverity = freezed,Object? blocksStudyAtSeverity = freezed,Object? defaultTreatmentSuccessRate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ConditionType,isChronic: null == isChronic ? _self.isChronic : isChronic // ignore: cast_nullable_to_non_nullable
as bool,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as int,symptomIds: null == symptomIds ? _self.symptomIds : symptomIds // ignore: cast_nullable_to_non_nullable
as List<String>,physicalHealthEffect: null == physicalHealthEffect ? _self.physicalHealthEffect : physicalHealthEffect // ignore: cast_nullable_to_non_nullable
as double,mentalHealthEffect: null == mentalHealthEffect ? _self.mentalHealthEffect : mentalHealthEffect // ignore: cast_nullable_to_non_nullable
as double,timeCostMultiplier: null == timeCostMultiplier ? _self.timeCostMultiplier : timeCostMultiplier // ignore: cast_nullable_to_non_nullable
as double,workPerformanceEffect: null == workPerformanceEffect ? _self.workPerformanceEffect : workPerformanceEffect // ignore: cast_nullable_to_non_nullable
as double,studyPerformanceEffect: null == studyPerformanceEffect ? _self.studyPerformanceEffect : studyPerformanceEffect // ignore: cast_nullable_to_non_nullable
as double,relationshipEffect: null == relationshipEffect ? _self.relationshipEffect : relationshipEffect // ignore: cast_nullable_to_non_nullable
as double,lifetimeChance: null == lifetimeChance ? _self.lifetimeChance : lifetimeChance // ignore: cast_nullable_to_non_nullable
as double,canDevelopAtBirth: null == canDevelopAtBirth ? _self.canDevelopAtBirth : canDevelopAtBirth // ignore: cast_nullable_to_non_nullable
as bool,minAgeToDevelop: null == minAgeToDevelop ? _self.minAgeToDevelop : minAgeToDevelop // ignore: cast_nullable_to_non_nullable
as int,maxAgeToDevelop: null == maxAgeToDevelop ? _self.maxAgeToDevelop : maxAgeToDevelop // ignore: cast_nullable_to_non_nullable
as int,averageDurationYears: freezed == averageDurationYears ? _self.averageDurationYears : averageDurationYears // ignore: cast_nullable_to_non_nullable
as int?,blocksWorkAtSeverity: freezed == blocksWorkAtSeverity ? _self.blocksWorkAtSeverity : blocksWorkAtSeverity // ignore: cast_nullable_to_non_nullable
as int?,blocksStudyAtSeverity: freezed == blocksStudyAtSeverity ? _self.blocksStudyAtSeverity : blocksStudyAtSeverity // ignore: cast_nullable_to_non_nullable
as int?,defaultTreatmentSuccessRate: freezed == defaultTreatmentSuccessRate ? _self.defaultTreatmentSuccessRate : defaultTreatmentSuccessRate // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConditionDefinition].
extension ConditionDefinitionPatterns on ConditionDefinition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConditionDefinition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConditionDefinition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConditionDefinition value)  $default,){
final _that = this;
switch (_that) {
case _ConditionDefinition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConditionDefinition value)?  $default,){
final _that = this;
switch (_that) {
case _ConditionDefinition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  ConditionType type,  bool isChronic,  int severity,  List<String> symptomIds,  double physicalHealthEffect,  double mentalHealthEffect,  double timeCostMultiplier,  double workPerformanceEffect,  double studyPerformanceEffect,  double relationshipEffect,  double lifetimeChance,  bool canDevelopAtBirth,  int minAgeToDevelop,  int maxAgeToDevelop,  int? averageDurationYears,  int? blocksWorkAtSeverity,  int? blocksStudyAtSeverity,  double? defaultTreatmentSuccessRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConditionDefinition() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.isChronic,_that.severity,_that.symptomIds,_that.physicalHealthEffect,_that.mentalHealthEffect,_that.timeCostMultiplier,_that.workPerformanceEffect,_that.studyPerformanceEffect,_that.relationshipEffect,_that.lifetimeChance,_that.canDevelopAtBirth,_that.minAgeToDevelop,_that.maxAgeToDevelop,_that.averageDurationYears,_that.blocksWorkAtSeverity,_that.blocksStudyAtSeverity,_that.defaultTreatmentSuccessRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  ConditionType type,  bool isChronic,  int severity,  List<String> symptomIds,  double physicalHealthEffect,  double mentalHealthEffect,  double timeCostMultiplier,  double workPerformanceEffect,  double studyPerformanceEffect,  double relationshipEffect,  double lifetimeChance,  bool canDevelopAtBirth,  int minAgeToDevelop,  int maxAgeToDevelop,  int? averageDurationYears,  int? blocksWorkAtSeverity,  int? blocksStudyAtSeverity,  double? defaultTreatmentSuccessRate)  $default,) {final _that = this;
switch (_that) {
case _ConditionDefinition():
return $default(_that.id,_that.name,_that.type,_that.isChronic,_that.severity,_that.symptomIds,_that.physicalHealthEffect,_that.mentalHealthEffect,_that.timeCostMultiplier,_that.workPerformanceEffect,_that.studyPerformanceEffect,_that.relationshipEffect,_that.lifetimeChance,_that.canDevelopAtBirth,_that.minAgeToDevelop,_that.maxAgeToDevelop,_that.averageDurationYears,_that.blocksWorkAtSeverity,_that.blocksStudyAtSeverity,_that.defaultTreatmentSuccessRate);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  ConditionType type,  bool isChronic,  int severity,  List<String> symptomIds,  double physicalHealthEffect,  double mentalHealthEffect,  double timeCostMultiplier,  double workPerformanceEffect,  double studyPerformanceEffect,  double relationshipEffect,  double lifetimeChance,  bool canDevelopAtBirth,  int minAgeToDevelop,  int maxAgeToDevelop,  int? averageDurationYears,  int? blocksWorkAtSeverity,  int? blocksStudyAtSeverity,  double? defaultTreatmentSuccessRate)?  $default,) {final _that = this;
switch (_that) {
case _ConditionDefinition() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.isChronic,_that.severity,_that.symptomIds,_that.physicalHealthEffect,_that.mentalHealthEffect,_that.timeCostMultiplier,_that.workPerformanceEffect,_that.studyPerformanceEffect,_that.relationshipEffect,_that.lifetimeChance,_that.canDevelopAtBirth,_that.minAgeToDevelop,_that.maxAgeToDevelop,_that.averageDurationYears,_that.blocksWorkAtSeverity,_that.blocksStudyAtSeverity,_that.defaultTreatmentSuccessRate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConditionDefinition extends ConditionDefinition {
  const _ConditionDefinition({required this.id, required this.name, required this.type, required this.isChronic, required this.severity, final  List<String> symptomIds = const [], this.physicalHealthEffect = 0.0, this.mentalHealthEffect = 0.0, this.timeCostMultiplier = 1.0, this.workPerformanceEffect = 0.0, this.studyPerformanceEffect = 0.0, this.relationshipEffect = 0.0, this.lifetimeChance = 0.0, this.canDevelopAtBirth = false, this.minAgeToDevelop = 0, this.maxAgeToDevelop = 100, this.averageDurationYears, this.blocksWorkAtSeverity, this.blocksStudyAtSeverity, this.defaultTreatmentSuccessRate}): _symptomIds = symptomIds,super._();
  factory _ConditionDefinition.fromJson(Map<String, dynamic> json) => _$ConditionDefinitionFromJson(json);

@override final  String id;
@override final  String name;
@override final  ConditionType type;
@override final  bool isChronic;
@override final  int severity;
 final  List<String> _symptomIds;
@override@JsonKey() List<String> get symptomIds {
  if (_symptomIds is EqualUnmodifiableListView) return _symptomIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_symptomIds);
}

@override@JsonKey() final  double physicalHealthEffect;
@override@JsonKey() final  double mentalHealthEffect;
@override@JsonKey() final  double timeCostMultiplier;
@override@JsonKey() final  double workPerformanceEffect;
@override@JsonKey() final  double studyPerformanceEffect;
@override@JsonKey() final  double relationshipEffect;
@override@JsonKey() final  double lifetimeChance;
@override@JsonKey() final  bool canDevelopAtBirth;
@override@JsonKey() final  int minAgeToDevelop;
@override@JsonKey() final  int maxAgeToDevelop;
@override final  int? averageDurationYears;
@override final  int? blocksWorkAtSeverity;
@override final  int? blocksStudyAtSeverity;
@override final  double? defaultTreatmentSuccessRate;

/// Create a copy of ConditionDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConditionDefinitionCopyWith<_ConditionDefinition> get copyWith => __$ConditionDefinitionCopyWithImpl<_ConditionDefinition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConditionDefinitionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConditionDefinition&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.isChronic, isChronic) || other.isChronic == isChronic)&&(identical(other.severity, severity) || other.severity == severity)&&const DeepCollectionEquality().equals(other._symptomIds, _symptomIds)&&(identical(other.physicalHealthEffect, physicalHealthEffect) || other.physicalHealthEffect == physicalHealthEffect)&&(identical(other.mentalHealthEffect, mentalHealthEffect) || other.mentalHealthEffect == mentalHealthEffect)&&(identical(other.timeCostMultiplier, timeCostMultiplier) || other.timeCostMultiplier == timeCostMultiplier)&&(identical(other.workPerformanceEffect, workPerformanceEffect) || other.workPerformanceEffect == workPerformanceEffect)&&(identical(other.studyPerformanceEffect, studyPerformanceEffect) || other.studyPerformanceEffect == studyPerformanceEffect)&&(identical(other.relationshipEffect, relationshipEffect) || other.relationshipEffect == relationshipEffect)&&(identical(other.lifetimeChance, lifetimeChance) || other.lifetimeChance == lifetimeChance)&&(identical(other.canDevelopAtBirth, canDevelopAtBirth) || other.canDevelopAtBirth == canDevelopAtBirth)&&(identical(other.minAgeToDevelop, minAgeToDevelop) || other.minAgeToDevelop == minAgeToDevelop)&&(identical(other.maxAgeToDevelop, maxAgeToDevelop) || other.maxAgeToDevelop == maxAgeToDevelop)&&(identical(other.averageDurationYears, averageDurationYears) || other.averageDurationYears == averageDurationYears)&&(identical(other.blocksWorkAtSeverity, blocksWorkAtSeverity) || other.blocksWorkAtSeverity == blocksWorkAtSeverity)&&(identical(other.blocksStudyAtSeverity, blocksStudyAtSeverity) || other.blocksStudyAtSeverity == blocksStudyAtSeverity)&&(identical(other.defaultTreatmentSuccessRate, defaultTreatmentSuccessRate) || other.defaultTreatmentSuccessRate == defaultTreatmentSuccessRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,type,isChronic,severity,const DeepCollectionEquality().hash(_symptomIds),physicalHealthEffect,mentalHealthEffect,timeCostMultiplier,workPerformanceEffect,studyPerformanceEffect,relationshipEffect,lifetimeChance,canDevelopAtBirth,minAgeToDevelop,maxAgeToDevelop,averageDurationYears,blocksWorkAtSeverity,blocksStudyAtSeverity,defaultTreatmentSuccessRate]);

@override
String toString() {
  return 'ConditionDefinition(id: $id, name: $name, type: $type, isChronic: $isChronic, severity: $severity, symptomIds: $symptomIds, physicalHealthEffect: $physicalHealthEffect, mentalHealthEffect: $mentalHealthEffect, timeCostMultiplier: $timeCostMultiplier, workPerformanceEffect: $workPerformanceEffect, studyPerformanceEffect: $studyPerformanceEffect, relationshipEffect: $relationshipEffect, lifetimeChance: $lifetimeChance, canDevelopAtBirth: $canDevelopAtBirth, minAgeToDevelop: $minAgeToDevelop, maxAgeToDevelop: $maxAgeToDevelop, averageDurationYears: $averageDurationYears, blocksWorkAtSeverity: $blocksWorkAtSeverity, blocksStudyAtSeverity: $blocksStudyAtSeverity, defaultTreatmentSuccessRate: $defaultTreatmentSuccessRate)';
}


}

/// @nodoc
abstract mixin class _$ConditionDefinitionCopyWith<$Res> implements $ConditionDefinitionCopyWith<$Res> {
  factory _$ConditionDefinitionCopyWith(_ConditionDefinition value, $Res Function(_ConditionDefinition) _then) = __$ConditionDefinitionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, ConditionType type, bool isChronic, int severity, List<String> symptomIds, double physicalHealthEffect, double mentalHealthEffect, double timeCostMultiplier, double workPerformanceEffect, double studyPerformanceEffect, double relationshipEffect, double lifetimeChance, bool canDevelopAtBirth, int minAgeToDevelop, int maxAgeToDevelop, int? averageDurationYears, int? blocksWorkAtSeverity, int? blocksStudyAtSeverity, double? defaultTreatmentSuccessRate
});




}
/// @nodoc
class __$ConditionDefinitionCopyWithImpl<$Res>
    implements _$ConditionDefinitionCopyWith<$Res> {
  __$ConditionDefinitionCopyWithImpl(this._self, this._then);

  final _ConditionDefinition _self;
  final $Res Function(_ConditionDefinition) _then;

/// Create a copy of ConditionDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? isChronic = null,Object? severity = null,Object? symptomIds = null,Object? physicalHealthEffect = null,Object? mentalHealthEffect = null,Object? timeCostMultiplier = null,Object? workPerformanceEffect = null,Object? studyPerformanceEffect = null,Object? relationshipEffect = null,Object? lifetimeChance = null,Object? canDevelopAtBirth = null,Object? minAgeToDevelop = null,Object? maxAgeToDevelop = null,Object? averageDurationYears = freezed,Object? blocksWorkAtSeverity = freezed,Object? blocksStudyAtSeverity = freezed,Object? defaultTreatmentSuccessRate = freezed,}) {
  return _then(_ConditionDefinition(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ConditionType,isChronic: null == isChronic ? _self.isChronic : isChronic // ignore: cast_nullable_to_non_nullable
as bool,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as int,symptomIds: null == symptomIds ? _self._symptomIds : symptomIds // ignore: cast_nullable_to_non_nullable
as List<String>,physicalHealthEffect: null == physicalHealthEffect ? _self.physicalHealthEffect : physicalHealthEffect // ignore: cast_nullable_to_non_nullable
as double,mentalHealthEffect: null == mentalHealthEffect ? _self.mentalHealthEffect : mentalHealthEffect // ignore: cast_nullable_to_non_nullable
as double,timeCostMultiplier: null == timeCostMultiplier ? _self.timeCostMultiplier : timeCostMultiplier // ignore: cast_nullable_to_non_nullable
as double,workPerformanceEffect: null == workPerformanceEffect ? _self.workPerformanceEffect : workPerformanceEffect // ignore: cast_nullable_to_non_nullable
as double,studyPerformanceEffect: null == studyPerformanceEffect ? _self.studyPerformanceEffect : studyPerformanceEffect // ignore: cast_nullable_to_non_nullable
as double,relationshipEffect: null == relationshipEffect ? _self.relationshipEffect : relationshipEffect // ignore: cast_nullable_to_non_nullable
as double,lifetimeChance: null == lifetimeChance ? _self.lifetimeChance : lifetimeChance // ignore: cast_nullable_to_non_nullable
as double,canDevelopAtBirth: null == canDevelopAtBirth ? _self.canDevelopAtBirth : canDevelopAtBirth // ignore: cast_nullable_to_non_nullable
as bool,minAgeToDevelop: null == minAgeToDevelop ? _self.minAgeToDevelop : minAgeToDevelop // ignore: cast_nullable_to_non_nullable
as int,maxAgeToDevelop: null == maxAgeToDevelop ? _self.maxAgeToDevelop : maxAgeToDevelop // ignore: cast_nullable_to_non_nullable
as int,averageDurationYears: freezed == averageDurationYears ? _self.averageDurationYears : averageDurationYears // ignore: cast_nullable_to_non_nullable
as int?,blocksWorkAtSeverity: freezed == blocksWorkAtSeverity ? _self.blocksWorkAtSeverity : blocksWorkAtSeverity // ignore: cast_nullable_to_non_nullable
as int?,blocksStudyAtSeverity: freezed == blocksStudyAtSeverity ? _self.blocksStudyAtSeverity : blocksStudyAtSeverity // ignore: cast_nullable_to_non_nullable
as int?,defaultTreatmentSuccessRate: freezed == defaultTreatmentSuccessRate ? _self.defaultTreatmentSuccessRate : defaultTreatmentSuccessRate // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
