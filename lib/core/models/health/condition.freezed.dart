// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Condition {

 String get id; String get name; ConditionType get type; bool get isChronic; int get severity; bool get isDiagnosed; bool get isTreated; int? get startAge; int? get endAge; List<String> get symptomIds; double get physicalHealthEffect; double get mentalHealthEffect; double get timeCostMultiplier; double get workPerformanceEffect; double get studyPerformanceEffect; double get relationshipEffect;
/// Create a copy of Condition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConditionCopyWith<Condition> get copyWith => _$ConditionCopyWithImpl<Condition>(this as Condition, _$identity);

  /// Serializes this Condition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Condition&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.isChronic, isChronic) || other.isChronic == isChronic)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.isDiagnosed, isDiagnosed) || other.isDiagnosed == isDiagnosed)&&(identical(other.isTreated, isTreated) || other.isTreated == isTreated)&&(identical(other.startAge, startAge) || other.startAge == startAge)&&(identical(other.endAge, endAge) || other.endAge == endAge)&&const DeepCollectionEquality().equals(other.symptomIds, symptomIds)&&(identical(other.physicalHealthEffect, physicalHealthEffect) || other.physicalHealthEffect == physicalHealthEffect)&&(identical(other.mentalHealthEffect, mentalHealthEffect) || other.mentalHealthEffect == mentalHealthEffect)&&(identical(other.timeCostMultiplier, timeCostMultiplier) || other.timeCostMultiplier == timeCostMultiplier)&&(identical(other.workPerformanceEffect, workPerformanceEffect) || other.workPerformanceEffect == workPerformanceEffect)&&(identical(other.studyPerformanceEffect, studyPerformanceEffect) || other.studyPerformanceEffect == studyPerformanceEffect)&&(identical(other.relationshipEffect, relationshipEffect) || other.relationshipEffect == relationshipEffect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,isChronic,severity,isDiagnosed,isTreated,startAge,endAge,const DeepCollectionEquality().hash(symptomIds),physicalHealthEffect,mentalHealthEffect,timeCostMultiplier,workPerformanceEffect,studyPerformanceEffect,relationshipEffect);

@override
String toString() {
  return 'Condition(id: $id, name: $name, type: $type, isChronic: $isChronic, severity: $severity, isDiagnosed: $isDiagnosed, isTreated: $isTreated, startAge: $startAge, endAge: $endAge, symptomIds: $symptomIds, physicalHealthEffect: $physicalHealthEffect, mentalHealthEffect: $mentalHealthEffect, timeCostMultiplier: $timeCostMultiplier, workPerformanceEffect: $workPerformanceEffect, studyPerformanceEffect: $studyPerformanceEffect, relationshipEffect: $relationshipEffect)';
}


}

