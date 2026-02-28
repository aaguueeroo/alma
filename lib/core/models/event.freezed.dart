// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameEvent {

 String get id; String get title; String get description; EventTriggerConditions get triggerConditions; List<EventOption> get choices;
/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameEventCopyWith<GameEvent> get copyWith => _$GameEventCopyWithImpl<GameEvent>(this as GameEvent, _$identity);

  /// Serializes this GameEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.triggerConditions, triggerConditions) || other.triggerConditions == triggerConditions)&&const DeepCollectionEquality().equals(other.choices, choices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,triggerConditions,const DeepCollectionEquality().hash(choices));

@override
String toString() {
  return 'GameEvent(id: $id, title: $title, description: $description, triggerConditions: $triggerConditions, choices: $choices)';
}


}

/// @nodoc
abstract mixin class $GameEventCopyWith<$Res>  {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) _then) = _$GameEventCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, EventTriggerConditions triggerConditions, List<EventOption> choices
});


$EventTriggerConditionsCopyWith<$Res> get triggerConditions;

}
/// @nodoc
class _$GameEventCopyWithImpl<$Res>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._self, this._then);

  final GameEvent _self;
  final $Res Function(GameEvent) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? triggerConditions = null,Object? choices = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,triggerConditions: null == triggerConditions ? _self.triggerConditions : triggerConditions // ignore: cast_nullable_to_non_nullable
as EventTriggerConditions,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<EventOption>,
  ));
}
/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventTriggerConditionsCopyWith<$Res> get triggerConditions {
  
  return $EventTriggerConditionsCopyWith<$Res>(_self.triggerConditions, (value) {
    return _then(_self.copyWith(triggerConditions: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameEvent].
extension GameEventPatterns on GameEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameEvent value)  $default,){
final _that = this;
switch (_that) {
case _GameEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameEvent value)?  $default,){
final _that = this;
switch (_that) {
case _GameEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  EventTriggerConditions triggerConditions,  List<EventOption> choices)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameEvent() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.triggerConditions,_that.choices);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  EventTriggerConditions triggerConditions,  List<EventOption> choices)  $default,) {final _that = this;
switch (_that) {
case _GameEvent():
return $default(_that.id,_that.title,_that.description,_that.triggerConditions,_that.choices);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  EventTriggerConditions triggerConditions,  List<EventOption> choices)?  $default,) {final _that = this;
switch (_that) {
case _GameEvent() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.triggerConditions,_that.choices);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameEvent implements GameEvent {
  const _GameEvent({required this.id, required this.title, required this.description, required this.triggerConditions, required final  List<EventOption> choices}): _choices = choices;
  factory _GameEvent.fromJson(Map<String, dynamic> json) => _$GameEventFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  EventTriggerConditions triggerConditions;
 final  List<EventOption> _choices;
@override List<EventOption> get choices {
  if (_choices is EqualUnmodifiableListView) return _choices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_choices);
}


/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameEventCopyWith<_GameEvent> get copyWith => __$GameEventCopyWithImpl<_GameEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.triggerConditions, triggerConditions) || other.triggerConditions == triggerConditions)&&const DeepCollectionEquality().equals(other._choices, _choices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,triggerConditions,const DeepCollectionEquality().hash(_choices));

@override
String toString() {
  return 'GameEvent(id: $id, title: $title, description: $description, triggerConditions: $triggerConditions, choices: $choices)';
}


}

/// @nodoc
abstract mixin class _$GameEventCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory _$GameEventCopyWith(_GameEvent value, $Res Function(_GameEvent) _then) = __$GameEventCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, EventTriggerConditions triggerConditions, List<EventOption> choices
});


@override $EventTriggerConditionsCopyWith<$Res> get triggerConditions;

}
/// @nodoc
class __$GameEventCopyWithImpl<$Res>
    implements _$GameEventCopyWith<$Res> {
  __$GameEventCopyWithImpl(this._self, this._then);

  final _GameEvent _self;
  final $Res Function(_GameEvent) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? triggerConditions = null,Object? choices = null,}) {
  return _then(_GameEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,triggerConditions: null == triggerConditions ? _self.triggerConditions : triggerConditions // ignore: cast_nullable_to_non_nullable
as EventTriggerConditions,choices: null == choices ? _self._choices : choices // ignore: cast_nullable_to_non_nullable
as List<EventOption>,
  ));
}

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventTriggerConditionsCopyWith<$Res> get triggerConditions {
  
  return $EventTriggerConditionsCopyWith<$Res>(_self.triggerConditions, (value) {
    return _then(_self.copyWith(triggerConditions: value));
  });
}
}


