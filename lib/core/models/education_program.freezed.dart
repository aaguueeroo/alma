// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_program.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EducationProgram {

 String get id; EducationLevel get level; String get name; String get description; String? get branch; String? get field; int? get durationOverride; List<AccessCondition> get accessConditions;
/// Create a copy of EducationProgram
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EducationProgramCopyWith<EducationProgram> get copyWith => _$EducationProgramCopyWithImpl<EducationProgram>(this as EducationProgram, _$identity);

  /// Serializes this EducationProgram to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EducationProgram&&(identical(other.id, id) || other.id == id)&&(identical(other.level, level) || other.level == level)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.field, field) || other.field == field)&&(identical(other.durationOverride, durationOverride) || other.durationOverride == durationOverride)&&const DeepCollectionEquality().equals(other.accessConditions, accessConditions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,level,name,description,branch,field,durationOverride,const DeepCollectionEquality().hash(accessConditions));

@override
String toString() {
  return 'EducationProgram(id: $id, level: $level, name: $name, description: $description, branch: $branch, field: $field, durationOverride: $durationOverride, accessConditions: $accessConditions)';
}


}

/// @nodoc
abstract mixin class $EducationProgramCopyWith<$Res>  {
  factory $EducationProgramCopyWith(EducationProgram value, $Res Function(EducationProgram) _then) = _$EducationProgramCopyWithImpl;
@useResult
$Res call({
 String id, EducationLevel level, String name, String description, String? branch, String? field, int? durationOverride, List<AccessCondition> accessConditions
});




}
/// @nodoc
class _$EducationProgramCopyWithImpl<$Res>
    implements $EducationProgramCopyWith<$Res> {
  _$EducationProgramCopyWithImpl(this._self, this._then);

  final EducationProgram _self;
  final $Res Function(EducationProgram) _then;

/// Create a copy of EducationProgram
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? level = null,Object? name = null,Object? description = null,Object? branch = freezed,Object? field = freezed,Object? durationOverride = freezed,Object? accessConditions = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as EducationLevel,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String?,field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String?,durationOverride: freezed == durationOverride ? _self.durationOverride : durationOverride // ignore: cast_nullable_to_non_nullable
as int?,accessConditions: null == accessConditions ? _self.accessConditions : accessConditions // ignore: cast_nullable_to_non_nullable
as List<AccessCondition>,
  ));
}

}


/// Adds pattern-matching-related methods to [EducationProgram].
extension EducationProgramPatterns on EducationProgram {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EducationProgram value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EducationProgram() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EducationProgram value)  $default,){
final _that = this;
switch (_that) {
case _EducationProgram():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EducationProgram value)?  $default,){
final _that = this;
switch (_that) {
case _EducationProgram() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  EducationLevel level,  String name,  String description,  String? branch,  String? field,  int? durationOverride,  List<AccessCondition> accessConditions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EducationProgram() when $default != null:
return $default(_that.id,_that.level,_that.name,_that.description,_that.branch,_that.field,_that.durationOverride,_that.accessConditions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  EducationLevel level,  String name,  String description,  String? branch,  String? field,  int? durationOverride,  List<AccessCondition> accessConditions)  $default,) {final _that = this;
switch (_that) {
case _EducationProgram():
return $default(_that.id,_that.level,_that.name,_that.description,_that.branch,_that.field,_that.durationOverride,_that.accessConditions);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  EducationLevel level,  String name,  String description,  String? branch,  String? field,  int? durationOverride,  List<AccessCondition> accessConditions)?  $default,) {final _that = this;
switch (_that) {
case _EducationProgram() when $default != null:
return $default(_that.id,_that.level,_that.name,_that.description,_that.branch,_that.field,_that.durationOverride,_that.accessConditions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EducationProgram implements EducationProgram {
  const _EducationProgram({required this.id, required this.level, required this.name, required this.description, this.branch, this.field, this.durationOverride, final  List<AccessCondition> accessConditions = const []}): _accessConditions = accessConditions;
  factory _EducationProgram.fromJson(Map<String, dynamic> json) => _$EducationProgramFromJson(json);

@override final  String id;
@override final  EducationLevel level;
@override final  String name;
@override final  String description;
@override final  String? branch;
@override final  String? field;
@override final  int? durationOverride;
 final  List<AccessCondition> _accessConditions;
@override@JsonKey() List<AccessCondition> get accessConditions {
  if (_accessConditions is EqualUnmodifiableListView) return _accessConditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accessConditions);
}


/// Create a copy of EducationProgram
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EducationProgramCopyWith<_EducationProgram> get copyWith => __$EducationProgramCopyWithImpl<_EducationProgram>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EducationProgramToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EducationProgram&&(identical(other.id, id) || other.id == id)&&(identical(other.level, level) || other.level == level)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.field, field) || other.field == field)&&(identical(other.durationOverride, durationOverride) || other.durationOverride == durationOverride)&&const DeepCollectionEquality().equals(other._accessConditions, _accessConditions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,level,name,description,branch,field,durationOverride,const DeepCollectionEquality().hash(_accessConditions));

@override
String toString() {
  return 'EducationProgram(id: $id, level: $level, name: $name, description: $description, branch: $branch, field: $field, durationOverride: $durationOverride, accessConditions: $accessConditions)';
}


}

/// @nodoc
abstract mixin class _$EducationProgramCopyWith<$Res> implements $EducationProgramCopyWith<$Res> {
  factory _$EducationProgramCopyWith(_EducationProgram value, $Res Function(_EducationProgram) _then) = __$EducationProgramCopyWithImpl;
@override @useResult
$Res call({
 String id, EducationLevel level, String name, String description, String? branch, String? field, int? durationOverride, List<AccessCondition> accessConditions
});




}
/// @nodoc
class __$EducationProgramCopyWithImpl<$Res>
    implements _$EducationProgramCopyWith<$Res> {
  __$EducationProgramCopyWithImpl(this._self, this._then);

  final _EducationProgram _self;
  final $Res Function(_EducationProgram) _then;

/// Create a copy of EducationProgram
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? level = null,Object? name = null,Object? description = null,Object? branch = freezed,Object? field = freezed,Object? durationOverride = freezed,Object? accessConditions = null,}) {
  return _then(_EducationProgram(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as EducationLevel,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String?,field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String?,durationOverride: freezed == durationOverride ? _self.durationOverride : durationOverride // ignore: cast_nullable_to_non_nullable
as int?,accessConditions: null == accessConditions ? _self._accessConditions : accessConditions // ignore: cast_nullable_to_non_nullable
as List<AccessCondition>,
  ));
}


}

// dart format on
