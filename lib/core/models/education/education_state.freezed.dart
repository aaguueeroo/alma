// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EducationState {

 Enrollment? get currentEnrollment; List<EducationRecord> get history; EducationPrompt? get pendingPrompt; List<String> get performedActionIdsThisYear;
/// Create a copy of EducationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EducationStateCopyWith<EducationState> get copyWith => _$EducationStateCopyWithImpl<EducationState>(this as EducationState, _$identity);

  /// Serializes this EducationState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EducationState&&(identical(other.currentEnrollment, currentEnrollment) || other.currentEnrollment == currentEnrollment)&&const DeepCollectionEquality().equals(other.history, history)&&(identical(other.pendingPrompt, pendingPrompt) || other.pendingPrompt == pendingPrompt)&&const DeepCollectionEquality().equals(other.performedActionIdsThisYear, performedActionIdsThisYear));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentEnrollment,const DeepCollectionEquality().hash(history),pendingPrompt,const DeepCollectionEquality().hash(performedActionIdsThisYear));

@override
String toString() {
  return 'EducationState(currentEnrollment: $currentEnrollment, history: $history, pendingPrompt: $pendingPrompt, performedActionIdsThisYear: $performedActionIdsThisYear)';
}


}

/// @nodoc
abstract mixin class $EducationStateCopyWith<$Res>  {
  factory $EducationStateCopyWith(EducationState value, $Res Function(EducationState) _then) = _$EducationStateCopyWithImpl;
@useResult
$Res call({
 Enrollment? currentEnrollment, List<EducationRecord> history, EducationPrompt? pendingPrompt, List<String> performedActionIdsThisYear
});


$EnrollmentCopyWith<$Res>? get currentEnrollment;$EducationPromptCopyWith<$Res>? get pendingPrompt;

}
/// @nodoc
class _$EducationStateCopyWithImpl<$Res>
    implements $EducationStateCopyWith<$Res> {
  _$EducationStateCopyWithImpl(this._self, this._then);

  final EducationState _self;
  final $Res Function(EducationState) _then;

/// Create a copy of EducationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentEnrollment = freezed,Object? history = null,Object? pendingPrompt = freezed,Object? performedActionIdsThisYear = null,}) {
  return _then(_self.copyWith(
currentEnrollment: freezed == currentEnrollment ? _self.currentEnrollment : currentEnrollment // ignore: cast_nullable_to_non_nullable
as Enrollment?,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<EducationRecord>,pendingPrompt: freezed == pendingPrompt ? _self.pendingPrompt : pendingPrompt // ignore: cast_nullable_to_non_nullable
as EducationPrompt?,performedActionIdsThisYear: null == performedActionIdsThisYear ? _self.performedActionIdsThisYear : performedActionIdsThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of EducationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EnrollmentCopyWith<$Res>? get currentEnrollment {
    if (_self.currentEnrollment == null) {
    return null;
  }

  return $EnrollmentCopyWith<$Res>(_self.currentEnrollment!, (value) {
    return _then(_self.copyWith(currentEnrollment: value));
  });
}/// Create a copy of EducationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EducationPromptCopyWith<$Res>? get pendingPrompt {
    if (_self.pendingPrompt == null) {
    return null;
  }

  return $EducationPromptCopyWith<$Res>(_self.pendingPrompt!, (value) {
    return _then(_self.copyWith(pendingPrompt: value));
  });
}
}


/// Adds pattern-matching-related methods to [EducationState].
extension EducationStatePatterns on EducationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EducationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EducationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EducationState value)  $default,){
final _that = this;
switch (_that) {
case _EducationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EducationState value)?  $default,){
final _that = this;
switch (_that) {
case _EducationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Enrollment? currentEnrollment,  List<EducationRecord> history,  EducationPrompt? pendingPrompt,  List<String> performedActionIdsThisYear)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EducationState() when $default != null:
return $default(_that.currentEnrollment,_that.history,_that.pendingPrompt,_that.performedActionIdsThisYear);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Enrollment? currentEnrollment,  List<EducationRecord> history,  EducationPrompt? pendingPrompt,  List<String> performedActionIdsThisYear)  $default,) {final _that = this;
switch (_that) {
case _EducationState():
return $default(_that.currentEnrollment,_that.history,_that.pendingPrompt,_that.performedActionIdsThisYear);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Enrollment? currentEnrollment,  List<EducationRecord> history,  EducationPrompt? pendingPrompt,  List<String> performedActionIdsThisYear)?  $default,) {final _that = this;
switch (_that) {
case _EducationState() when $default != null:
return $default(_that.currentEnrollment,_that.history,_that.pendingPrompt,_that.performedActionIdsThisYear);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EducationState implements EducationState {
  const _EducationState({this.currentEnrollment, final  List<EducationRecord> history = const [], this.pendingPrompt, final  List<String> performedActionIdsThisYear = const []}): _history = history,_performedActionIdsThisYear = performedActionIdsThisYear;
  factory _EducationState.fromJson(Map<String, dynamic> json) => _$EducationStateFromJson(json);

@override final  Enrollment? currentEnrollment;
 final  List<EducationRecord> _history;
@override@JsonKey() List<EducationRecord> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}

@override final  EducationPrompt? pendingPrompt;
 final  List<String> _performedActionIdsThisYear;
@override@JsonKey() List<String> get performedActionIdsThisYear {
  if (_performedActionIdsThisYear is EqualUnmodifiableListView) return _performedActionIdsThisYear;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_performedActionIdsThisYear);
}


/// Create a copy of EducationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EducationStateCopyWith<_EducationState> get copyWith => __$EducationStateCopyWithImpl<_EducationState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EducationStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EducationState&&(identical(other.currentEnrollment, currentEnrollment) || other.currentEnrollment == currentEnrollment)&&const DeepCollectionEquality().equals(other._history, _history)&&(identical(other.pendingPrompt, pendingPrompt) || other.pendingPrompt == pendingPrompt)&&const DeepCollectionEquality().equals(other._performedActionIdsThisYear, _performedActionIdsThisYear));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentEnrollment,const DeepCollectionEquality().hash(_history),pendingPrompt,const DeepCollectionEquality().hash(_performedActionIdsThisYear));

@override
String toString() {
  return 'EducationState(currentEnrollment: $currentEnrollment, history: $history, pendingPrompt: $pendingPrompt, performedActionIdsThisYear: $performedActionIdsThisYear)';
}


}