/// @nodoc
mixin _$EventTriggerConditions {

 int get minAge; int get maxAge; List<TraitType> get requiredTraits; List<TraitType> get forbiddenTraits; int get minHealth; double get baseChance; String? get requiredSection; int? get minSectionPerformance;
/// Create a copy of EventTriggerConditions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventTriggerConditionsCopyWith<EventTriggerConditions> get copyWith => _$EventTriggerConditionsCopyWithImpl<EventTriggerConditions>(this as EventTriggerConditions, _$identity);

  /// Serializes this EventTriggerConditions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventTriggerConditions&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&const DeepCollectionEquality().equals(other.requiredTraits, requiredTraits)&&const DeepCollectionEquality().equals(other.forbiddenTraits, forbiddenTraits)&&(identical(other.minHealth, minHealth) || other.minHealth == minHealth)&&(identical(other.baseChance, baseChance) || other.baseChance == baseChance)&&(identical(other.requiredSection, requiredSection) || other.requiredSection == requiredSection)&&(identical(other.minSectionPerformance, minSectionPerformance) || other.minSectionPerformance == minSectionPerformance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minAge,maxAge,const DeepCollectionEquality().hash(requiredTraits),const DeepCollectionEquality().hash(forbiddenTraits),minHealth,baseChance,requiredSection,minSectionPerformance);

@override
String toString() {
  return 'EventTriggerConditions(minAge: $minAge, maxAge: $maxAge, requiredTraits: $requiredTraits, forbiddenTraits: $forbiddenTraits, minHealth: $minHealth, baseChance: $baseChance, requiredSection: $requiredSection, minSectionPerformance: $minSectionPerformance)';
}


}

