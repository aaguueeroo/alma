// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Job {

 String get id; String get name; String get description; JobType get type; String? get field; int get baseSalary; int get timeCost; List<JobLevel> get levels; List<AccessCondition> get accessConditions; List<AccessCondition> get interviewConditions; EducationLevel? get requiredEducationLevel;
/// Create a copy of Job
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobCopyWith<Job> get copyWith => _$JobCopyWithImpl<Job>(this as Job, _$identity);

  /// Serializes this Job to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Job&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type)&&(identical(other.field, field) || other.field == field)&&(identical(other.baseSalary, baseSalary) || other.baseSalary == baseSalary)&&(identical(other.timeCost, timeCost) || other.timeCost == timeCost)&&const DeepCollectionEquality().equals(other.levels, levels)&&const DeepCollectionEquality().equals(other.accessConditions, accessConditions)&&const DeepCollectionEquality().equals(other.interviewConditions, interviewConditions)&&(identical(other.requiredEducationLevel, requiredEducationLevel) || other.requiredEducationLevel == requiredEducationLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,type,field,baseSalary,timeCost,const DeepCollectionEquality().hash(levels),const DeepCollectionEquality().hash(accessConditions),const DeepCollectionEquality().hash(interviewConditions),requiredEducationLevel);

@override
String toString() {
  return 'Job(id: $id, name: $name, description: $description, type: $type, field: $field, baseSalary: $baseSalary, timeCost: $timeCost, levels: $levels, accessConditions: $accessConditions, interviewConditions: $interviewConditions, requiredEducationLevel: $requiredEducationLevel)';
}


}

/// @nodoc
abstract mixin class $JobCopyWith<$Res>  {
  factory $JobCopyWith(Job value, $Res Function(Job) _then) = _$JobCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, JobType type, String? field, int baseSalary, int timeCost, List<JobLevel> levels, List<AccessCondition> accessConditions, List<AccessCondition> interviewConditions, EducationLevel? requiredEducationLevel
});




}
/// @nodoc
class _$JobCopyWithImpl<$Res>
    implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._self, this._then);

  final Job _self;
  final $Res Function(Job) _then;

/// Create a copy of Job
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? type = null,Object? field = freezed,Object? baseSalary = null,Object? timeCost = null,Object? levels = null,Object? accessConditions = null,Object? interviewConditions = null,Object? requiredEducationLevel = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as JobType,field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String?,baseSalary: null == baseSalary ? _self.baseSalary : baseSalary // ignore: cast_nullable_to_non_nullable
as int,timeCost: null == timeCost ? _self.timeCost : timeCost // ignore: cast_nullable_to_non_nullable
as int,levels: null == levels ? _self.levels : levels // ignore: cast_nullable_to_non_nullable
as List<JobLevel>,accessConditions: null == accessConditions ? _self.accessConditions : accessConditions // ignore: cast_nullable_to_non_nullable
as List<AccessCondition>,interviewConditions: null == interviewConditions ? _self.interviewConditions : interviewConditions // ignore: cast_nullable_to_non_nullable
as List<AccessCondition>,requiredEducationLevel: freezed == requiredEducationLevel ? _self.requiredEducationLevel : requiredEducationLevel // ignore: cast_nullable_to_non_nullable
as EducationLevel?,
  ));
}

}


