// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EducationRecord {

 String get programId; EducationLevel get level; String get programName; int get finalGrade; bool get graduated; int get yearsSpent; int get startAge; int get endAge; String? get branch; bool get isDropOut;
/// Create a copy of EducationRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EducationRecordCopyWith<EducationRecord> get copyWith => _$EducationRecordCopyWithImpl<EducationRecord>(this as EducationRecord, _$identity);

  /// Serializes this EducationRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EducationRecord&&(identical(other.programId, programId) || other.programId == programId)&&(identical(other.level, level) || other.level == level)&&(identical(other.programName, programName) || other.programName == programName)&&(identical(other.finalGrade, finalGrade) || other.finalGrade == finalGrade)&&(identical(other.graduated, graduated) || other.graduated == graduated)&&(identical(other.yearsSpent, yearsSpent) || other.yearsSpent == yearsSpent)&&(identical(other.startAge, startAge) || other.startAge == startAge)&&(identical(other.endAge, endAge) || other.endAge == endAge)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.isDropOut, isDropOut) || other.isDropOut == isDropOut));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,programId,level,programName,finalGrade,graduated,yearsSpent,startAge,endAge,branch,isDropOut);

@override
String toString() {
  return 'EducationRecord(programId: $programId, level: $level, programName: $programName, finalGrade: $finalGrade, graduated: $graduated, yearsSpent: $yearsSpent, startAge: $startAge, endAge: $endAge, branch: $branch, isDropOut: $isDropOut)';
}


}

