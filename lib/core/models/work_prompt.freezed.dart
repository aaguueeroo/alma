// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_prompt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkPrompt {

 WorkPromptType get type; String get title; String get description; List<Job> get availableJobs; Job? get targetJob; bool? get accepted;
/// Create a copy of WorkPrompt
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkPromptCopyWith<WorkPrompt> get copyWith => _$WorkPromptCopyWithImpl<WorkPrompt>(this as WorkPrompt, _$identity);

  /// Serializes this WorkPrompt to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkPrompt&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.availableJobs, availableJobs)&&(identical(other.targetJob, targetJob) || other.targetJob == targetJob)&&(identical(other.accepted, accepted) || other.accepted == accepted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,description,const DeepCollectionEquality().hash(availableJobs),targetJob,accepted);

@override
String toString() {
  return 'WorkPrompt(type: $type, title: $title, description: $description, availableJobs: $availableJobs, targetJob: $targetJob, accepted: $accepted)';
}


}

/// @nodoc
abstract mixin class $WorkPromptCopyWith<$Res>  {
  factory $WorkPromptCopyWith(WorkPrompt value, $Res Function(WorkPrompt) _then) = _$WorkPromptCopyWithImpl;
@useResult
$Res call({
 WorkPromptType type, String title, String description, List<Job> availableJobs, Job? targetJob, bool? accepted
});


$JobCopyWith<$Res>? get targetJob;

}
/// @nodoc
class _$WorkPromptCopyWithImpl<$Res>
    implements $WorkPromptCopyWith<$Res> {
  _$WorkPromptCopyWithImpl(this._self, this._then);

  final WorkPrompt _self;
  final $Res Function(WorkPrompt) _then;

/// Create a copy of WorkPrompt
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? title = null,Object? description = null,Object? availableJobs = null,Object? targetJob = freezed,Object? accepted = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WorkPromptType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,availableJobs: null == availableJobs ? _self.availableJobs : availableJobs // ignore: cast_nullable_to_non_nullable
as List<Job>,targetJob: freezed == targetJob ? _self.targetJob : targetJob // ignore: cast_nullable_to_non_nullable
as Job?,accepted: freezed == accepted ? _self.accepted : accepted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of WorkPrompt
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JobCopyWith<$Res>? get targetJob {
    if (_self.targetJob == null) {
    return null;
  }

  return $JobCopyWith<$Res>(_self.targetJob!, (value) {
    return _then(_self.copyWith(targetJob: value));
  });
}
}


/// Adds pattern-matching-related methods to [WorkPrompt].
extension WorkPromptPatterns on WorkPrompt {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkPrompt value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkPrompt() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkPrompt value)  $default,){
final _that = this;
switch (_that) {
case _WorkPrompt():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkPrompt value)?  $default,){
final _that = this;
switch (_that) {
case _WorkPrompt() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WorkPromptType type,  String title,  String description,  List<Job> availableJobs,  Job? targetJob,  bool? accepted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkPrompt() when $default != null:
return $default(_that.type,_that.title,_that.description,_that.availableJobs,_that.targetJob,_that.accepted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WorkPromptType type,  String title,  String description,  List<Job> availableJobs,  Job? targetJob,  bool? accepted)  $default,) {final _that = this;
switch (_that) {
case _WorkPrompt():
return $default(_that.type,_that.title,_that.description,_that.availableJobs,_that.targetJob,_that.accepted);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WorkPromptType type,  String title,  String description,  List<Job> availableJobs,  Job? targetJob,  bool? accepted)?  $default,) {final _that = this;
switch (_that) {
case _WorkPrompt() when $default != null:
return $default(_that.type,_that.title,_that.description,_that.availableJobs,_that.targetJob,_that.accepted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkPrompt implements WorkPrompt {
  const _WorkPrompt({required this.type, required this.title, required this.description, final  List<Job> availableJobs = const [], this.targetJob, this.accepted}): _availableJobs = availableJobs;
  factory _WorkPrompt.fromJson(Map<String, dynamic> json) => _$WorkPromptFromJson(json);

@override final  WorkPromptType type;
@override final  String title;
@override final  String description;
 final  List<Job> _availableJobs;
@override@JsonKey() List<Job> get availableJobs {
  if (_availableJobs is EqualUnmodifiableListView) return _availableJobs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableJobs);
}

@override final  Job? targetJob;
@override final  bool? accepted;

/// Create a copy of WorkPrompt
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkPromptCopyWith<_WorkPrompt> get copyWith => __$WorkPromptCopyWithImpl<_WorkPrompt>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkPromptToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkPrompt&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._availableJobs, _availableJobs)&&(identical(other.targetJob, targetJob) || other.targetJob == targetJob)&&(identical(other.accepted, accepted) || other.accepted == accepted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,description,const DeepCollectionEquality().hash(_availableJobs),targetJob,accepted);

@override
String toString() {
  return 'WorkPrompt(type: $type, title: $title, description: $description, availableJobs: $availableJobs, targetJob: $targetJob, accepted: $accepted)';
}


}

/// @nodoc
abstract mixin class _$WorkPromptCopyWith<$Res> implements $WorkPromptCopyWith<$Res> {
  factory _$WorkPromptCopyWith(_WorkPrompt value, $Res Function(_WorkPrompt) _then) = __$WorkPromptCopyWithImpl;
@override @useResult
$Res call({
 WorkPromptType type, String title, String description, List<Job> availableJobs, Job? targetJob, bool? accepted
});


@override $JobCopyWith<$Res>? get targetJob;

}
/// @nodoc
class __$WorkPromptCopyWithImpl<$Res>
    implements _$WorkPromptCopyWith<$Res> {
  __$WorkPromptCopyWithImpl(this._self, this._then);

  final _WorkPrompt _self;
  final $Res Function(_WorkPrompt) _then;

/// Create a copy of WorkPrompt
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? title = null,Object? description = null,Object? availableJobs = null,Object? targetJob = freezed,Object? accepted = freezed,}) {
  return _then(_WorkPrompt(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WorkPromptType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,availableJobs: null == availableJobs ? _self._availableJobs : availableJobs // ignore: cast_nullable_to_non_nullable
as List<Job>,targetJob: freezed == targetJob ? _self.targetJob : targetJob // ignore: cast_nullable_to_non_nullable
as Job?,accepted: freezed == accepted ? _self.accepted : accepted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of WorkPrompt
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JobCopyWith<$Res>? get targetJob {
    if (_self.targetJob == null) {
    return null;
  }

  return $JobCopyWith<$Res>(_self.targetJob!, (value) {
    return _then(_self.copyWith(targetJob: value));
  });
}
}

// dart format on