/// @nodoc
abstract mixin class _$EducationStateCopyWith<$Res> implements $EducationStateCopyWith<$Res> {
  factory _$EducationStateCopyWith(_EducationState value, $Res Function(_EducationState) _then) = __$EducationStateCopyWithImpl;
@override @useResult
$Res call({
 Enrollment? currentEnrollment, List<EducationRecord> history, EducationPrompt? pendingPrompt, List<String> performedActionIdsThisYear
});


@override $EnrollmentCopyWith<$Res>? get currentEnrollment;@override $EducationPromptCopyWith<$Res>? get pendingPrompt;

}
/// @nodoc
class __$EducationStateCopyWithImpl<$Res>
    implements _$EducationStateCopyWith<$Res> {
  __$EducationStateCopyWithImpl(this._self, this._then);

  final _EducationState _self;
  final $Res Function(_EducationState) _then;

/// Create a copy of EducationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentEnrollment = freezed,Object? history = null,Object? pendingPrompt = freezed,Object? performedActionIdsThisYear = null,}) {
  return _then(_EducationState(
currentEnrollment: freezed == currentEnrollment ? _self.currentEnrollment : currentEnrollment // ignore: cast_nullable_to_non_nullable
as Enrollment?,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<EducationRecord>,pendingPrompt: freezed == pendingPrompt ? _self.pendingPrompt : pendingPrompt // ignore: cast_nullable_to_non_nullable
as EducationPrompt?,performedActionIdsThisYear: null == performedActionIdsThisYear ? _self._performedActionIdsThisYear : performedActionIdsThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of EducationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EnrollmentCopyWith<$Res>? get currentEnrollment {
    if (_self.currentEnrollment == null) {
    return null;
  }

  return $EnrollmentCopyWith<$Res>(_self.currentEnrollment!, (value) {
    return _then(_self.copyWith(currentEnrollment: value));
  });
}/// Create a copy of EducationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EducationPromptCopyWith<$Res>? get pendingPrompt {
    if (_self.pendingPrompt == null) {
    return null;
  }

  return $EducationPromptCopyWith<$Res>(_self.pendingPrompt!, (value) {
    return _then(_self.copyWith(pendingPrompt: value));
  });
}
}

// dart format on