/// Adds pattern-matching-related methods to [Job].
extension JobPatterns on Job {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Job value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Job() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Job value)  $default,){
final _that = this;
switch (_that) {
case _Job():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Job value)?  $default,){
final _that = this;
switch (_that) {
case _Job() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  JobType type,  String? field,  int baseSalary,  int timeCost,  List<JobLevel> levels,  List<AccessCondition> accessConditions,  List<AccessCondition> interviewConditions,  EducationLevel? requiredEducationLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Job() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.type,_that.field,_that.baseSalary,_that.timeCost,_that.levels,_that.accessConditions,_that.interviewConditions,_that.requiredEducationLevel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  JobType type,  String? field,  int baseSalary,  int timeCost,  List<JobLevel> levels,  List<AccessCondition> accessConditions,  List<AccessCondition> interviewConditions,  EducationLevel? requiredEducationLevel)  $default,) {final _that = this;
switch (_that) {
case _Job():
return $default(_that.id,_that.name,_that.description,_that.type,_that.field,_that.baseSalary,_that.timeCost,_that.levels,_that.accessConditions,_that.interviewConditions,_that.requiredEducationLevel);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  JobType type,  String? field,  int baseSalary,  int timeCost,  List<JobLevel> levels,  List<AccessCondition> accessConditions,  List<AccessCondition> interviewConditions,  EducationLevel? requiredEducationLevel)?  $default,) {final _that = this;
switch (_that) {
case _Job() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.type,_that.field,_that.baseSalary,_that.timeCost,_that.levels,_that.accessConditions,_that.interviewConditions,_that.requiredEducationLevel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Job implements Job {
  const _Job({required this.id, required this.name, required this.description, required this.type, this.field, required this.baseSalary, required this.timeCost, required final  List<JobLevel> levels, final  List<AccessCondition> accessConditions = const [], final  List<AccessCondition> interviewConditions = const [], this.requiredEducationLevel}): _levels = levels,_accessConditions = accessConditions,_interviewConditions = interviewConditions;
  factory _Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
@override final  JobType type;
@override final  String? field;
@override final  int baseSalary;
@override final  int timeCost;
 final  List<JobLevel> _levels;
@override List<JobLevel> get levels {
  if (_levels is EqualUnmodifiableListView) return _levels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_levels);
}

 final  List<AccessCondition> _accessConditions;
@override@JsonKey() List<AccessCondition> get accessConditions {
  if (_accessConditions is EqualUnmodifiableListView) return _accessConditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accessConditions);
}

 final  List<AccessCondition> _interviewConditions;
@override@JsonKey() List<AccessCondition> get interviewConditions {
  if (_interviewConditions is EqualUnmodifiableListView) return _interviewConditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interviewConditions);
}

@override final  EducationLevel? requiredEducationLevel;

/// Create a copy of Job
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobCopyWith<_Job> get copyWith => __$JobCopyWithImpl<_Job>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JobToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Job&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type)&&(identical(other.field, field) || other.field == field)&&(identical(other.baseSalary, baseSalary) || other.baseSalary == baseSalary)&&(identical(other.timeCost, timeCost) || other.timeCost == timeCost)&&const DeepCollectionEquality().equals(other._levels, _levels)&&const DeepCollectionEquality().equals(other._accessConditions, _accessConditions)&&const DeepCollectionEquality().equals(other._interviewConditions, _interviewConditions)&&(identical(other.requiredEducationLevel, requiredEducationLevel) || other.requiredEducationLevel == requiredEducationLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,type,field,baseSalary,timeCost,const DeepCollectionEquality().hash(_levels),const DeepCollectionEquality().hash(_accessConditions),const DeepCollectionEquality().hash(_interviewConditions),requiredEducationLevel);

@override
String toString() {
  return 'Job(id: $id, name: $name, description: $description, type: $type, field: $field, baseSalary: $baseSalary, timeCost: $timeCost, levels: $levels, accessConditions: $accessConditions, interviewConditions: $interviewConditions, requiredEducationLevel: $requiredEducationLevel)';
}


}

/// @nodoc
abstract mixin class _$JobCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$JobCopyWith(_Job value, $Res Function(_Job) _then) = __$JobCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, JobType type, String? field, int baseSalary, int timeCost, List<JobLevel> levels, List<AccessCondition> accessConditions, List<AccessCondition> interviewConditions, EducationLevel? requiredEducationLevel
});




}
/// @nodoc
class __$JobCopyWithImpl<$Res>
    implements _$JobCopyWith<$Res> {
  __$JobCopyWithImpl(this._self, this._then);

  final _Job _self;
  final $Res Function(_Job) _then;

/// Create a copy of Job
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? type = null,Object? field = freezed,Object? baseSalary = null,Object? timeCost = null,Object? levels = null,Object? accessConditions = null,Object? interviewConditions = null,Object? requiredEducationLevel = freezed,}) {
  return _then(_Job(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as JobType,field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String?,baseSalary: null == baseSalary ? _self.baseSalary : baseSalary // ignore: cast_nullable_to_non_nullable
as int,timeCost: null == timeCost ? _self.timeCost : timeCost // ignore: cast_nullable_to_non_nullable
as int,levels: null == levels ? _self._levels : levels // ignore: cast_nullable_to_non_nullable
as List<JobLevel>,accessConditions: null == accessConditions ? _self._accessConditions : accessConditions // ignore: cast_nullable_to_non_nullable
as List<AccessCondition>,interviewConditions: null == interviewConditions ? _self._interviewConditions : interviewConditions // ignore: cast_nullable_to_non_nullable
as List<AccessCondition>,requiredEducationLevel: freezed == requiredEducationLevel ? _self.requiredEducationLevel : requiredEducationLevel // ignore: cast_nullable_to_non_nullable
as EducationLevel?,
  ));
}


}

// dart format on
