// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_level.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JobLevel {

 int get level; String get title; double get salaryMultiplier; String get description;
/// Create a copy of JobLevel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobLevelCopyWith<JobLevel> get copyWith => _$JobLevelCopyWithImpl<JobLevel>(this as JobLevel, _$identity);

  /// Serializes this JobLevel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobLevel&&(identical(other.level, level) || other.level == level)&&(identical(other.title, title) || other.title == title)&&(identical(other.salaryMultiplier, salaryMultiplier) || other.salaryMultiplier == salaryMultiplier)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,title,salaryMultiplier,description);

@override
String toString() {
  return 'JobLevel(level: $level, title: $title, salaryMultiplier: $salaryMultiplier, description: $description)';
}


}

/// @nodoc
abstract mixin class $JobLevelCopyWith<$Res>  {
  factory $JobLevelCopyWith(JobLevel value, $Res Function(JobLevel) _then) = _$JobLevelCopyWithImpl;
@useResult
$Res call({
 int level, String title, double salaryMultiplier, String description
});




}
/// @nodoc
class _$JobLevelCopyWithImpl<$Res>
    implements $JobLevelCopyWith<$Res> {
  _$JobLevelCopyWithImpl(this._self, this._then);

  final JobLevel _self;
  final $Res Function(JobLevel) _then;

/// Create a copy of JobLevel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? level = null,Object? title = null,Object? salaryMultiplier = null,Object? description = null,}) {
  return _then(_self.copyWith(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,salaryMultiplier: null == salaryMultiplier ? _self.salaryMultiplier : salaryMultiplier // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [JobLevel].
extension JobLevelPatterns on JobLevel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JobLevel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JobLevel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JobLevel value)  $default,){
final _that = this;
switch (_that) {
case _JobLevel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JobLevel value)?  $default,){
final _that = this;
switch (_that) {
case _JobLevel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int level,  String title,  double salaryMultiplier,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JobLevel() when $default != null:
return $default(_that.level,_that.title,_that.salaryMultiplier,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int level,  String title,  double salaryMultiplier,  String description)  $default,) {final _that = this;
switch (_that) {
case _JobLevel():
return $default(_that.level,_that.title,_that.salaryMultiplier,_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int level,  String title,  double salaryMultiplier,  String description)?  $default,) {final _that = this;
switch (_that) {
case _JobLevel() when $default != null:
return $default(_that.level,_that.title,_that.salaryMultiplier,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JobLevel implements JobLevel {
  const _JobLevel({required this.level, required this.title, required this.salaryMultiplier, required this.description});
  factory _JobLevel.fromJson(Map<String, dynamic> json) => _$JobLevelFromJson(json);

@override final  int level;
@override final  String title;
@override final  double salaryMultiplier;
@override final  String description;

/// Create a copy of JobLevel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobLevelCopyWith<_JobLevel> get copyWith => __$JobLevelCopyWithImpl<_JobLevel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JobLevelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobLevel&&(identical(other.level, level) || other.level == level)&&(identical(other.title, title) || other.title == title)&&(identical(other.salaryMultiplier, salaryMultiplier) || other.salaryMultiplier == salaryMultiplier)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,title,salaryMultiplier,description);

@override
String toString() {
  return 'JobLevel(level: $level, title: $title, salaryMultiplier: $salaryMultiplier, description: $description)';
}


}

/// @nodoc
abstract mixin class _$JobLevelCopyWith<$Res> implements $JobLevelCopyWith<$Res> {
  factory _$JobLevelCopyWith(_JobLevel value, $Res Function(_JobLevel) _then) = __$JobLevelCopyWithImpl;
@override @useResult
$Res call({
 int level, String title, double salaryMultiplier, String description
});




}
/// @nodoc
class __$JobLevelCopyWithImpl<$Res>
    implements _$JobLevelCopyWith<$Res> {
  __$JobLevelCopyWithImpl(this._self, this._then);

  final _JobLevel _self;
  final $Res Function(_JobLevel) _then;

/// Create a copy of JobLevel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? level = null,Object? title = null,Object? salaryMultiplier = null,Object? description = null,}) {
  return _then(_JobLevel(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,salaryMultiplier: null == salaryMultiplier ? _self.salaryMultiplier : salaryMultiplier // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
