// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
AccessCondition _$AccessConditionFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'previousLevel':
          return PreviousLevelCondition.fromJson(
            json
          );
                case 'previousProgram':
          return PreviousProgramCondition.fromJson(
            json
          );
                case 'minGrade':
          return MinGradeCondition.fromJson(
            json
          );
                case 'minSkill':
          return MinSkillCondition.fromJson(
            json
          );
                case 'custom':
          return CustomCondition.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'AccessCondition',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$AccessCondition {



  /// Serializes this AccessCondition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccessCondition);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccessCondition()';
}


}

/// @nodoc
class $AccessConditionCopyWith<$Res>  {
$AccessConditionCopyWith(AccessCondition _, $Res Function(AccessCondition) __);
}


/// Adds pattern-matching-related methods to [AccessCondition].
extension AccessConditionPatterns on AccessCondition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PreviousLevelCondition value)?  previousLevel,TResult Function( PreviousProgramCondition value)?  previousProgram,TResult Function( MinGradeCondition value)?  minGrade,TResult Function( MinSkillCondition value)?  minSkill,TResult Function( CustomCondition value)?  custom,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PreviousLevelCondition() when previousLevel != null:
return previousLevel(_that);case PreviousProgramCondition() when previousProgram != null:
return previousProgram(_that);case MinGradeCondition() when minGrade != null:
return minGrade(_that);case MinSkillCondition() when minSkill != null:
return minSkill(_that);case CustomCondition() when custom != null:
return custom(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PreviousLevelCondition value)  previousLevel,required TResult Function( PreviousProgramCondition value)  previousProgram,required TResult Function( MinGradeCondition value)  minGrade,required TResult Function( MinSkillCondition value)  minSkill,required TResult Function( CustomCondition value)  custom,}){
final _that = this;
switch (_that) {
case PreviousLevelCondition():
return previousLevel(_that);case PreviousProgramCondition():
return previousProgram(_that);case MinGradeCondition():
return minGrade(_that);case MinSkillCondition():
return minSkill(_that);case CustomCondition():
return custom(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PreviousLevelCondition value)?  previousLevel,TResult? Function( PreviousProgramCondition value)?  previousProgram,TResult? Function( MinGradeCondition value)?  minGrade,TResult? Function( MinSkillCondition value)?  minSkill,TResult? Function( CustomCondition value)?  custom,}){
final _that = this;
switch (_that) {
case PreviousLevelCondition() when previousLevel != null:
return previousLevel(_that);case PreviousProgramCondition() when previousProgram != null:
return previousProgram(_that);case MinGradeCondition() when minGrade != null:
return minGrade(_that);case MinSkillCondition() when minSkill != null:
return minSkill(_that);case CustomCondition() when custom != null:
return custom(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( EducationLevel level,  String? requiredBranch)?  previousLevel,TResult Function( String requiredProgramId)?  previousProgram,TResult Function( EducationLevel level,  int minGrade)?  minGrade,TResult Function( SkillType skill,  int minValue)?  minSkill,TResult Function( String key,  String operator,  dynamic value)?  custom,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PreviousLevelCondition() when previousLevel != null:
return previousLevel(_that.level,_that.requiredBranch);case PreviousProgramCondition() when previousProgram != null:
return previousProgram(_that.requiredProgramId);case MinGradeCondition() when minGrade != null:
return minGrade(_that.level,_that.minGrade);case MinSkillCondition() when minSkill != null:
return minSkill(_that.skill,_that.minValue);case CustomCondition() when custom != null:
return custom(_that.key,_that.operator,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( EducationLevel level,  String? requiredBranch)  previousLevel,required TResult Function( String requiredProgramId)  previousProgram,required TResult Function( EducationLevel level,  int minGrade)  minGrade,required TResult Function( SkillType skill,  int minValue)  minSkill,required TResult Function( String key,  String operator,  dynamic value)  custom,}) {final _that = this;
switch (_that) {
case PreviousLevelCondition():
return previousLevel(_that.level,_that.requiredBranch);case PreviousProgramCondition():
return previousProgram(_that.requiredProgramId);case MinGradeCondition():
return minGrade(_that.level,_that.minGrade);case MinSkillCondition():
return minSkill(_that.skill,_that.minValue);case CustomCondition():
return custom(_that.key,_that.operator,_that.value);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( EducationLevel level,  String? requiredBranch)?  previousLevel,TResult? Function( String requiredProgramId)?  previousProgram,TResult? Function( EducationLevel level,  int minGrade)?  minGrade,TResult? Function( SkillType skill,  int minValue)?  minSkill,TResult? Function( String key,  String operator,  dynamic value)?  custom,}) {final _that = this;
switch (_that) {
case PreviousLevelCondition() when previousLevel != null:
return previousLevel(_that.level,_that.requiredBranch);case PreviousProgramCondition() when previousProgram != null:
return previousProgram(_that.requiredProgramId);case MinGradeCondition() when minGrade != null:
return minGrade(_that.level,_that.minGrade);case MinSkillCondition() when minSkill != null:
return minSkill(_that.skill,_that.minValue);case CustomCondition() when custom != null:
return custom(_that.key,_that.operator,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class PreviousLevelCondition implements AccessCondition {
  const PreviousLevelCondition({required this.level, this.requiredBranch, final  String? $type}): $type = $type ?? 'previousLevel';
  factory PreviousLevelCondition.fromJson(Map<String, dynamic> json) => _$PreviousLevelConditionFromJson(json);

 final  EducationLevel level;
 final  String? requiredBranch;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of AccessCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreviousLevelConditionCopyWith<PreviousLevelCondition> get copyWith => _$PreviousLevelConditionCopyWithImpl<PreviousLevelCondition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PreviousLevelConditionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreviousLevelCondition&&(identical(other.level, level) || other.level == level)&&(identical(other.requiredBranch, requiredBranch) || other.requiredBranch == requiredBranch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,requiredBranch);

@override
String toString() {
  return 'AccessCondition.previousLevel(level: $level, requiredBranch: $requiredBranch)';
}


}

/// @nodoc
abstract mixin class $PreviousLevelConditionCopyWith<$Res> implements $AccessConditionCopyWith<$Res> {
  factory $PreviousLevelConditionCopyWith(PreviousLevelCondition value, $Res Function(PreviousLevelCondition) _then) = _$PreviousLevelConditionCopyWithImpl;
@useResult
$Res call({
 EducationLevel level, String? requiredBranch
});




}
/// @nodoc
class _$PreviousLevelConditionCopyWithImpl<$Res>
    implements $PreviousLevelConditionCopyWith<$Res> {
  _$PreviousLevelConditionCopyWithImpl(this._self, this._then);

  final PreviousLevelCondition _self;
  final $Res Function(PreviousLevelCondition) _then;

/// Create a copy of AccessCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? level = null,Object? requiredBranch = freezed,}) {
  return _then(PreviousLevelCondition(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as EducationLevel,requiredBranch: freezed == requiredBranch ? _self.requiredBranch : requiredBranch // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class PreviousProgramCondition implements AccessCondition {
  const PreviousProgramCondition({required this.requiredProgramId, final  String? $type}): $type = $type ?? 'previousProgram';
  factory PreviousProgramCondition.fromJson(Map<String, dynamic> json) => _$PreviousProgramConditionFromJson(json);

 final  String requiredProgramId;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of AccessCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreviousProgramConditionCopyWith<PreviousProgramCondition> get copyWith => _$PreviousProgramConditionCopyWithImpl<PreviousProgramCondition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PreviousProgramConditionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreviousProgramCondition&&(identical(other.requiredProgramId, requiredProgramId) || other.requiredProgramId == requiredProgramId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requiredProgramId);

@override
String toString() {
  return 'AccessCondition.previousProgram(requiredProgramId: $requiredProgramId)';
}


}

/// @nodoc
abstract mixin class $PreviousProgramConditionCopyWith<$Res> implements $AccessConditionCopyWith<$Res> {
  factory $PreviousProgramConditionCopyWith(PreviousProgramCondition value, $Res Function(PreviousProgramCondition) _then) = _$PreviousProgramConditionCopyWithImpl;
@useResult
$Res call({
 String requiredProgramId
});




}
/// @nodoc
class _$PreviousProgramConditionCopyWithImpl<$Res>
    implements $PreviousProgramConditionCopyWith<$Res> {
  _$PreviousProgramConditionCopyWithImpl(this._self, this._then);

  final PreviousProgramCondition _self;
  final $Res Function(PreviousProgramCondition) _then;

/// Create a copy of AccessCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? requiredProgramId = null,}) {
  return _then(PreviousProgramCondition(
requiredProgramId: null == requiredProgramId ? _self.requiredProgramId : requiredProgramId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class MinGradeCondition implements AccessCondition {
  const MinGradeCondition({required this.level, required this.minGrade, final  String? $type}): $type = $type ?? 'minGrade';
  factory MinGradeCondition.fromJson(Map<String, dynamic> json) => _$MinGradeConditionFromJson(json);

 final  EducationLevel level;
 final  int minGrade;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of AccessCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MinGradeConditionCopyWith<MinGradeCondition> get copyWith => _$MinGradeConditionCopyWithImpl<MinGradeCondition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MinGradeConditionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MinGradeCondition&&(identical(other.level, level) || other.level == level)&&(identical(other.minGrade, minGrade) || other.minGrade == minGrade));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,minGrade);

@override
String toString() {
  return 'AccessCondition.minGrade(level: $level, minGrade: $minGrade)';
}


}

/// @nodoc
abstract mixin class $MinGradeConditionCopyWith<$Res> implements $AccessConditionCopyWith<$Res> {
  factory $MinGradeConditionCopyWith(MinGradeCondition value, $Res Function(MinGradeCondition) _then) = _$MinGradeConditionCopyWithImpl;
@useResult
$Res call({
 EducationLevel level, int minGrade
});




}
/// @nodoc
class _$MinGradeConditionCopyWithImpl<$Res>
    implements $MinGradeConditionCopyWith<$Res> {
  _$MinGradeConditionCopyWithImpl(this._self, this._then);

  final MinGradeCondition _self;
  final $Res Function(MinGradeCondition) _then;

/// Create a copy of AccessCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? level = null,Object? minGrade = null,}) {
  return _then(MinGradeCondition(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as EducationLevel,minGrade: null == minGrade ? _self.minGrade : minGrade // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class MinSkillCondition implements AccessCondition {
  const MinSkillCondition({required this.skill, required this.minValue, final  String? $type}): $type = $type ?? 'minSkill';
  factory MinSkillCondition.fromJson(Map<String, dynamic> json) => _$MinSkillConditionFromJson(json);

 final  SkillType skill;
 final  int minValue;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of AccessCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MinSkillConditionCopyWith<MinSkillCondition> get copyWith => _$MinSkillConditionCopyWithImpl<MinSkillCondition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MinSkillConditionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MinSkillCondition&&(identical(other.skill, skill) || other.skill == skill)&&(identical(other.minValue, minValue) || other.minValue == minValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,skill,minValue);

@override
String toString() {
  return 'AccessCondition.minSkill(skill: $skill, minValue: $minValue)';
}


}

/// @nodoc
abstract mixin class $MinSkillConditionCopyWith<$Res> implements $AccessConditionCopyWith<$Res> {
  factory $MinSkillConditionCopyWith(MinSkillCondition value, $Res Function(MinSkillCondition) _then) = _$MinSkillConditionCopyWithImpl;
@useResult
$Res call({
 SkillType skill, int minValue
});




}
/// @nodoc
class _$MinSkillConditionCopyWithImpl<$Res>
    implements $MinSkillConditionCopyWith<$Res> {
  _$MinSkillConditionCopyWithImpl(this._self, this._then);

  final MinSkillCondition _self;
  final $Res Function(MinSkillCondition) _then;

/// Create a copy of AccessCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? skill = null,Object? minValue = null,}) {
  return _then(MinSkillCondition(
skill: null == skill ? _self.skill : skill // ignore: cast_nullable_to_non_nullable
as SkillType,minValue: null == minValue ? _self.minValue : minValue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class CustomCondition implements AccessCondition {
  const CustomCondition({required this.key, required this.operator, required this.value, final  String? $type}): $type = $type ?? 'custom';
  factory CustomCondition.fromJson(Map<String, dynamic> json) => _$CustomConditionFromJson(json);

 final  String key;
 final  String operator;
 final  dynamic value;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of AccessCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomConditionCopyWith<CustomCondition> get copyWith => _$CustomConditionCopyWithImpl<CustomCondition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomConditionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomCondition&&(identical(other.key, key) || other.key == key)&&(identical(other.operator, operator) || other.operator == operator)&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,operator,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'AccessCondition.custom(key: $key, operator: $operator, value: $value)';
}


}

/// @nodoc
abstract mixin class $CustomConditionCopyWith<$Res> implements $AccessConditionCopyWith<$Res> {
  factory $CustomConditionCopyWith(CustomCondition value, $Res Function(CustomCondition) _then) = _$CustomConditionCopyWithImpl;
@useResult
$Res call({
 String key, String operator, dynamic value
});




}
/// @nodoc
class _$CustomConditionCopyWithImpl<$Res>
    implements $CustomConditionCopyWith<$Res> {
  _$CustomConditionCopyWithImpl(this._self, this._then);

  final CustomCondition _self;
  final $Res Function(CustomCondition) _then;

/// Create a copy of AccessCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? key = null,Object? operator = null,Object? value = freezed,}) {
  return _then(CustomCondition(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,operator: null == operator ? _self.operator : operator // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
