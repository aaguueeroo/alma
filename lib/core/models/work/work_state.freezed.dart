// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkState {

 List<Employment> get currentEmployments; List<WorkRecord> get history; WorkPrompt? get pendingPrompt; Map<String, List<GameAction>> get performedActionsByJobIdThisYear; List<String> get completedCasualJobIdsThisYear;
/// Create a copy of WorkState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkStateCopyWith<WorkState> get copyWith => _$WorkStateCopyWithImpl<WorkState>(this as WorkState, _$identity);

  /// Serializes this WorkState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkState&&const DeepCollectionEquality().equals(other.currentEmployments, currentEmployments)&&const DeepCollectionEquality().equals(other.history, history)&&(identical(other.pendingPrompt, pendingPrompt) || other.pendingPrompt == pendingPrompt)&&const DeepCollectionEquality().equals(other.performedActionsByJobIdThisYear, performedActionsByJobIdThisYear)&&const DeepCollectionEquality().equals(other.completedCasualJobIdsThisYear, completedCasualJobIdsThisYear));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(currentEmployments),const DeepCollectionEquality().hash(history),pendingPrompt,const DeepCollectionEquality().hash(performedActionsByJobIdThisYear),const DeepCollectionEquality().hash(completedCasualJobIdsThisYear));

@override
String toString() {
  return 'WorkState(currentEmployments: $currentEmployments, history: $history, pendingPrompt: $pendingPrompt, performedActionsByJobIdThisYear: $performedActionsByJobIdThisYear, completedCasualJobIdsThisYear: $completedCasualJobIdsThisYear)';
}


}

/// @nodoc
abstract mixin class $WorkStateCopyWith<$Res>  {
  factory $WorkStateCopyWith(WorkState value, $Res Function(WorkState) _then) = _$WorkStateCopyWithImpl;
@useResult
$Res call({
 List<Employment> currentEmployments, List<WorkRecord> history, WorkPrompt? pendingPrompt, Map<String, List<GameAction>> performedActionsByJobIdThisYear, List<String> completedCasualJobIdsThisYear
});


$WorkPromptCopyWith<$Res>? get pendingPrompt;

}
/// @nodoc
class _$WorkStateCopyWithImpl<$Res>
    implements $WorkStateCopyWith<$Res> {
  _$WorkStateCopyWithImpl(this._self, this._then);

  final WorkState _self;
  final $Res Function(WorkState) _then;

/// Create a copy of WorkState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentEmployments = null,Object? history = null,Object? pendingPrompt = freezed,Object? performedActionsByJobIdThisYear = null,Object? completedCasualJobIdsThisYear = null,}) {
  return _then(_self.copyWith(
currentEmployments: null == currentEmployments ? _self.currentEmployments : currentEmployments // ignore: cast_nullable_to_non_nullable
as List<Employment>,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<WorkRecord>,pendingPrompt: freezed == pendingPrompt ? _self.pendingPrompt : pendingPrompt // ignore: cast_nullable_to_non_nullable
as WorkPrompt?,performedActionsByJobIdThisYear: null == performedActionsByJobIdThisYear ? _self.performedActionsByJobIdThisYear : performedActionsByJobIdThisYear // ignore: cast_nullable_to_non_nullable
as Map<String, List<GameAction>>,completedCasualJobIdsThisYear: null == completedCasualJobIdsThisYear ? _self.completedCasualJobIdsThisYear : completedCasualJobIdsThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of WorkState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkPromptCopyWith<$Res>? get pendingPrompt {
    if (_self.pendingPrompt == null) {
    return null;
  }

  return $WorkPromptCopyWith<$Res>(_self.pendingPrompt!, (value) {
    return _then(_self.copyWith(pendingPrompt: value));
  });
}
}


/// Adds pattern-matching-related methods to [WorkState].
extension WorkStatePatterns on WorkState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkState value)  $default,){
final _that = this;
switch (_that) {
case _WorkState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkState value)?  $default,){
final _that = this;
switch (_that) {
case _WorkState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Employment> currentEmployments,  List<WorkRecord> history,  WorkPrompt? pendingPrompt,  Map<String, List<GameAction>> performedActionsByJobIdThisYear,  List<String> completedCasualJobIdsThisYear)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkState() when $default != null:
return $default(_that.currentEmployments,_that.history,_that.pendingPrompt,_that.performedActionsByJobIdThisYear,_that.completedCasualJobIdsThisYear);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Employment> currentEmployments,  List<WorkRecord> history,  WorkPrompt? pendingPrompt,  Map<String, List<GameAction>> performedActionsByJobIdThisYear,  List<String> completedCasualJobIdsThisYear)  $default,) {final _that = this;
switch (_that) {
case _WorkState():
return $default(_that.currentEmployments,_that.history,_that.pendingPrompt,_that.performedActionsByJobIdThisYear,_that.completedCasualJobIdsThisYear);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Employment> currentEmployments,  List<WorkRecord> history,  WorkPrompt? pendingPrompt,  Map<String, List<GameAction>> performedActionsByJobIdThisYear,  List<String> completedCasualJobIdsThisYear)?  $default,) {final _that = this;
switch (_that) {
case _WorkState() when $default != null:
return $default(_that.currentEmployments,_that.history,_that.pendingPrompt,_that.performedActionsByJobIdThisYear,_that.completedCasualJobIdsThisYear);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkState implements WorkState {
  const _WorkState({final  List<Employment> currentEmployments = const [], final  List<WorkRecord> history = const [], this.pendingPrompt, final  Map<String, List<GameAction>> performedActionsByJobIdThisYear = const {}, final  List<String> completedCasualJobIdsThisYear = const []}): _currentEmployments = currentEmployments,_history = history,_performedActionsByJobIdThisYear = performedActionsByJobIdThisYear,_completedCasualJobIdsThisYear = completedCasualJobIdsThisYear;
  factory _WorkState.fromJson(Map<String, dynamic> json) => _$WorkStateFromJson(json);

 final  List<Employment> _currentEmployments;
@override@JsonKey() List<Employment> get currentEmployments {
  if (_currentEmployments is EqualUnmodifiableListView) return _currentEmployments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currentEmployments);
}

 final  List<WorkRecord> _history;
@override@JsonKey() List<WorkRecord> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}

@override final  WorkPrompt? pendingPrompt;
 final  Map<String, List<GameAction>> _performedActionsByJobIdThisYear;
@override@JsonKey() Map<String, List<GameAction>> get performedActionsByJobIdThisYear {
  if (_performedActionsByJobIdThisYear is EqualUnmodifiableMapView) return _performedActionsByJobIdThisYear;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_performedActionsByJobIdThisYear);
}

 final  List<String> _completedCasualJobIdsThisYear;
