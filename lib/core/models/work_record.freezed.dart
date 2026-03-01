// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkRecord {

 String get jobId; String get jobName; JobType get type; int get finalLevel; int get startAge; int get endAge; int get yearsWorked; String get quitReason; int get finalSalary; bool? get wasFriendlyDismissal;
/// Create a copy of WorkRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkRecordCopyWith<WorkRecord> get copyWith => _$WorkRecordCopyWithImpl<WorkRecord>(this as WorkRecord, _$identity);

  /// Serializes this WorkRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkRecord&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.jobName, jobName) || other.jobName == jobName)&&(identical(other.type, type) || other.type == type)&&(identical(other.finalLevel, finalLevel) || other.finalLevel == finalLevel)&&(identical(other.startAge, startAge) || other.startAge == startAge)&&(identical(other.endAge, endAge) || other.endAge == endAge)&&(identical(other.yearsWorked, yearsWorked) || other.yearsWorked == yearsWorked)&&(identical(other.quitReason, quitReason) || other.quitReason == quitReason)&&(identical(other.finalSalary, finalSalary) || other.finalSalary == finalSalary)&&(identical(other.wasFriendlyDismissal, wasFriendlyDismissal) || other.wasFriendlyDismissal == wasFriendlyDismissal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jobId,jobName,type,finalLevel,startAge,endAge,yearsWorked,quitReason,finalSalary,wasFriendlyDismissal);

@override
String toString() {
  return 'WorkRecord(jobId: $jobId, jobName: $jobName, type: $type, finalLevel: $finalLevel, startAge: $startAge, endAge: $endAge, yearsWorked: $yearsWorked, quitReason: $quitReason, finalSalary: $finalSalary, wasFriendlyDismissal: $wasFriendlyDismissal)';
}


}