/// @nodoc
abstract mixin class $EventTriggerConditionsCopyWith<$Res>  {
  factory $EventTriggerConditionsCopyWith(EventTriggerConditions value, $Res Function(EventTriggerConditions) _then) = _$EventTriggerConditionsCopyWithImpl;
@useResult
$Res call({
 int minAge, int maxAge, List<TraitType> requiredTraits, List<TraitType> forbiddenTraits, int minHealth, double baseChance, String? requiredSection, int? minSectionPerformance
});




}
/// @nodoc
class _$EventTriggerConditionsCopyWithImpl<$Res>
    implements $EventTriggerConditionsCopyWith<$Res> {
  _$EventTriggerConditionsCopyWithImpl(this._self, this._then);

  final EventTriggerConditions _self;
  final $Res Function(EventTriggerConditions) _then;

/// Create a copy of EventTriggerConditions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minAge = null,Object? maxAge = null,Object? requiredTraits = null,Object? forbiddenTraits = null,Object? minHealth = null,Object? baseChance = null,Object? requiredSection = freezed,Object? minSectionPerformance = freezed,}) {
  return _then(_self.copyWith(
minAge: null == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int,maxAge: null == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int,requiredTraits: null == requiredTraits ? _self.requiredTraits : requiredTraits // ignore: cast_nullable_to_non_nullable
as List<TraitType>,forbiddenTraits: null == forbiddenTraits ? _self.forbiddenTraits : forbiddenTraits // ignore: cast_nullable_to_non_nullable
as List<TraitType>,minHealth: null == minHealth ? _self.minHealth : minHealth // ignore: cast_nullable_to_non_nullable
as int,baseChance: null == baseChance ? _self.baseChance : baseChance // ignore: cast_nullable_to_non_nullable
as double,requiredSection: freezed == requiredSection ? _self.requiredSection : requiredSection // ignore: cast_nullable_to_non_nullable
as String?,minSectionPerformance: freezed == minSectionPerformance ? _self.minSectionPerformance : minSectionPerformance // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [EventTriggerConditions].
extension EventTriggerConditionsPatterns on EventTriggerConditions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventTriggerConditions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventTriggerConditions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventTriggerConditions value)  $default,){
final _that = this;
switch (_that) {
case _EventTriggerConditions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventTriggerConditions value)?  $default,){
final _that = this;
switch (_that) {
case _EventTriggerConditions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int minAge,  int maxAge,  List<TraitType> requiredTraits,  List<TraitType> forbiddenTraits,  int minHealth,  double baseChance,  String? requiredSection,  int? minSectionPerformance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventTriggerConditions() when $default != null:
return $default(_that.minAge,_that.maxAge,_that.requiredTraits,_that.forbiddenTraits,_that.minHealth,_that.baseChance,_that.requiredSection,_that.minSectionPerformance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int minAge,  int maxAge,  List<TraitType> requiredTraits,  List<TraitType> forbiddenTraits,  int minHealth,  double baseChance,  String? requiredSection,  int? minSectionPerformance)  $default,) {final _that = this;
switch (_that) {
case _EventTriggerConditions():
return $default(_that.minAge,_that.maxAge,_that.requiredTraits,_that.forbiddenTraits,_that.minHealth,_that.baseChance,_that.requiredSection,_that.minSectionPerformance);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int minAge,  int maxAge,  List<TraitType> requiredTraits,  List<TraitType> forbiddenTraits,  int minHealth,  double baseChance,  String? requiredSection,  int? minSectionPerformance)?  $default,) {final _that = this;
switch (_that) {
case _EventTriggerConditions() when $default != null:
return $default(_that.minAge,_that.maxAge,_that.requiredTraits,_that.forbiddenTraits,_that.minHealth,_that.baseChance,_that.requiredSection,_that.minSectionPerformance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventTriggerConditions implements EventTriggerConditions {
  const _EventTriggerConditions({this.minAge = 0, this.maxAge = 100, final  List<TraitType> requiredTraits = const [], final  List<TraitType> forbiddenTraits = const [], this.minHealth = 0, this.baseChance = 1.0, this.requiredSection, this.minSectionPerformance}): _requiredTraits = requiredTraits,_forbiddenTraits = forbiddenTraits;
  factory _EventTriggerConditions.fromJson(Map<String, dynamic> json) => _$EventTriggerConditionsFromJson(json);

@override@JsonKey() final  int minAge;
@override@JsonKey() final  int maxAge;
 final  List<TraitType> _requiredTraits;
@override@JsonKey() List<TraitType> get requiredTraits {
  if (_requiredTraits is EqualUnmodifiableListView) return _requiredTraits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_requiredTraits);
}

 final  List<TraitType> _forbiddenTraits;
@override@JsonKey() List<TraitType> get forbiddenTraits {
  if (_forbiddenTraits is EqualUnmodifiableListView) return _forbiddenTraits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_forbiddenTraits);
}

@override@JsonKey() final  int minHealth;
@override@JsonKey() final  double baseChance;
@override final  String? requiredSection;
@override final  int? minSectionPerformance;

/// Create a copy of EventTriggerConditions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventTriggerConditionsCopyWith<_EventTriggerConditions> get copyWith => __$EventTriggerConditionsCopyWithImpl<_EventTriggerConditions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventTriggerConditionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventTriggerConditions&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&const DeepCollectionEquality().equals(other._requiredTraits, _requiredTraits)&&const DeepCollectionEquality().equals(other._forbiddenTraits, _forbiddenTraits)&&(identical(other.minHealth, minHealth) || other.minHealth == minHealth)&&(identical(other.baseChance, baseChance) || other.baseChance == baseChance)&&(identical(other.requiredSection, requiredSection) || other.requiredSection == requiredSection)&&(identical(other.minSectionPerformance, minSectionPerformance) || other.minSectionPerformance == minSectionPerformance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minAge,maxAge,const DeepCollectionEquality().hash(_requiredTraits),const DeepCollectionEquality().hash(_forbiddenTraits),minHealth,baseChance,requiredSection,minSectionPerformance);

@override
String toString() {
  return 'EventTriggerConditions(minAge: $minAge, maxAge: $maxAge, requiredTraits: $requiredTraits, forbiddenTraits: $forbiddenTraits, minHealth: $minHealth, baseChance: $baseChance, requiredSection: $requiredSection, minSectionPerformance: $minSectionPerformance)';
}


}

/// @nodoc
abstract mixin class _$EventTriggerConditionsCopyWith<$Res> implements $EventTriggerConditionsCopyWith<$Res> {
  factory _$EventTriggerConditionsCopyWith(_EventTriggerConditions value, $Res Function(_EventTriggerConditions) _then) = __$EventTriggerConditionsCopyWithImpl;
@override @useResult
$Res call({
 int minAge, int maxAge, List<TraitType> requiredTraits, List<TraitType> forbiddenTraits, int minHealth, double baseChance, String? requiredSection, int? minSectionPerformance
});




}
/// @nodoc
class __$EventTriggerConditionsCopyWithImpl<$Res>
    implements _$EventTriggerConditionsCopyWith<$Res> {
  __$EventTriggerConditionsCopyWithImpl(this._self, this._then);

  final _EventTriggerConditions _self;
  final $Res Function(_EventTriggerConditions) _then;

/// Create a copy of EventTriggerConditions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minAge = null,Object? maxAge = null,Object? requiredTraits = null,Object? forbiddenTraits = null,Object? minHealth = null,Object? baseChance = null,Object? requiredSection = freezed,Object? minSectionPerformance = freezed,}) {
  return _then(_EventTriggerConditions(
minAge: null == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int,maxAge: null == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int,requiredTraits: null == requiredTraits ? _self._requiredTraits : requiredTraits // ignore: cast_nullable_to_non_nullable
as List<TraitType>,forbiddenTraits: null == forbiddenTraits ? _self._forbiddenTraits : forbiddenTraits // ignore: cast_nullable_to_non_nullable
as List<TraitType>,minHealth: null == minHealth ? _self.minHealth : minHealth // ignore: cast_nullable_to_non_nullable
as int,baseChance: null == baseChance ? _self.baseChance : baseChance // ignore: cast_nullable_to_non_nullable
as double,requiredSection: freezed == requiredSection ? _self.requiredSection : requiredSection // ignore: cast_nullable_to_non_nullable
as String?,minSectionPerformance: freezed == minSectionPerformance ? _self.minSectionPerformance : minSectionPerformance // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