/// @nodoc
abstract mixin class $ConditionCopyWith<$Res>  {
  factory $ConditionCopyWith(Condition value, $Res Function(Condition) _then) = _$ConditionCopyWithImpl;
@useResult
$Res call({
 String id, String name, ConditionType type, bool isChronic, int severity, bool isDiagnosed, bool isTreated, int? startAge, int? endAge, List<String> symptomIds, double physicalHealthEffect, double mentalHealthEffect, double timeCostMultiplier, double workPerformanceEffect, double studyPerformanceEffect, double relationshipEffect
});




}
/// @nodoc
class _$ConditionCopyWithImpl<$Res>
    implements $ConditionCopyWith<$Res> {
  _$ConditionCopyWithImpl(this._self, this._then);

  final Condition _self;
  final $Res Function(Condition) _then;

/// Create a copy of Condition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? isChronic = null,Object? severity = null,Object? isDiagnosed = null,Object? isTreated = null,Object? startAge = freezed,Object? endAge = freezed,Object? symptomIds = null,Object? physicalHealthEffect = null,Object? mentalHealthEffect = null,Object? timeCostMultiplier = null,Object? workPerformanceEffect = null,Object? studyPerformanceEffect = null,Object? relationshipEffect = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ConditionType,isChronic: null == isChronic ? _self.isChronic : isChronic // ignore: cast_nullable_to_non_nullable
as bool,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as int,isDiagnosed: null == isDiagnosed ? _self.isDiagnosed : isDiagnosed // ignore: cast_nullable_to_non_nullable
as bool,isTreated: null == isTreated ? _self.isTreated : isTreated // ignore: cast_nullable_to_non_nullable
as bool,startAge: freezed == startAge ? _self.startAge : startAge // ignore: cast_nullable_to_non_nullable
as int?,endAge: freezed == endAge ? _self.endAge : endAge // ignore: cast_nullable_to_non_nullable
as int?,symptomIds: null == symptomIds ? _self.symptomIds : symptomIds // ignore: cast_nullable_to_non_nullable
as List<String>,physicalHealthEffect: null == physicalHealthEffect ? _self.physicalHealthEffect : physicalHealthEffect // ignore: cast_nullable_to_non_nullable
as double,mentalHealthEffect: null == mentalHealthEffect ? _self.mentalHealthEffect : mentalHealthEffect // ignore: cast_nullable_to_non_nullable
as double,timeCostMultiplier: null == timeCostMultiplier ? _self.timeCostMultiplier : timeCostMultiplier // ignore: cast_nullable_to_non_nullable
as double,workPerformanceEffect: null == workPerformanceEffect ? _self.workPerformanceEffect : workPerformanceEffect // ignore: cast_nullable_to_non_nullable
as double,studyPerformanceEffect: null == studyPerformanceEffect ? _self.studyPerformanceEffect : studyPerformanceEffect // ignore: cast_nullable_to_non_nullable
as double,relationshipEffect: null == relationshipEffect ? _self.relationshipEffect : relationshipEffect // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Condition].
extension ConditionPatterns on Condition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Condition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Condition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Condition value)  $default,){
final _that = this;
switch (_that) {
case _Condition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Condition value)?  $default,){
final _that = this;
switch (_that) {
case _Condition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  ConditionType type,  bool isChronic,  int severity,  bool isDiagnosed,  bool isTreated,  int? startAge,  int? endAge,  List<String> symptomIds,  double physicalHealthEffect,  double mentalHealthEffect,  double timeCostMultiplier,  double workPerformanceEffect,  double studyPerformanceEffect,  double relationshipEffect)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Condition() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.isChronic,_that.severity,_that.isDiagnosed,_that.isTreated,_that.startAge,_that.endAge,_that.symptomIds,_that.physicalHealthEffect,_that.mentalHealthEffect,_that.timeCostMultiplier,_that.workPerformanceEffect,_that.studyPerformanceEffect,_that.relationshipEffect);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  ConditionType type,  bool isChronic,  int severity,  bool isDiagnosed,  bool isTreated,  int? startAge,  int? endAge,  List<String> symptomIds,  double physicalHealthEffect,  double mentalHealthEffect,  double timeCostMultiplier,  double workPerformanceEffect,  double studyPerformanceEffect,  double relationshipEffect)  $default,) {final _that = this;
switch (_that) {
case _Condition():
return $default(_that.id,_that.name,_that.type,_that.isChronic,_that.severity,_that.isDiagnosed,_that.isTreated,_that.startAge,_that.endAge,_that.symptomIds,_that.physicalHealthEffect,_that.mentalHealthEffect,_that.timeCostMultiplier,_that.workPerformanceEffect,_that.studyPerformanceEffect,_that.relationshipEffect);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  ConditionType type,  bool isChronic,  int severity,  bool isDiagnosed,  bool isTreated,  int? startAge,  int? endAge,  List<String> symptomIds,  double physicalHealthEffect,  double mentalHealthEffect,  double timeCostMultiplier,  double workPerformanceEffect,  double studyPerformanceEffect,  double relationshipEffect)?  $default,) {final _that = this;
switch (_that) {
case _Condition() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.isChronic,_that.severity,_that.isDiagnosed,_that.isTreated,_that.startAge,_that.endAge,_that.symptomIds,_that.physicalHealthEffect,_that.mentalHealthEffect,_that.timeCostMultiplier,_that.workPerformanceEffect,_that.studyPerformanceEffect,_that.relationshipEffect);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Condition implements Condition {
  const _Condition({required this.id, required this.name, required this.type, required this.isChronic, required this.severity, this.isDiagnosed = false, this.isTreated = false, this.startAge, this.endAge, final  List<String> symptomIds = const [], this.physicalHealthEffect = 0.0, this.mentalHealthEffect = 0.0, this.timeCostMultiplier = 1.0, this.workPerformanceEffect = 0.0, this.studyPerformanceEffect = 0.0, this.relationshipEffect = 0.0}): _symptomIds = symptomIds;
  factory _Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);

@override final  String id;
@override final  String name;
@override final  ConditionType type;
@override final  bool isChronic;
@override final  int severity;
@override@JsonKey() final  bool isDiagnosed;
@override@JsonKey() final  bool isTreated;
@override final  int? startAge;
@override final  int? endAge;
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

/// Create a copy of Condition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConditionCopyWith<_Condition> get copyWith => __$ConditionCopyWithImpl<_Condition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConditionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Condition&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.isChronic, isChronic) || other.isChronic == isChronic)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.isDiagnosed, isDiagnosed) || other.isDiagnosed == isDiagnosed)&&(identical(other.isTreated, isTreated) || other.isTreated == isTreated)&&(identical(other.startAge, startAge) || other.startAge == startAge)&&(identical(other.endAge, endAge) || other.endAge == endAge)&&const DeepCollectionEquality().equals(other._symptomIds, _symptomIds)&&(identical(other.physicalHealthEffect, physicalHealthEffect) || other.physicalHealthEffect == physicalHealthEffect)&&(identical(other.mentalHealthEffect, mentalHealthEffect) || other.mentalHealthEffect == mentalHealthEffect)&&(identical(other.timeCostMultiplier, timeCostMultiplier) || other.timeCostMultiplier == timeCostMultiplier)&&(identical(other.workPerformanceEffect, workPerformanceEffect) || other.workPerformanceEffect == workPerformanceEffect)&&(identical(other.studyPerformanceEffect, studyPerformanceEffect) || other.studyPerformanceEffect == studyPerformanceEffect)&&(identical(other.relationshipEffect, relationshipEffect) || other.relationshipEffect == relationshipEffect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,isChronic,severity,isDiagnosed,isTreated,startAge,endAge,const DeepCollectionEquality().hash(_symptomIds),physicalHealthEffect,mentalHealthEffect,timeCostMultiplier,workPerformanceEffect,studyPerformanceEffect,relationshipEffect);

@override
String toString() {
  return 'Condition(id: $id, name: $name, type: $type, isChronic: $isChronic, severity: $severity, isDiagnosed: $isDiagnosed, isTreated: $isTreated, startAge: $startAge, endAge: $endAge, symptomIds: $symptomIds, physicalHealthEffect: $physicalHealthEffect, mentalHealthEffect: $mentalHealthEffect, timeCostMultiplier: $timeCostMultiplier, workPerformanceEffect: $workPerformanceEffect, studyPerformanceEffect: $studyPerformanceEffect, relationshipEffect: $relationshipEffect)';
}


}