/// @nodoc
abstract mixin class $EducationRecordCopyWith<$Res>  {
  factory $EducationRecordCopyWith(EducationRecord value, $Res Function(EducationRecord) _then) = _$EducationRecordCopyWithImpl;
@useResult
$Res call({
 String programId, EducationLevel level, String programName, int finalGrade, bool graduated, int yearsSpent, int startAge, int endAge, String? branch, bool isDropOut
});




}
/// @nodoc
class _$EducationRecordCopyWithImpl<$Res>
    implements $EducationRecordCopyWith<$Res> {
  _$EducationRecordCopyWithImpl(this._self, this._then);

  final EducationRecord _self;
  final $Res Function(EducationRecord) _then;

/// Create a copy of EducationRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? programId = null,Object? level = null,Object? programName = null,Object? finalGrade = null,Object? graduated = null,Object? yearsSpent = null,Object? startAge = null,Object? endAge = null,Object? branch = freezed,Object? isDropOut = null,}) {
  return _then(_self.copyWith(
programId: null == programId ? _self.programId : programId // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as EducationLevel,programName: null == programName ? _self.programName : programName // ignore: cast_nullable_to_non_nullable
as String,finalGrade: null == finalGrade ? _self.finalGrade : finalGrade // ignore: cast_nullable_to_non_nullable
as int,graduated: null == graduated ? _self.graduated : graduated // ignore: cast_nullable_to_non_nullable
as bool,yearsSpent: null == yearsSpent ? _self.yearsSpent : yearsSpent // ignore: cast_nullable_to_non_nullable
as int,startAge: null == startAge ? _self.startAge : startAge // ignore: cast_nullable_to_non_nullable
as int,endAge: null == endAge ? _self.endAge : endAge // ignore: cast_nullable_to_non_nullable
as int,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String?,isDropOut: null == isDropOut ? _self.isDropOut : isDropOut // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EducationRecord].
extension EducationRecordPatterns on EducationRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EducationRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EducationRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EducationRecord value)  $default,){
final _that = this;
switch (_that) {
case _EducationRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EducationRecord value)?  $default,){
final _that = this;
switch (_that) {
case _EducationRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String programId,  EducationLevel level,  String programName,  int finalGrade,  bool graduated,  int yearsSpent,  int startAge,  int endAge,  String? branch,  bool isDropOut)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EducationRecord() when $default != null:
return $default(_that.programId,_that.level,_that.programName,_that.finalGrade,_that.graduated,_that.yearsSpent,_that.startAge,_that.endAge,_that.branch,_that.isDropOut);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String programId,  EducationLevel level,  String programName,  int finalGrade,  bool graduated,  int yearsSpent,  int startAge,  int endAge,  String? branch,  bool isDropOut)  $default,) {final _that = this;
switch (_that) {
case _EducationRecord():
return $default(_that.programId,_that.level,_that.programName,_that.finalGrade,_that.graduated,_that.yearsSpent,_that.startAge,_that.endAge,_that.branch,_that.isDropOut);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String programId,  EducationLevel level,  String programName,  int finalGrade,  bool graduated,  int yearsSpent,  int startAge,  int endAge,  String? branch,  bool isDropOut)?  $default,) {final _that = this;
switch (_that) {
case _EducationRecord() when $default != null:
return $default(_that.programId,_that.level,_that.programName,_that.finalGrade,_that.graduated,_that.yearsSpent,_that.startAge,_that.endAge,_that.branch,_that.isDropOut);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EducationRecord implements EducationRecord {
  const _EducationRecord({required this.programId, required this.level, required this.programName, required this.finalGrade, required this.graduated, required this.yearsSpent, required this.startAge, required this.endAge, this.branch, this.isDropOut = false});
  factory _EducationRecord.fromJson(Map<String, dynamic> json) => _$EducationRecordFromJson(json);

@override final  String programId;
@override final  EducationLevel level;
@override final  String programName;
@override final  int finalGrade;
@override final  bool graduated;
@override final  int yearsSpent;
@override final  int startAge;
@override final  int endAge;
@override final  String? branch;
@override@JsonKey() final  bool isDropOut;

/// Create a copy of EducationRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EducationRecordCopyWith<_EducationRecord> get copyWith => __$EducationRecordCopyWithImpl<_EducationRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EducationRecordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EducationRecord&&(identical(other.programId, programId) || other.programId == programId)&&(identical(other.level, level) || other.level == level)&&(identical(other.programName, programName) || other.programName == programName)&&(identical(other.finalGrade, finalGrade) || other.finalGrade == finalGrade)&&(identical(other.graduated, graduated) || other.graduated == graduated)&&(identical(other.yearsSpent, yearsSpent) || other.yearsSpent == yearsSpent)&&(identical(other.startAge, startAge) || other.startAge == startAge)&&(identical(other.endAge, endAge) || other.endAge == endAge)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.isDropOut, isDropOut) || other.isDropOut == isDropOut));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,programId,level,programName,finalGrade,graduated,yearsSpent,startAge,endAge,branch,isDropOut);

@override
String toString() {
  return 'EducationRecord(programId: $programId, level: $level, programName: $programName, finalGrade: $finalGrade, graduated: $graduated, yearsSpent: $yearsSpent, startAge: $startAge, endAge: $endAge, branch: $branch, isDropOut: $isDropOut)';
}


}

/// @nodoc
abstract mixin class _$EducationRecordCopyWith<$Res> implements $EducationRecordCopyWith<$Res> {
  factory _$EducationRecordCopyWith(_EducationRecord value, $Res Function(_EducationRecord) _then) = __$EducationRecordCopyWithImpl;
@override @useResult
$Res call({
 String programId, EducationLevel level, String programName, int finalGrade, bool graduated, int yearsSpent, int startAge, int endAge, String? branch, bool isDropOut
});




}
/// @nodoc
class __$EducationRecordCopyWithImpl<$Res>
    implements _$EducationRecordCopyWith<$Res> {
  __$EducationRecordCopyWithImpl(this._self, this._then);

  final _EducationRecord _self;
  final $Res Function(_EducationRecord) _then;

/// Create a copy of EducationRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? programId = null,Object? level = null,Object? programName = null,Object? finalGrade = null,Object? graduated = null,Object? yearsSpent = null,Object? startAge = null,Object? endAge = null,Object? branch = freezed,Object? isDropOut = null,}) {
  return _then(_EducationRecord(
programId: null == programId ? _self.programId : programId // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as EducationLevel,programName: null == programName ? _self.programName : programName // ignore: cast_nullable_to_non_nullable
as String,finalGrade: null == finalGrade ? _self.finalGrade : finalGrade // ignore: cast_nullable_to_non_nullable
as int,graduated: null == graduated ? _self.graduated : graduated // ignore: cast_nullable_to_non_nullable
as bool,yearsSpent: null == yearsSpent ? _self.yearsSpent : yearsSpent // ignore: cast_nullable_to_non_nullable
as int,startAge: null == startAge ? _self.startAge : startAge // ignore: cast_nullable_to_non_nullable
as int,endAge: null == endAge ? _self.endAge : endAge // ignore: cast_nullable_to_non_nullable
as int,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String?,isDropOut: null == isDropOut ? _self.isDropOut : isDropOut // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
