// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_prompt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EducationPrompt {

 String get title; String get description; List<EducationProgram> get availablePrograms; bool get canDecline; int? get carryOverPerformance;
/// Create a copy of EducationPrompt
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EducationPromptCopyWith<EducationPrompt> get copyWith => _$EducationPromptCopyWithImpl<EducationPrompt>(this as EducationPrompt, _$identity);

  /// Serializes this EducationPrompt to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EducationPrompt&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.availablePrograms, availablePrograms)&&(identical(other.canDecline, canDecline) || other.canDecline == canDecline)&&(identical(other.carryOverPerformance, carryOverPerformance) || other.carryOverPerformance == carryOverPerformance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,const DeepCollectionEquality().hash(availablePrograms),canDecline,carryOverPerformance);

@override
String toString() {
  return 'EducationPrompt(title: $title, description: $description, availablePrograms: $availablePrograms, canDecline: $canDecline, carryOverPerformance: $carryOverPerformance)';
}


}

/// @nodoc
abstract mixin class $EducationPromptCopyWith<$Res>  {
  factory $EducationPromptCopyWith(EducationPrompt value, $Res Function(EducationPrompt) _then) = _$EducationPromptCopyWithImpl;
@useResult
$Res call({
 String title, String description, List<EducationProgram> availablePrograms, bool canDecline, int? carryOverPerformance
});




}
/// @nodoc
class _$EducationPromptCopyWithImpl<$Res>
    implements $EducationPromptCopyWith<$Res> {
  _$EducationPromptCopyWithImpl(this._self, this._then);

  final EducationPrompt _self;
  final $Res Function(EducationPrompt) _then;

/// Create a copy of EducationPrompt
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? availablePrograms = null,Object? canDecline = null,Object? carryOverPerformance = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,availablePrograms: null == availablePrograms ? _self.availablePrograms : availablePrograms // ignore: cast_nullable_to_non_nullable
as List<EducationProgram>,canDecline: null == canDecline ? _self.canDecline : canDecline // ignore: cast_nullable_to_non_nullable
as bool,carryOverPerformance: freezed == carryOverPerformance ? _self.carryOverPerformance : carryOverPerformance // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [EducationPrompt].
extension EducationPromptPatterns on EducationPrompt {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EducationPrompt value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EducationPrompt() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EducationPrompt value)  $default,){
final _that = this;
switch (_that) {
case _EducationPrompt():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EducationPrompt value)?  $default,){
final _that = this;
switch (_that) {
case _EducationPrompt() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description,  List<EducationProgram> availablePrograms,  bool canDecline,  int? carryOverPerformance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EducationPrompt() when $default != null:
return $default(_that.title,_that.description,_that.availablePrograms,_that.canDecline,_that.carryOverPerformance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description,  List<EducationProgram> availablePrograms,  bool canDecline,  int? carryOverPerformance)  $default,) {final _that = this;
switch (_that) {
case _EducationPrompt():
return $default(_that.title,_that.description,_that.availablePrograms,_that.canDecline,_that.carryOverPerformance);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description,  List<EducationProgram> availablePrograms,  bool canDecline,  int? carryOverPerformance)?  $default,) {final _that = this;
switch (_that) {
case _EducationPrompt() when $default != null:
return $default(_that.title,_that.description,_that.availablePrograms,_that.canDecline,_that.carryOverPerformance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EducationPrompt implements EducationPrompt {
  const _EducationPrompt({required this.title, required this.description, required final  List<EducationProgram> availablePrograms, this.canDecline = true, this.carryOverPerformance}): _availablePrograms = availablePrograms;
  factory _EducationPrompt.fromJson(Map<String, dynamic> json) => _$EducationPromptFromJson(json);

@override final  String title;
@override final  String description;
 final  List<EducationProgram> _availablePrograms;
@override List<EducationProgram> get availablePrograms {
  if (_availablePrograms is EqualUnmodifiableListView) return _availablePrograms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availablePrograms);
}

@override@JsonKey() final  bool canDecline;
@override final  int? carryOverPerformance;

/// Create a copy of EducationPrompt
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EducationPromptCopyWith<_EducationPrompt> get copyWith => __$EducationPromptCopyWithImpl<_EducationPrompt>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EducationPromptToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EducationPrompt&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._availablePrograms, _availablePrograms)&&(identical(other.canDecline, canDecline) || other.canDecline == canDecline)&&(identical(other.carryOverPerformance, carryOverPerformance) || other.carryOverPerformance == carryOverPerformance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,const DeepCollectionEquality().hash(_availablePrograms),canDecline,carryOverPerformance);

@override
String toString() {
  return 'EducationPrompt(title: $title, description: $description, availablePrograms: $availablePrograms, canDecline: $canDecline, carryOverPerformance: $carryOverPerformance)';
}


}

/// @nodoc
abstract mixin class _$EducationPromptCopyWith<$Res> implements $EducationPromptCopyWith<$Res> {
  factory _$EducationPromptCopyWith(_EducationPrompt value, $Res Function(_EducationPrompt) _then) = __$EducationPromptCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, List<EducationProgram> availablePrograms, bool canDecline, int? carryOverPerformance
});




}
/// @nodoc
class __$EducationPromptCopyWithImpl<$Res>
    implements _$EducationPromptCopyWith<$Res> {
  __$EducationPromptCopyWithImpl(this._self, this._then);

  final _EducationPrompt _self;
  final $Res Function(_EducationPrompt) _then;

/// Create a copy of EducationPrompt
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? availablePrograms = null,Object? canDecline = null,Object? carryOverPerformance = freezed,}) {
  return _then(_EducationPrompt(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,availablePrograms: null == availablePrograms ? _self._availablePrograms : availablePrograms // ignore: cast_nullable_to_non_nullable
as List<EducationProgram>,canDecline: null == canDecline ? _self.canDecline : canDecline // ignore: cast_nullable_to_non_nullable
as bool,carryOverPerformance: freezed == carryOverPerformance ? _self.carryOverPerformance : carryOverPerformance // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