/// @nodoc
abstract mixin class _$ConditionCopyWith<$Res> implements $ConditionCopyWith<$Res> {
  factory _$ConditionCopyWith(_Condition value, $Res Function(_Condition) _then) = __$ConditionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, ConditionType type, bool isChronic, int severity, bool isDiagnosed, bool isTreated, int? startAge, int? endAge, List<String> symptomIds, double physicalHealthEffect, double mentalHealthEffect, double timeCostMultiplier, double workPerformanceEffect, double studyPerformanceEffect, double relationshipEffect
});




}
/// @nodoc
class __$ConditionCopyWithImpl<$Res>
    implements _$ConditionCopyWith<$Res> {
  __$ConditionCopyWithImpl(this._self, this._then);

  final _Condition _self;
  final $Res Function(_Condition) _then;

/// Create a copy of Condition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? isChronic = null,Object? severity = null,Object? isDiagnosed = null,Object? isTreated = null,Object? startAge = freezed,Object? endAge = freezed,Object? symptomIds = null,Object? physicalHealthEffect = null,Object? mentalHealthEffect = null,Object? timeCostMultiplier = null,Object? workPerformanceEffect = null,Object? studyPerformanceEffect = null,Object? relationshipEffect = null,}) {
  return _then(_Condition(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ConditionType,isChronic: null == isChronic ? _self.isChronic : isChronic // ignore: cast_nullable_to_non_nullable
as bool,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as int,isDiagnosed: null == isDiagnosed ? _self.isDiagnosed : isDiagnosed // ignore: cast_nullable_to_non_nullable
as bool,isTreated: null == isTreated ? _self.isTreated : isTreated // ignore: cast_nullable_to_non_nullable
as bool,startAge: freezed == startAge ? _self.startAge : startAge // ignore: cast_nullable_to_non_nullable
as int?,endAge: freezed == endAge ? _self.endAge : endAge // ignore: cast_nullable_to_non_nullable
as int?,symptomIds: null == symptomIds ? _self._symptomIds : symptomIds // ignore: cast_nullable_to_non_nullable
as List<String>,physicalHealthEffect: null == physicalHealthEffect ? _self.physicalHealthEffect : physicalHealthEffect // ignore: cast_nullable_to_non_nullable
as double,mentalHealthEffect: null == mentalHealthEffect ? _self.mentalHealthEffect : mentalHealthEffect // ignore: cast_nullable_to_non_nullable
as double,timeCostMultiplier: null == timeCostMultiplier ? _self.timeCostMultiplier : timeCostMultiplier // ignore: cast_nullable_to_non_nullable
as double,workPerformanceEffect: null == workPerformanceEffect ? _self.workPerformanceEffect : workPerformanceEffect // ignore: cast_nullable_to_non_nullable
as double,studyPerformanceEffect: null == studyPerformanceEffect ? _self.studyPerformanceEffect : studyPerformanceEffect // ignore: cast_nullable_to_non_nullable
as double,relationshipEffect: null == relationshipEffect ? _self.relationshipEffect : relationshipEffect // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
