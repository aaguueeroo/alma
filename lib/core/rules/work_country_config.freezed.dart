// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_country_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkCountryConfig {

 String get countryCode; int get maxFullTimeJobs; int get maxPartTimeJobs; int get maxWeeklyHours; double get promotionBaseChance; double get promotionPerformanceScaling; int get jobPoolSize; int get casualJobPoolSize; int get promotionMinPerformance; int get minAgeForNoEducationJobs; int get firePerformanceThreshold; bool get fireAtZeroPerformance; double get fireBaseChance; double get fireChanceScaling;
/// Create a copy of WorkCountryConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkCountryConfigCopyWith<WorkCountryConfig> get copyWith => _$WorkCountryConfigCopyWithImpl<WorkCountryConfig>(this as WorkCountryConfig, _$identity);

  /// Serializes this WorkCountryConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkCountryConfig&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.maxFullTimeJobs, maxFullTimeJobs) || other.maxFullTimeJobs == maxFullTimeJobs)&&(identical(other.maxPartTimeJobs, maxPartTimeJobs) || other.maxPartTimeJobs == maxPartTimeJobs)&&(identical(other.maxWeeklyHours, maxWeeklyHours) || other.maxWeeklyHours == maxWeeklyHours)&&(identical(other.promotionBaseChance, promotionBaseChance) || other.promotionBaseChance == promotionBaseChance)&&(identical(other.promotionPerformanceScaling, promotionPerformanceScaling) || other.promotionPerformanceScaling == promotionPerformanceScaling)&&(identical(other.jobPoolSize, jobPoolSize) || other.jobPoolSize == jobPoolSize)&&(identical(other.casualJobPoolSize, casualJobPoolSize) || other.casualJobPoolSize == casualJobPoolSize)&&(identical(other.promotionMinPerformance, promotionMinPerformance) || other.promotionMinPerformance == promotionMinPerformance)&&(identical(other.minAgeForNoEducationJobs, minAgeForNoEducationJobs) || other.minAgeForNoEducationJobs == minAgeForNoEducationJobs)&&(identical(other.firePerformanceThreshold, firePerformanceThreshold) || other.firePerformanceThreshold == firePerformanceThreshold)&&(identical(other.fireAtZeroPerformance, fireAtZeroPerformance) || other.fireAtZeroPerformance == fireAtZeroPerformance)&&(identical(other.fireBaseChance, fireBaseChance) || other.fireBaseChance == fireBaseChance)&&(identical(other.fireChanceScaling, fireChanceScaling) || other.fireChanceScaling == fireChanceScaling));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryCode,maxFullTimeJobs,maxPartTimeJobs,maxWeeklyHours,promotionBaseChance,promotionPerformanceScaling,jobPoolSize,casualJobPoolSize,promotionMinPerformance,minAgeForNoEducationJobs,firePerformanceThreshold,fireAtZeroPerformance,fireBaseChance,fireChanceScaling);

@override
String toString() {
  return 'WorkCountryConfig(countryCode: $countryCode, maxFullTimeJobs: $maxFullTimeJobs, maxPartTimeJobs: $maxPartTimeJobs, maxWeeklyHours: $maxWeeklyHours, promotionBaseChance: $promotionBaseChance, promotionPerformanceScaling: $promotionPerformanceScaling, jobPoolSize: $jobPoolSize, casualJobPoolSize: $casualJobPoolSize, promotionMinPerformance: $promotionMinPerformance, minAgeForNoEducationJobs: $minAgeForNoEducationJobs, firePerformanceThreshold: $firePerformanceThreshold, fireAtZeroPerformance: $fireAtZeroPerformance, fireBaseChance: $fireBaseChance, fireChanceScaling: $fireChanceScaling)';
}


}

