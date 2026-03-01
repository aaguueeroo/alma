// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Employment {

 String get jobId; String get jobName; JobType get type; int get currentLevel; int get startAge; int get yearsWorked; int get salary; int? get lastPromotionYear; bool get isActive; int get performance; int? get hoursPerWeek;
/// Create a copy of Employment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmploymentCopyWith<Employment> get copyWith => _$EmploymentCopyWithImpl<Employment>(this as Employment, _$identity);

  /// Serializes this Employment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Employment&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.jobName, jobName) || other.jobName == jobName)&&(identical(other.type, type) || other.type == type)&&(identical(other.currentLevel, currentLevel) || other.currentLevel == currentLevel)&&(identical(other.startAge, startAge) || other.startAge == startAge)&&(identical(other.yearsWorked, yearsWorked) || other.yearsWorked == yearsWorked)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.lastPromotionYear, lastPromotionYear) || other.lastPromotionYear == lastPromotionYear)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.performance, performance) || other.performance == performance)&&(identical(other.hoursPerWeek, hoursPerWeek) || other.hoursPerWeek == hoursPerWeek));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jobId,jobName,type,currentLevel,startAge,yearsWorked,salary,lastPromotionYear,isActive,performance,hoursPerWeek);

@override
String toString() {
  return 'Employment(jobId: $jobId, jobName: $jobName, type: $type, currentLevel: $currentLevel, startAge: $startAge, yearsWorked: $yearsWorked, salary: $salary, lastPromotionYear: $lastPromotionYear, isActive: $isActive, performance: $performance, hoursPerWeek: $hoursPerWeek)';
}


}