@override@JsonKey() List<String> get completedCasualJobIdsThisYear {
  if (_completedCasualJobIdsThisYear is EqualUnmodifiableListView) return _completedCasualJobIdsThisYear;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_completedCasualJobIdsThisYear);
}


/// Create a copy of WorkState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkStateCopyWith<_WorkState> get copyWith => __$WorkStateCopyWithImpl<_WorkState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkState&&const DeepCollectionEquality().equals(other._currentEmployments, _currentEmployments)&&const DeepCollectionEquality().equals(other._history, _history)&&(identical(other.pendingPrompt, pendingPrompt) || other.pendingPrompt == pendingPrompt)&&const DeepCollectionEquality().equals(other._performedActionsByJobIdThisYear, _performedActionsByJobIdThisYear)&&const DeepCollectionEquality().equals(other._completedCasualJobIdsThisYear, _completedCasualJobIdsThisYear));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currentEmployments),const DeepCollectionEquality().hash(_history),pendingPrompt,const DeepCollectionEquality().hash(_performedActionsByJobIdThisYear),const DeepCollectionEquality().hash(_completedCasualJobIdsThisYear));

@override
String toString() {
  return 'WorkState(currentEmployments: $currentEmployments, history: $history, pendingPrompt: $pendingPrompt, performedActionsByJobIdThisYear: $performedActionsByJobIdThisYear, completedCasualJobIdsThisYear: $completedCasualJobIdsThisYear)';
}


}

/// @nodoc
abstract mixin class _$WorkStateCopyWith<$Res> implements $WorkStateCopyWith<$Res> {
  factory _$WorkStateCopyWith(_WorkState value, $Res Function(_WorkState) _then) = __$WorkStateCopyWithImpl;
@override @useResult
$Res call({
 List<Employment> currentEmployments, List<WorkRecord> history, WorkPrompt? pendingPrompt, Map<String, List<GameAction>> performedActionsByJobIdThisYear, List<String> completedCasualJobIdsThisYear
});


@override $WorkPromptCopyWith<$Res>? get pendingPrompt;

}
/// @nodoc
class __$WorkStateCopyWithImpl<$Res>
    implements _$WorkStateCopyWith<$Res> {
  __$WorkStateCopyWithImpl(this._self, this._then);

  final _WorkState _self;
  final $Res Function(_WorkState) _then;

/// Create a copy of WorkState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentEmployments = null,Object? history = null,Object? pendingPrompt = freezed,Object? performedActionsByJobIdThisYear = null,Object? completedCasualJobIdsThisYear = null,}) {
  return _then(_WorkState(
currentEmployments: null == currentEmployments ? _self._currentEmployments : currentEmployments // ignore: cast_nullable_to_non_nullable
as List<Employment>,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<WorkRecord>,pendingPrompt: freezed == pendingPrompt ? _self.pendingPrompt : pendingPrompt // ignore: cast_nullable_to_non_nullable
as WorkPrompt?,performedActionsByJobIdThisYear: null == performedActionsByJobIdThisYear ? _self._performedActionsByJobIdThisYear : performedActionsByJobIdThisYear // ignore: cast_nullable_to_non_nullable
as Map<String, List<GameAction>>,completedCasualJobIdsThisYear: null == completedCasualJobIdsThisYear ? _self._completedCasualJobIdsThisYear : completedCasualJobIdsThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of WorkState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkPromptCopyWith<$Res>? get pendingPrompt {
    if (_self.pendingPrompt == null) {
    return null;
  }

  return $WorkPromptCopyWith<$Res>(_self.pendingPrompt!, (value) {
    return _then(_self.copyWith(pendingPrompt: value));
  });
}
}

// dart format on