/// @nodoc
abstract mixin class $WorkCountryConfigCopyWith<$Res>  {
  factory $WorkCountryConfigCopyWith(WorkCountryConfig value, $Res Function(WorkCountryConfig) _then) = _$WorkCountryConfigCopyWithImpl;
@useResult
$Res call({
 String countryCode, int maxFullTimeJobs, int maxPartTimeJobs, int maxWeeklyHours, double promotionBaseChance, double promotionPerformanceScaling, int jobPoolSize, int casualJobPoolSize, int promotionMinPerformance, int minAgeForNoEducationJobs, int firePerformanceThreshold, bool fireAtZeroPerformance, double fireBaseChance, double fireChanceScaling
});




}
/// @nodoc
class _$WorkCountryConfigCopyWithImpl<$Res>
    implements $WorkCountryConfigCopyWith<$Res> {
  _$WorkCountryConfigCopyWithImpl(this._self, this._then);

  final WorkCountryConfig _self;
  final $Res Function(WorkCountryConfig) _then;

/// Create a copy of WorkCountryConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countryCode = null,Object? maxFullTimeJobs = null,Object? maxPartTimeJobs = null,Object? maxWeeklyHours = null,Object? promotionBaseChance = null,Object? promotionPerformanceScaling = null,Object? jobPoolSize = null,Object? casualJobPoolSize = null,Object? promotionMinPerformance = null,Object? minAgeForNoEducationJobs = null,Object? firePerformanceThreshold = null,Object? fireAtZeroPerformance = null,Object? fireBaseChance = null,Object? fireChanceScaling = null,}) {
  return _then(_self.copyWith(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,maxFullTimeJobs: null == maxFullTimeJobs ? _self.maxFullTimeJobs : maxFullTimeJobs // ignore: cast_nullable_to_non_nullable
as int,maxPartTimeJobs: null == maxPartTimeJobs ? _self.maxPartTimeJobs : maxPartTimeJobs // ignore: cast_nullable_to_non_nullable
as int,maxWeeklyHours: null == maxWeeklyHours ? _self.maxWeeklyHours : maxWeeklyHours // ignore: cast_nullable_to_non_nullable
as int,promotionBaseChance: null == promotionBaseChance ? _self.promotionBaseChance : promotionBaseChance // ignore: cast_nullable_to_non_nullable
as double,promotionPerformanceScaling: null == promotionPerformanceScaling ? _self.promotionPerformanceScaling : promotionPerformanceScaling // ignore: cast_nullable_to_non_nullable
as double,jobPoolSize: null == jobPoolSize ? _self.jobPoolSize : jobPoolSize // ignore: cast_nullable_to_non_nullable
as int,casualJobPoolSize: null == casualJobPoolSize ? _self.casualJobPoolSize : casualJobPoolSize // ignore: cast_nullable_to_non_nullable
as int,promotionMinPerformance: null == promotionMinPerformance ? _self.promotionMinPerformance : promotionMinPerformance // ignore: cast_nullable_to_non_nullable
as int,minAgeForNoEducationJobs: null == minAgeForNoEducationJobs ? _self.minAgeForNoEducationJobs : minAgeForNoEducationJobs // ignore: cast_nullable_to_non_nullable
as int,firePerformanceThreshold: null == firePerformanceThreshold ? _self.firePerformanceThreshold : firePerformanceThreshold // ignore: cast_nullable_to_non_nullable
as int,fireAtZeroPerformance: null == fireAtZeroPerformance ? _self.fireAtZeroPerformance : fireAtZeroPerformance // ignore: cast_nullable_to_non_nullable
as bool,fireBaseChance: null == fireBaseChance ? _self.fireBaseChance : fireBaseChance // ignore: cast_nullable_to_non_nullable
as double,fireChanceScaling: null == fireChanceScaling ? _self.fireChanceScaling : fireChanceScaling // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkCountryConfig].
extension WorkCountryConfigPatterns on WorkCountryConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkCountryConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkCountryConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkCountryConfig value)  $default,){
final _that = this;
switch (_that) {
case _WorkCountryConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkCountryConfig value)?  $default,){
final _that = this;
switch (_that) {
case _WorkCountryConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String countryCode,  int maxFullTimeJobs,  int maxPartTimeJobs,  int maxWeeklyHours,  double promotionBaseChance,  double promotionPerformanceScaling,  int jobPoolSize,  int casualJobPoolSize,  int promotionMinPerformance,  int minAgeForNoEducationJobs,  int firePerformanceThreshold,  bool fireAtZeroPerformance,  double fireBaseChance,  double fireChanceScaling)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkCountryConfig() when $default != null:
return $default(_that.countryCode,_that.maxFullTimeJobs,_that.maxPartTimeJobs,_that.maxWeeklyHours,_that.promotionBaseChance,_that.promotionPerformanceScaling,_that.jobPoolSize,_that.casualJobPoolSize,_that.promotionMinPerformance,_that.minAgeForNoEducationJobs,_that.firePerformanceThreshold,_that.fireAtZeroPerformance,_that.fireBaseChance,_that.fireChanceScaling);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String countryCode,  int maxFullTimeJobs,  int maxPartTimeJobs,  int maxWeeklyHours,  double promotionBaseChance,  double promotionPerformanceScaling,  int jobPoolSize,  int casualJobPoolSize,  int promotionMinPerformance,  int minAgeForNoEducationJobs,  int firePerformanceThreshold,  bool fireAtZeroPerformance,  double fireBaseChance,  double fireChanceScaling)  $default,) {final _that = this;
switch (_that) {
case _WorkCountryConfig():
return $default(_that.countryCode,_that.maxFullTimeJobs,_that.maxPartTimeJobs,_that.maxWeeklyHours,_that.promotionBaseChance,_that.promotionPerformanceScaling,_that.jobPoolSize,_that.casualJobPoolSize,_that.promotionMinPerformance,_that.minAgeForNoEducationJobs,_that.firePerformanceThreshold,_that.fireAtZeroPerformance,_that.fireBaseChance,_that.fireChanceScaling);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String countryCode,  int maxFullTimeJobs,  int maxPartTimeJobs,  int maxWeeklyHours,  double promotionBaseChance,  double promotionPerformanceScaling,  int jobPoolSize,  int casualJobPoolSize,  int promotionMinPerformance,  int minAgeForNoEducationJobs,  int firePerformanceThreshold,  bool fireAtZeroPerformance,  double fireBaseChance,  double fireChanceScaling)?  $default,) {final _that = this;
switch (_that) {
case _WorkCountryConfig() when $default != null:
return $default(_that.countryCode,_that.maxFullTimeJobs,_that.maxPartTimeJobs,_that.maxWeeklyHours,_that.promotionBaseChance,_that.promotionPerformanceScaling,_that.jobPoolSize,_that.casualJobPoolSize,_that.promotionMinPerformance,_that.minAgeForNoEducationJobs,_that.firePerformanceThreshold,_that.fireAtZeroPerformance,_that.fireBaseChance,_that.fireChanceScaling);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkCountryConfig implements WorkCountryConfig {
  const _WorkCountryConfig({required this.countryCode, this.maxFullTimeJobs = 1, this.maxPartTimeJobs = 1, this.maxWeeklyHours = 48, this.promotionBaseChance = 0.05, this.promotionPerformanceScaling = 0.01, this.jobPoolSize = 4, this.casualJobPoolSize = 2, this.promotionMinPerformance = 70, this.minAgeForNoEducationJobs = 16, this.firePerformanceThreshold = 30, this.fireAtZeroPerformance = true, this.fireBaseChance = 0.02, this.fireChanceScaling = 0.02});
  factory _WorkCountryConfig.fromJson(Map<String, dynamic> json) => _$WorkCountryConfigFromJson(json);

@override final  String countryCode;
@override@JsonKey() final  int maxFullTimeJobs;
@override@JsonKey() final  int maxPartTimeJobs;
@override@JsonKey() final  int maxWeeklyHours;
@override@JsonKey() final  double promotionBaseChance;
@override@JsonKey() final  double promotionPerformanceScaling;
@override@JsonKey() final  int jobPoolSize;
@override@JsonKey() final  int casualJobPoolSize;
@override@JsonKey() final  int promotionMinPerformance;
@override@JsonKey() final  int minAgeForNoEducationJobs;
@override@JsonKey() final  int firePerformanceThreshold;
@override@JsonKey() final  bool fireAtZeroPerformance;
@override@JsonKey() final  double fireBaseChance;
@override@JsonKey() final  double fireChanceScaling;

/// Create a copy of WorkCountryConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkCountryConfigCopyWith<_WorkCountryConfig> get copyWith => __$WorkCountryConfigCopyWithImpl<_WorkCountryConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkCountryConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkCountryConfig&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.maxFullTimeJobs, maxFullTimeJobs) || other.maxFullTimeJobs == maxFullTimeJobs)&&(identical(other.maxPartTimeJobs, maxPartTimeJobs) || other.maxPartTimeJobs == maxPartTimeJobs)&&(identical(other.maxWeeklyHours, maxWeeklyHours) || other.maxWeeklyHours == maxWeeklyHours)&&(identical(other.promotionBaseChance, promotionBaseChance) || other.promotionBaseChance == promotionBaseChance)&&(identical(other.promotionPerformanceScaling, promotionPerformanceScaling) || other.promotionPerformanceScaling == promotionPerformanceScaling)&&(identical(other.jobPoolSize, jobPoolSize) || other.jobPoolSize == jobPoolSize)&&(identical(other.casualJobPoolSize, casualJobPoolSize) || other.casualJobPoolSize == casualJobPoolSize)&&(identical(other.promotionMinPerformance, promotionMinPerformance) || other.promotionMinPerformance == promotionMinPerformance)&&(identical(other.minAgeForNoEducationJobs, minAgeForNoEducationJobs) || other.minAgeForNoEducationJobs == minAgeForNoEducationJobs)&&(identical(other.firePerformanceThreshold, firePerformanceThreshold) || other.firePerformanceThreshold == firePerformanceThreshold)&&(identical(other.fireAtZeroPerformance, fireAtZeroPerformance) || other.fireAtZeroPerformance == fireAtZeroPerformance)&&(identical(other.fireBaseChance, fireBaseChance) || other.fireBaseChance == fireBaseChance)&&(identical(other.fireChanceScaling, fireChanceScaling) || other.fireChanceScaling == fireChanceScaling));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryCode,maxFullTimeJobs,maxPartTimeJobs,maxWeeklyHours,promotionBaseChance,promotionPerformanceScaling,jobPoolSize,casualJobPoolSize,promotionMinPerformance,minAgeForNoEducationJobs,firePerformanceThreshold,fireAtZeroPerformance,fireBaseChance,fireChanceScaling);

@override
String toString() {
  return 'WorkCountryConfig(countryCode: $countryCode, maxFullTimeJobs: $maxFullTimeJobs, maxPartTimeJobs: $maxPartTimeJobs, maxWeeklyHours: $maxWeeklyHours, promotionBaseChance: $promotionBaseChance, promotionPerformanceScaling: $promotionPerformanceScaling, jobPoolSize: $jobPoolSize, casualJobPoolSize: $casualJobPoolSize, promotionMinPerformance: $promotionMinPerformance, minAgeForNoEducationJobs: $minAgeForNoEducationJobs, firePerformanceThreshold: $firePerformanceThreshold, fireAtZeroPerformance: $fireAtZeroPerformance, fireBaseChance: $fireBaseChance, fireChanceScaling: $fireChanceScaling)';
}


}

/// @nodoc
abstract mixin class _$WorkCountryConfigCopyWith<$Res> implements $WorkCountryConfigCopyWith<$Res> {
  factory _$WorkCountryConfigCopyWith(_WorkCountryConfig value, $Res Function(_WorkCountryConfig) _then) = __$WorkCountryConfigCopyWithImpl;
@override @useResult
$Res call({
 String countryCode, int maxFullTimeJobs, int maxPartTimeJobs, int maxWeeklyHours, double promotionBaseChance, double promotionPerformanceScaling, int jobPoolSize, int casualJobPoolSize, int promotionMinPerformance, int minAgeForNoEducationJobs, int firePerformanceThreshold, bool fireAtZeroPerformance, double fireBaseChance, double fireChanceScaling
});




}
/// @nodoc
class __$WorkCountryConfigCopyWithImpl<$Res>
    implements _$WorkCountryConfigCopyWith<$Res> {
  __$WorkCountryConfigCopyWithImpl(this._self, this._then);

  final _WorkCountryConfig _self;
  final $Res Function(_WorkCountryConfig) _then;

/// Create a copy of WorkCountryConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countryCode = null,Object? maxFullTimeJobs = null,Object? maxPartTimeJobs = null,Object? maxWeeklyHours = null,Object? promotionBaseChance = null,Object? promotionPerformanceScaling = null,Object? jobPoolSize = null,Object? casualJobPoolSize = null,Object? promotionMinPerformance = null,Object? minAgeForNoEducationJobs = null,Object? firePerformanceThreshold = null,Object? fireAtZeroPerformance = null,Object? fireBaseChance = null,Object? fireChanceScaling = null,}) {
  return _then(_WorkCountryConfig(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,maxFullTimeJobs: null == maxFullTimeJobs ? _self.maxFullTimeJobs : maxFullTimeJobs // ignore: cast_nullable_to_non_nullable
as int,maxPartTimeJobs: null == maxPartTimeJobs ? _self.maxPartTimeJobs : maxPartTimeJobs // ignore: cast_nullable_to_non_nullable
as int,maxWeeklyHours: null == maxWeeklyHours ? _self.maxWeeklyHours : maxWeeklyHours // ignore: cast_nullable_to_non_nullable
as int,promotionBaseChance: null == promotionBaseChance ? _self.promotionBaseChance : promotionBaseChance // ignore: cast_nullable_to_non_nullable
as double,promotionPerformanceScaling: null == promotionPerformanceScaling ? _self.promotionPerformanceScaling : promotionPerformanceScaling // ignore: cast_nullable_to_non_nullable
as double,jobPoolSize: null == jobPoolSize ? _self.jobPoolSize : jobPoolSize // ignore: cast_nullable_to_non_nullable
as int,casualJobPoolSize: null == casualJobPoolSize ? _self.casualJobPoolSize : casualJobPoolSize // ignore: cast_nullable_to_non_nullable
as int,promotionMinPerformance: null == promotionMinPerformance ? _self.promotionMinPerformance : promotionMinPerformance // ignore: cast_nullable_to_non_nullable
as int,minAgeForNoEducationJobs: null == minAgeForNoEducationJobs ? _self.minAgeForNoEducationJobs : minAgeForNoEducationJobs // ignore: cast_nullable_to_non_nullable
as int,firePerformanceThreshold: null == firePerformanceThreshold ? _self.firePerformanceThreshold : firePerformanceThreshold // ignore: cast_nullable_to_non_nullable
as int,fireAtZeroPerformance: null == fireAtZeroPerformance ? _self.fireAtZeroPerformance : fireAtZeroPerformance // ignore: cast_nullable_to_non_nullable
as bool,fireBaseChance: null == fireBaseChance ? _self.fireBaseChance : fireBaseChance // ignore: cast_nullable_to_non_nullable
as double,fireChanceScaling: null == fireChanceScaling ? _self.fireChanceScaling : fireChanceScaling // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