/// @nodoc
abstract mixin class $EmploymentCopyWith<$Res>  {
  factory $EmploymentCopyWith(Employment value, $Res Function(Employment) _then) = _$EmploymentCopyWithImpl;
@useResult
$Res call({
 String jobId, String jobName, JobType type, int currentLevel, int startAge, int yearsWorked, int salary, int? lastPromotionYear, bool isActive, int performance, int? hoursPerWeek
});




}
/// @nodoc
class _$EmploymentCopyWithImpl<$Res>
    implements $EmploymentCopyWith<$Res> {
  _$EmploymentCopyWithImpl(this._self, this._then);

  final Employment _self;
  final $Res Function(Employment) _then;

/// Create a copy of Employment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jobId = null,Object? jobName = null,Object? type = null,Object? currentLevel = null,Object? startAge = null,Object? yearsWorked = null,Object? salary = null,Object? lastPromotionYear = freezed,Object? isActive = null,Object? performance = null,Object? hoursPerWeek = freezed,}) {
  return _then(_self.copyWith(
jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,jobName: null == jobName ? _self.jobName : jobName // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as JobType,currentLevel: null == currentLevel ? _self.currentLevel : currentLevel // ignore: cast_nullable_to_non_nullable
as int,startAge: null == startAge ? _self.startAge : startAge // ignore: cast_nullable_to_non_nullable
as int,yearsWorked: null == yearsWorked ? _self.yearsWorked : yearsWorked // ignore: cast_nullable_to_non_nullable
as int,salary: null == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as int,lastPromotionYear: freezed == lastPromotionYear ? _self.lastPromotionYear : lastPromotionYear // ignore: cast_nullable_to_non_nullable
as int?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,performance: null == performance ? _self.performance : performance // ignore: cast_nullable_to_non_nullable
as int,hoursPerWeek: freezed == hoursPerWeek ? _self.hoursPerWeek : hoursPerWeek // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Employment].
extension EmploymentPatterns on Employment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Employment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Employment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Employment value)  $default,){
final _that = this;
switch (_that) {
case _Employment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Employment value)?  $default,){
final _that = this;
switch (_that) {
case _Employment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String jobId,  String jobName,  JobType type,  int currentLevel,  int startAge,  int yearsWorked,  int salary,  int? lastPromotionYear,  bool isActive,  int performance,  int? hoursPerWeek)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Employment() when $default != null:
return $default(_that.jobId,_that.jobName,_that.type,_that.currentLevel,_that.startAge,_that.yearsWorked,_that.salary,_that.lastPromotionYear,_that.isActive,_that.performance,_that.hoursPerWeek);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String jobId,  String jobName,  JobType type,  int currentLevel,  int startAge,  int yearsWorked,  int salary,  int? lastPromotionYear,  bool isActive,  int performance,  int? hoursPerWeek)  $default,) {final _that = this;
switch (_that) {
case _Employment():
return $default(_that.jobId,_that.jobName,_that.type,_that.currentLevel,_that.startAge,_that.yearsWorked,_that.salary,_that.lastPromotionYear,_that.isActive,_that.performance,_that.hoursPerWeek);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String jobId,  String jobName,  JobType type,  int currentLevel,  int startAge,  int yearsWorked,  int salary,  int? lastPromotionYear,  bool isActive,  int performance,  int? hoursPerWeek)?  $default,) {final _that = this;
switch (_that) {
case _Employment() when $default != null:
return $default(_that.jobId,_that.jobName,_that.type,_that.currentLevel,_that.startAge,_that.yearsWorked,_that.salary,_that.lastPromotionYear,_that.isActive,_that.performance,_that.hoursPerWeek);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Employment implements Employment {
  const _Employment({required this.jobId, required this.jobName, required this.type, this.currentLevel = 1, required this.startAge, this.yearsWorked = 0, required this.salary, this.lastPromotionYear, this.isActive = true, this.performance = 50, this.hoursPerWeek});
  factory _Employment.fromJson(Map<String, dynamic> json) => _$EmploymentFromJson(json);

@override final  String jobId;
@override final  String jobName;
@override final  JobType type;
@override@JsonKey() final  int currentLevel;
@override final  int startAge;
@override@JsonKey() final  int yearsWorked;
@override final  int salary;
@override final  int? lastPromotionYear;
@override@JsonKey() final  bool isActive;
@override@JsonKey() final  int performance;
@override final  int? hoursPerWeek;

/// Create a copy of Employment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmploymentCopyWith<_Employment> get copyWith => __$EmploymentCopyWithImpl<_Employment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmploymentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Employment&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.jobName, jobName) || other.jobName == jobName)&&(identical(other.type, type) || other.type == type)&&(identical(other.currentLevel, currentLevel) || other.currentLevel == currentLevel)&&(identical(other.startAge, startAge) || other.startAge == startAge)&&(identical(other.yearsWorked, yearsWorked) || other.yearsWorked == yearsWorked)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.lastPromotionYear, lastPromotionYear) || other.lastPromotionYear == lastPromotionYear)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.performance, performance) || other.performance == performance)&&(identical(other.hoursPerWeek, hoursPerWeek) || other.hoursPerWeek == hoursPerWeek));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jobId,jobName,type,currentLevel,startAge,yearsWorked,salary,lastPromotionYear,isActive,performance,hoursPerWeek);

@override
String toString() {
  return 'Employment(jobId: $jobId, jobName: $jobName, type: $type, currentLevel: $currentLevel, startAge: $startAge, yearsWorked: $yearsWorked, salary: $salary, lastPromotionYear: $lastPromotionYear, isActive: $isActive, performance: $performance, hoursPerWeek: $hoursPerWeek)';
}


}

/// @nodoc
abstract mixin class _$EmploymentCopyWith<$Res> implements $EmploymentCopyWith<$Res> {
  factory _$EmploymentCopyWith(_Employment value, $Res Function(_Employment) _then) = __$EmploymentCopyWithImpl;
@override @useResult
$Res call({
 String jobId, String jobName, JobType type, int currentLevel, int startAge, int yearsWorked, int salary, int? lastPromotionYear, bool isActive, int performance, int? hoursPerWeek
});




}
/// @nodoc
class __$EmploymentCopyWithImpl<$Res>
    implements _$EmploymentCopyWith<$Res> {
  __$EmploymentCopyWithImpl(this._self, this._then);

  final _Employment _self;
  final $Res Function(_Employment) _then;

/// Create a copy of Employment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jobId = null,Object? jobName = null,Object? type = null,Object? currentLevel = null,Object? startAge = null,Object? yearsWorked = null,Object? salary = null,Object? lastPromotionYear = freezed,Object? isActive = null,Object? performance = null,Object? hoursPerWeek = freezed,}) {
  return _then(_Employment(
jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,jobName: null == jobName ? _self.jobName : jobName // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as JobType,currentLevel: null == currentLevel ? _self.currentLevel : currentLevel // ignore: cast_nullable_to_non_nullable
as int,startAge: null == startAge ? _self.startAge : startAge // ignore: cast_nullable_to_non_nullable
as int,yearsWorked: null == yearsWorked ? _self.yearsWorked : yearsWorked // ignore: cast_nullable_to_non_nullable
as int,salary: null == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as int,lastPromotionYear: freezed == lastPromotionYear ? _self.lastPromotionYear : lastPromotionYear // ignore: cast_nullable_to_non_nullable
as int?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,performance: null == performance ? _self.performance : performance // ignore: cast_nullable_to_non_nullable
as int,hoursPerWeek: freezed == hoursPerWeek ? _self.hoursPerWeek : hoursPerWeek // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