/// @nodoc
abstract mixin class $WorkRecordCopyWith<$Res>  {
  factory $WorkRecordCopyWith(WorkRecord value, $Res Function(WorkRecord) _then) = _$WorkRecordCopyWithImpl;
@useResult
$Res call({
 String jobId, String jobName, JobType type, int finalLevel, int startAge, int endAge, int yearsWorked, String quitReason, int finalSalary, bool? wasFriendlyDismissal
});




}
/// @nodoc
class _$WorkRecordCopyWithImpl<$Res>
    implements $WorkRecordCopyWith<$Res> {
  _$WorkRecordCopyWithImpl(this._self, this._then);

  final WorkRecord _self;
  final $Res Function(WorkRecord) _then;

/// Create a copy of WorkRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jobId = null,Object? jobName = null,Object? type = null,Object? finalLevel = null,Object? startAge = null,Object? endAge = null,Object? yearsWorked = null,Object? quitReason = null,Object? finalSalary = null,Object? wasFriendlyDismissal = freezed,}) {
  return _then(_self.copyWith(
jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,jobName: null == jobName ? _self.jobName : jobName // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as JobType,finalLevel: null == finalLevel ? _self.finalLevel : finalLevel // ignore: cast_nullable_to_non_nullable
as int,startAge: null == startAge ? _self.startAge : startAge // ignore: cast_nullable_to_non_nullable
as int,endAge: null == endAge ? _self.endAge : endAge // ignore: cast_nullable_to_non_nullable
as int,yearsWorked: null == yearsWorked ? _self.yearsWorked : yearsWorked // ignore: cast_nullable_to_non_nullable
as int,quitReason: null == quitReason ? _self.quitReason : quitReason // ignore: cast_nullable_to_non_nullable
as String,finalSalary: null == finalSalary ? _self.finalSalary : finalSalary // ignore: cast_nullable_to_non_nullable
as int,wasFriendlyDismissal: freezed == wasFriendlyDismissal ? _self.wasFriendlyDismissal : wasFriendlyDismissal // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkRecord].
extension WorkRecordPatterns on WorkRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkRecord value)  $default,){
final _that = this;
switch (_that) {
case _WorkRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkRecord value)?  $default,){
final _that = this;
switch (_that) {
case _WorkRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String jobId,  String jobName,  JobType type,  int finalLevel,  int startAge,  int endAge,  int yearsWorked,  String quitReason,  int finalSalary,  bool? wasFriendlyDismissal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkRecord() when $default != null:
return $default(_that.jobId,_that.jobName,_that.type,_that.finalLevel,_that.startAge,_that.endAge,_that.yearsWorked,_that.quitReason,_that.finalSalary,_that.wasFriendlyDismissal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String jobId,  String jobName,  JobType type,  int finalLevel,  int startAge,  int endAge,  int yearsWorked,  String quitReason,  int finalSalary,  bool? wasFriendlyDismissal)  $default,) {final _that = this;
switch (_that) {
case _WorkRecord():
return $default(_that.jobId,_that.jobName,_that.type,_that.finalLevel,_that.startAge,_that.endAge,_that.yearsWorked,_that.quitReason,_that.finalSalary,_that.wasFriendlyDismissal);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String jobId,  String jobName,  JobType type,  int finalLevel,  int startAge,  int endAge,  int yearsWorked,  String quitReason,  int finalSalary,  bool? wasFriendlyDismissal)?  $default,) {final _that = this;
switch (_that) {
case _WorkRecord() when $default != null:
return $default(_that.jobId,_that.jobName,_that.type,_that.finalLevel,_that.startAge,_that.endAge,_that.yearsWorked,_that.quitReason,_that.finalSalary,_that.wasFriendlyDismissal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkRecord implements WorkRecord {
  const _WorkRecord({required this.jobId, required this.jobName, required this.type, required this.finalLevel, required this.startAge, required this.endAge, required this.yearsWorked, required this.quitReason, required this.finalSalary, this.wasFriendlyDismissal});
  factory _WorkRecord.fromJson(Map<String, dynamic> json) => _$WorkRecordFromJson(json);

@override final  String jobId;
@override final  String jobName;
@override final  JobType type;
@override final  int finalLevel;
@override final  int startAge;
@override final  int endAge;
@override final  int yearsWorked;
@override final  String quitReason;
@override final  int finalSalary;
@override final  bool? wasFriendlyDismissal;

/// Create a copy of WorkRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkRecordCopyWith<_WorkRecord> get copyWith => __$WorkRecordCopyWithImpl<_WorkRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkRecordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkRecord&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.jobName, jobName) || other.jobName == jobName)&&(identical(other.type, type) || other.type == type)&&(identical(other.finalLevel, finalLevel) || other.finalLevel == finalLevel)&&(identical(other.startAge, startAge) || other.startAge == startAge)&&(identical(other.endAge, endAge) || other.endAge == endAge)&&(identical(other.yearsWorked, yearsWorked) || other.yearsWorked == yearsWorked)&&(identical(other.quitReason, quitReason) || other.quitReason == quitReason)&&(identical(other.finalSalary, finalSalary) || other.finalSalary == finalSalary)&&(identical(other.wasFriendlyDismissal, wasFriendlyDismissal) || other.wasFriendlyDismissal == wasFriendlyDismissal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jobId,jobName,type,finalLevel,startAge,endAge,yearsWorked,quitReason,finalSalary,wasFriendlyDismissal);

@override
String toString() {
  return 'WorkRecord(jobId: $jobId, jobName: $jobName, type: $type, finalLevel: $finalLevel, startAge: $startAge, endAge: $endAge, yearsWorked: $yearsWorked, quitReason: $quitReason, finalSalary: $finalSalary, wasFriendlyDismissal: $wasFriendlyDismissal)';
}


}

/// @nodoc
abstract mixin class _$WorkRecordCopyWith<$Res> implements $WorkRecordCopyWith<$Res> {
  factory _$WorkRecordCopyWith(_WorkRecord value, $Res Function(_WorkRecord) _then) = __$WorkRecordCopyWithImpl;
@override @useResult
$Res call({
 String jobId, String jobName, JobType type, int finalLevel, int startAge, int endAge, int yearsWorked, String quitReason, int finalSalary, bool? wasFriendlyDismissal
});




}
/// @nodoc
class __$WorkRecordCopyWithImpl<$Res>
    implements _$WorkRecordCopyWith<$Res> {
  __$WorkRecordCopyWithImpl(this._self, this._then);

  final _WorkRecord _self;
  final $Res Function(_WorkRecord) _then;

/// Create a copy of WorkRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jobId = null,Object? jobName = null,Object? type = null,Object? finalLevel = null,Object? startAge = null,Object? endAge = null,Object? yearsWorked = null,Object? quitReason = null,Object? finalSalary = null,Object? wasFriendlyDismissal = freezed,}) {
  return _then(_WorkRecord(
jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,jobName: null == jobName ? _self.jobName : jobName // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as JobType,finalLevel: null == finalLevel ? _self.finalLevel : finalLevel // ignore: cast_nullable_to_non_nullable
as int,startAge: null == startAge ? _self.startAge : startAge // ignore: cast_nullable_to_non_nullable
as int,endAge: null == endAge ? _self.endAge : endAge // ignore: cast_nullable_to_non_nullable
as int,yearsWorked: null == yearsWorked ? _self.yearsWorked : yearsWorked // ignore: cast_nullable_to_non_nullable
as int,quitReason: null == quitReason ? _self.quitReason : quitReason // ignore: cast_nullable_to_non_nullable
as String,finalSalary: null == finalSalary ? _self.finalSalary : finalSalary // ignore: cast_nullable_to_non_nullable
as int,wasFriendlyDismissal: freezed == wasFriendlyDismissal ? _self.wasFriendlyDismissal : wasFriendlyDismissal // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
