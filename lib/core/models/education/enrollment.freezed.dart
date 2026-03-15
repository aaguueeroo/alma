// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enrollment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Enrollment {

 String get programId; EducationLevel get level; String get programName; int get yearInProgram; int get totalYears; int get repeatsInLevel; bool get isActive; String? get branch;
/// Create a copy of Enrollment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnrollmentCopyWith<Enrollment> get copyWith => _$EnrollmentCopyWithImpl<Enrollment>(this as Enrollment, _$identity);

  /// Serializes this Enrollment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Enrollment&&(identical(other.programId, programId) || other.programId == programId)&&(identical(other.level, level) || other.level == level)&&(identical(other.programName, programName) || other.programName == programName)&&(identical(other.yearInProgram, yearInProgram) || other.yearInProgram == yearInProgram)&&(identical(other.totalYears, totalYears) || other.totalYears == totalYears)&&(identical(other.repeatsInLevel, repeatsInLevel) || other.repeatsInLevel == repeatsInLevel)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.branch, branch) || other.branch == branch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,programId,level,programName,yearInProgram,totalYears,repeatsInLevel,isActive,branch);

@override
String toString() {
  return 'Enrollment(programId: $programId, level: $level, programName: $programName, yearInProgram: $yearInProgram, totalYears: $totalYears, repeatsInLevel: $repeatsInLevel, isActive: $isActive, branch: $branch)';
}


}

/// @nodoc
abstract mixin class $EnrollmentCopyWith<$Res>  {
  factory $EnrollmentCopyWith(Enrollment value, $Res Function(Enrollment) _then) = _$EnrollmentCopyWithImpl;
@useResult
$Res call({
 String programId, EducationLevel level, String programName, int yearInProgram, int totalYears, int repeatsInLevel, bool isActive, String? branch
});




}
/// @nodoc
class _$EnrollmentCopyWithImpl<$Res>
    implements $EnrollmentCopyWith<$Res> {
  _$EnrollmentCopyWithImpl(this._self, this._then);

  final Enrollment _self;
  final $Res Function(Enrollment) _then;

/// Create a copy of Enrollment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? programId = null,Object? level = null,Object? programName = null,Object? yearInProgram = null,Object? totalYears = null,Object? repeatsInLevel = null,Object? isActive = null,Object? branch = freezed,}) {
  return _then(_self.copyWith(
programId: null == programId ? _self.programId : programId // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as EducationLevel,programName: null == programName ? _self.programName : programName // ignore: cast_nullable_to_non_nullable
as String,yearInProgram: null == yearInProgram ? _self.yearInProgram : yearInProgram // ignore: cast_nullable_to_non_nullable
as int,totalYears: null == totalYears ? _self.totalYears : totalYears // ignore: cast_nullable_to_non_nullable
as int,repeatsInLevel: null == repeatsInLevel ? _self.repeatsInLevel : repeatsInLevel // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Enrollment].
extension EnrollmentPatterns on Enrollment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Enrollment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Enrollment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Enrollment value)  $default,){
final _that = this;
switch (_that) {
case _Enrollment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Enrollment value)?  $default,){
final _that = this;
switch (_that) {
case _Enrollment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String programId,  EducationLevel level,  String programName,  int yearInProgram,  int totalYears,  int repeatsInLevel,  bool isActive,  String? branch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Enrollment() when $default != null:
return $default(_that.programId,_that.level,_that.programName,_that.yearInProgram,_that.totalYears,_that.repeatsInLevel,_that.isActive,_that.branch);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String programId,  EducationLevel level,  String programName,  int yearInProgram,  int totalYears,  int repeatsInLevel,  bool isActive,  String? branch)  $default,) {final _that = this;
switch (_that) {
case _Enrollment():
return $default(_that.programId,_that.level,_that.programName,_that.yearInProgram,_that.totalYears,_that.repeatsInLevel,_that.isActive,_that.branch);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String programId,  EducationLevel level,  String programName,  int yearInProgram,  int totalYears,  int repeatsInLevel,  bool isActive,  String? branch)?  $default,) {final _that = this;
switch (_that) {
case _Enrollment() when $default != null:
return $default(_that.programId,_that.level,_that.programName,_that.yearInProgram,_that.totalYears,_that.repeatsInLevel,_that.isActive,_that.branch);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Enrollment implements Enrollment {
  const _Enrollment({required this.programId, required this.level, required this.programName, this.yearInProgram = 1, required this.totalYears, this.repeatsInLevel = 0, this.isActive = true, this.branch});
  factory _Enrollment.fromJson(Map<String, dynamic> json) => _$EnrollmentFromJson(json);

@override final  String programId;
@override final  EducationLevel level;
@override final  String programName;
@override@JsonKey() final  int yearInProgram;
@override final  int totalYears;
@override@JsonKey() final  int repeatsInLevel;
@override@JsonKey() final  bool isActive;
@override final  String? branch;

/// Create a copy of Enrollment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnrollmentCopyWith<_Enrollment> get copyWith => __$EnrollmentCopyWithImpl<_Enrollment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EnrollmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Enrollment&&(identical(other.programId, programId) || other.programId == programId)&&(identical(other.level, level) || other.level == level)&&(identical(other.programName, programName) || other.programName == programName)&&(identical(other.yearInProgram, yearInProgram) || other.yearInProgram == yearInProgram)&&(identical(other.totalYears, totalYears) || other.totalYears == totalYears)&&(identical(other.repeatsInLevel, repeatsInLevel) || other.repeatsInLevel == repeatsInLevel)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.branch, branch) || other.branch == branch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,programId,level,programName,yearInProgram,totalYears,repeatsInLevel,isActive,branch);

@override
String toString() {
  return 'Enrollment(programId: $programId, level: $level, programName: $programName, yearInProgram: $yearInProgram, totalYears: $totalYears, repeatsInLevel: $repeatsInLevel, isActive: $isActive, branch: $branch)';
}


}

/// @nodoc
abstract mixin class _$EnrollmentCopyWith<$Res> implements $EnrollmentCopyWith<$Res> {
  factory _$EnrollmentCopyWith(_Enrollment value, $Res Function(_Enrollment) _then) = __$EnrollmentCopyWithImpl;
@override @useResult
$Res call({
 String programId, EducationLevel level, String programName, int yearInProgram, int totalYears, int repeatsInLevel, bool isActive, String? branch
});




}
/// @nodoc
class __$EnrollmentCopyWithImpl<$Res>
    implements _$EnrollmentCopyWith<$Res> {
  __$EnrollmentCopyWithImpl(this._self, this._then);

  final _Enrollment _self;
  final $Res Function(_Enrollment) _then;

/// Create a copy of Enrollment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? programId = null,Object? level = null,Object? programName = null,Object? yearInProgram = null,Object? totalYears = null,Object? repeatsInLevel = null,Object? isActive = null,Object? branch = freezed,}) {
  return _then(_Enrollment(
programId: null == programId ? _self.programId : programId // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as EducationLevel,programName: null == programName ? _self.programName : programName // ignore: cast_nullable_to_non_nullable
as String,yearInProgram: null == yearInProgram ? _self.yearInProgram : yearInProgram // ignore: cast_nullable_to_non_nullable
as int,totalYears: null == totalYears ? _self.totalYears : totalYears // ignore: cast_nullable_to_non_nullable
as int,repeatsInLevel: null == repeatsInLevel ? _self.repeatsInLevel : repeatsInLevel // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
