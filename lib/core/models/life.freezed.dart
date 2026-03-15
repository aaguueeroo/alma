// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'life.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Life {

 String get id; String get soulId; int get seed; String get templateId; LifeState get state; bool get isComplete; LifeSummary? get summary;
/// Create a copy of Life
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LifeCopyWith<Life> get copyWith => _$LifeCopyWithImpl<Life>(this as Life, _$identity);

  /// Serializes this Life to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Life&&(identical(other.id, id) || other.id == id)&&(identical(other.soulId, soulId) || other.soulId == soulId)&&(identical(other.seed, seed) || other.seed == seed)&&(identical(other.templateId, templateId) || other.templateId == templateId)&&(identical(other.state, state) || other.state == state)&&(identical(other.isComplete, isComplete) || other.isComplete == isComplete)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,soulId,seed,templateId,state,isComplete,summary);

@override
String toString() {
  return 'Life(id: $id, soulId: $soulId, seed: $seed, templateId: $templateId, state: $state, isComplete: $isComplete, summary: $summary)';
}


}

/// @nodoc
abstract mixin class $LifeCopyWith<$Res>  {
  factory $LifeCopyWith(Life value, $Res Function(Life) _then) = _$LifeCopyWithImpl;
@useResult
$Res call({
 String id, String soulId, int seed, String templateId, LifeState state, bool isComplete, LifeSummary? summary
});


$LifeStateCopyWith<$Res> get state;$LifeSummaryCopyWith<$Res>? get summary;

}
/// @nodoc
class _$LifeCopyWithImpl<$Res>
    implements $LifeCopyWith<$Res> {
  _$LifeCopyWithImpl(this._self, this._then);

  final Life _self;
  final $Res Function(Life) _then;

/// Create a copy of Life
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? soulId = null,Object? seed = null,Object? templateId = null,Object? state = null,Object? isComplete = null,Object? summary = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,soulId: null == soulId ? _self.soulId : soulId // ignore: cast_nullable_to_non_nullable
as String,seed: null == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as int,templateId: null == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as LifeState,isComplete: null == isComplete ? _self.isComplete : isComplete // ignore: cast_nullable_to_non_nullable
as bool,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as LifeSummary?,
  ));
}
/// Create a copy of Life
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LifeStateCopyWith<$Res> get state {
  
  return $LifeStateCopyWith<$Res>(_self.state, (value) {
    return _then(_self.copyWith(state: value));
  });
}/// Create a copy of Life
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LifeSummaryCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $LifeSummaryCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [Life].
extension LifePatterns on Life {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Life value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Life() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Life value)  $default,){
final _that = this;
switch (_that) {
case _Life():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Life value)?  $default,){
final _that = this;
switch (_that) {
case _Life() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String soulId,  int seed,  String templateId,  LifeState state,  bool isComplete,  LifeSummary? summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Life() when $default != null:
return $default(_that.id,_that.soulId,_that.seed,_that.templateId,_that.state,_that.isComplete,_that.summary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String soulId,  int seed,  String templateId,  LifeState state,  bool isComplete,  LifeSummary? summary)  $default,) {final _that = this;
switch (_that) {
case _Life():
return $default(_that.id,_that.soulId,_that.seed,_that.templateId,_that.state,_that.isComplete,_that.summary);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String soulId,  int seed,  String templateId,  LifeState state,  bool isComplete,  LifeSummary? summary)?  $default,) {final _that = this;
switch (_that) {
case _Life() when $default != null:
return $default(_that.id,_that.soulId,_that.seed,_that.templateId,_that.state,_that.isComplete,_that.summary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Life implements Life {
  const _Life({required this.id, required this.soulId, required this.seed, required this.templateId, required this.state, this.isComplete = false, this.summary});
  factory _Life.fromJson(Map<String, dynamic> json) => _$LifeFromJson(json);

@override final  String id;
@override final  String soulId;
@override final  int seed;
@override final  String templateId;
@override final  LifeState state;
@override@JsonKey() final  bool isComplete;
@override final  LifeSummary? summary;

/// Create a copy of Life
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LifeCopyWith<_Life> get copyWith => __$LifeCopyWithImpl<_Life>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LifeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Life&&(identical(other.id, id) || other.id == id)&&(identical(other.soulId, soulId) || other.soulId == soulId)&&(identical(other.seed, seed) || other.seed == seed)&&(identical(other.templateId, templateId) || other.templateId == templateId)&&(identical(other.state, state) || other.state == state)&&(identical(other.isComplete, isComplete) || other.isComplete == isComplete)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,soulId,seed,templateId,state,isComplete,summary);

@override
String toString() {
  return 'Life(id: $id, soulId: $soulId, seed: $seed, templateId: $templateId, state: $state, isComplete: $isComplete, summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$LifeCopyWith<$Res> implements $LifeCopyWith<$Res> {
  factory _$LifeCopyWith(_Life value, $Res Function(_Life) _then) = __$LifeCopyWithImpl;
@override @useResult
$Res call({
 String id, String soulId, int seed, String templateId, LifeState state, bool isComplete, LifeSummary? summary
});


@override $LifeStateCopyWith<$Res> get state;@override $LifeSummaryCopyWith<$Res>? get summary;

}
/// @nodoc
class __$LifeCopyWithImpl<$Res>
    implements _$LifeCopyWith<$Res> {
  __$LifeCopyWithImpl(this._self, this._then);

  final _Life _self;
  final $Res Function(_Life) _then;

/// Create a copy of Life
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? soulId = null,Object? seed = null,Object? templateId = null,Object? state = null,Object? isComplete = null,Object? summary = freezed,}) {
  return _then(_Life(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,soulId: null == soulId ? _self.soulId : soulId // ignore: cast_nullable_to_non_nullable
as String,seed: null == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as int,templateId: null == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as LifeState,isComplete: null == isComplete ? _self.isComplete : isComplete // ignore: cast_nullable_to_non_nullable
as bool,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as LifeSummary?,
  ));
}

/// Create a copy of Life
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LifeStateCopyWith<$Res> get state {
  
  return $LifeStateCopyWith<$Res>(_self.state, (value) {
    return _then(_self.copyWith(state: value));
  });
}/// Create a copy of Life
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LifeSummaryCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $LifeSummaryCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// @nodoc
mixin _$LifeState {

 int get currentYear; int get age; int get health; int get money; int get timeRemaining; SkillSet get skills; List<TraitType> get traits; List<Habit> get habits; List<Relationship> get relationships; List<Section> get sections; HiddenMetrics get hiddenMetrics; int get eventsTriggeredThisYear; List<String> get eventIdsTriggeredThisYear; List<String> get eventIdsTriggeredInLife; List<String> get unlockedEventIds; GameEvent? get pendingEvent; bool get isDead; String? get causeOfDeath; Map<String, dynamic> get lifeData; List<MoralImpact> get moralImpacts; List<GameLog> get logs; EducationState? get educationState; WorkState? get workState; SocialState? get socialState; HealthState? get healthState;
/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LifeStateCopyWith<LifeState> get copyWith => _$LifeStateCopyWithImpl<LifeState>(this as LifeState, _$identity);

  /// Serializes this LifeState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LifeState&&(identical(other.currentYear, currentYear) || other.currentYear == currentYear)&&(identical(other.age, age) || other.age == age)&&(identical(other.health, health) || other.health == health)&&(identical(other.money, money) || other.money == money)&&(identical(other.timeRemaining, timeRemaining) || other.timeRemaining == timeRemaining)&&(identical(other.skills, skills) || other.skills == skills)&&const DeepCollectionEquality().equals(other.traits, traits)&&const DeepCollectionEquality().equals(other.habits, habits)&&const DeepCollectionEquality().equals(other.relationships, relationships)&&const DeepCollectionEquality().equals(other.sections, sections)&&(identical(other.hiddenMetrics, hiddenMetrics) || other.hiddenMetrics == hiddenMetrics)&&(identical(other.eventsTriggeredThisYear, eventsTriggeredThisYear) || other.eventsTriggeredThisYear == eventsTriggeredThisYear)&&const DeepCollectionEquality().equals(other.eventIdsTriggeredThisYear, eventIdsTriggeredThisYear)&&const DeepCollectionEquality().equals(other.eventIdsTriggeredInLife, eventIdsTriggeredInLife)&&const DeepCollectionEquality().equals(other.unlockedEventIds, unlockedEventIds)&&(identical(other.pendingEvent, pendingEvent) || other.pendingEvent == pendingEvent)&&(identical(other.isDead, isDead) || other.isDead == isDead)&&(identical(other.causeOfDeath, causeOfDeath) || other.causeOfDeath == causeOfDeath)&&const DeepCollectionEquality().equals(other.lifeData, lifeData)&&const DeepCollectionEquality().equals(other.moralImpacts, moralImpacts)&&const DeepCollectionEquality().equals(other.logs, logs)&&(identical(other.educationState, educationState) || other.educationState == educationState)&&(identical(other.workState, workState) || other.workState == workState)&&(identical(other.socialState, socialState) || other.socialState == socialState)&&(identical(other.healthState, healthState) || other.healthState == healthState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,currentYear,age,health,money,timeRemaining,skills,const DeepCollectionEquality().hash(traits),const DeepCollectionEquality().hash(habits),const DeepCollectionEquality().hash(relationships),const DeepCollectionEquality().hash(sections),hiddenMetrics,eventsTriggeredThisYear,const DeepCollectionEquality().hash(eventIdsTriggeredThisYear),const DeepCollectionEquality().hash(eventIdsTriggeredInLife),const DeepCollectionEquality().hash(unlockedEventIds),pendingEvent,isDead,causeOfDeath,const DeepCollectionEquality().hash(lifeData),const DeepCollectionEquality().hash(moralImpacts),const DeepCollectionEquality().hash(logs),educationState,workState,socialState,healthState]);

@override
String toString() {
  return 'LifeState(currentYear: $currentYear, age: $age, health: $health, money: $money, timeRemaining: $timeRemaining, skills: $skills, traits: $traits, habits: $habits, relationships: $relationships, sections: $sections, hiddenMetrics: $hiddenMetrics, eventsTriggeredThisYear: $eventsTriggeredThisYear, eventIdsTriggeredThisYear: $eventIdsTriggeredThisYear, eventIdsTriggeredInLife: $eventIdsTriggeredInLife, unlockedEventIds: $unlockedEventIds, pendingEvent: $pendingEvent, isDead: $isDead, causeOfDeath: $causeOfDeath, lifeData: $lifeData, moralImpacts: $moralImpacts, logs: $logs, educationState: $educationState, workState: $workState, socialState: $socialState, healthState: $healthState)';
}


}

/// @nodoc
abstract mixin class $LifeStateCopyWith<$Res>  {
  factory $LifeStateCopyWith(LifeState value, $Res Function(LifeState) _then) = _$LifeStateCopyWithImpl;
@useResult
$Res call({
 int currentYear, int age, int health, int money, int timeRemaining, SkillSet skills, List<TraitType> traits, List<Habit> habits, List<Relationship> relationships, List<Section> sections, HiddenMetrics hiddenMetrics, int eventsTriggeredThisYear, List<String> eventIdsTriggeredThisYear, List<String> eventIdsTriggeredInLife, List<String> unlockedEventIds, GameEvent? pendingEvent, bool isDead, String? causeOfDeath, Map<String, dynamic> lifeData, List<MoralImpact> moralImpacts, List<GameLog> logs, EducationState? educationState, WorkState? workState, SocialState? socialState, HealthState? healthState
});


$SkillSetCopyWith<$Res> get skills;$HiddenMetricsCopyWith<$Res> get hiddenMetrics;$GameEventCopyWith<$Res>? get pendingEvent;$EducationStateCopyWith<$Res>? get educationState;$WorkStateCopyWith<$Res>? get workState;$SocialStateCopyWith<$Res>? get socialState;$HealthStateCopyWith<$Res>? get healthState;

}
/// @nodoc
class _$LifeStateCopyWithImpl<$Res>
    implements $LifeStateCopyWith<$Res> {
  _$LifeStateCopyWithImpl(this._self, this._then);

  final LifeState _self;
  final $Res Function(LifeState) _then;

/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentYear = null,Object? age = null,Object? health = null,Object? money = null,Object? timeRemaining = null,Object? skills = null,Object? traits = null,Object? habits = null,Object? relationships = null,Object? sections = null,Object? hiddenMetrics = null,Object? eventsTriggeredThisYear = null,Object? eventIdsTriggeredThisYear = null,Object? eventIdsTriggeredInLife = null,Object? unlockedEventIds = null,Object? pendingEvent = freezed,Object? isDead = null,Object? causeOfDeath = freezed,Object? lifeData = null,Object? moralImpacts = null,Object? logs = null,Object? educationState = freezed,Object? workState = freezed,Object? socialState = freezed,Object? healthState = freezed,}) {
  return _then(_self.copyWith(
currentYear: null == currentYear ? _self.currentYear : currentYear // ignore: cast_nullable_to_non_nullable
as int,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,health: null == health ? _self.health : health // ignore: cast_nullable_to_non_nullable
as int,money: null == money ? _self.money : money // ignore: cast_nullable_to_non_nullable
as int,timeRemaining: null == timeRemaining ? _self.timeRemaining : timeRemaining // ignore: cast_nullable_to_non_nullable
as int,skills: null == skills ? _self.skills : skills // ignore: cast_nullable_to_non_nullable
as SkillSet,traits: null == traits ? _self.traits : traits // ignore: cast_nullable_to_non_nullable
as List<TraitType>,habits: null == habits ? _self.habits : habits // ignore: cast_nullable_to_non_nullable
as List<Habit>,relationships: null == relationships ? _self.relationships : relationships // ignore: cast_nullable_to_non_nullable
as List<Relationship>,sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<Section>,hiddenMetrics: null == hiddenMetrics ? _self.hiddenMetrics : hiddenMetrics // ignore: cast_nullable_to_non_nullable
as HiddenMetrics,eventsTriggeredThisYear: null == eventsTriggeredThisYear ? _self.eventsTriggeredThisYear : eventsTriggeredThisYear // ignore: cast_nullable_to_non_nullable
as int,eventIdsTriggeredThisYear: null == eventIdsTriggeredThisYear ? _self.eventIdsTriggeredThisYear : eventIdsTriggeredThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,eventIdsTriggeredInLife: null == eventIdsTriggeredInLife ? _self.eventIdsTriggeredInLife : eventIdsTriggeredInLife // ignore: cast_nullable_to_non_nullable
as List<String>,unlockedEventIds: null == unlockedEventIds ? _self.unlockedEventIds : unlockedEventIds // ignore: cast_nullable_to_non_nullable
as List<String>,pendingEvent: freezed == pendingEvent ? _self.pendingEvent : pendingEvent // ignore: cast_nullable_to_non_nullable
as GameEvent?,isDead: null == isDead ? _self.isDead : isDead // ignore: cast_nullable_to_non_nullable
as bool,causeOfDeath: freezed == causeOfDeath ? _self.causeOfDeath : causeOfDeath // ignore: cast_nullable_to_non_nullable
as String?,lifeData: null == lifeData ? _self.lifeData : lifeData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,moralImpacts: null == moralImpacts ? _self.moralImpacts : moralImpacts // ignore: cast_nullable_to_non_nullable
as List<MoralImpact>,logs: null == logs ? _self.logs : logs // ignore: cast_nullable_to_non_nullable
as List<GameLog>,educationState: freezed == educationState ? _self.educationState : educationState // ignore: cast_nullable_to_non_nullable
as EducationState?,workState: freezed == workState ? _self.workState : workState // ignore: cast_nullable_to_non_nullable
as WorkState?,socialState: freezed == socialState ? _self.socialState : socialState // ignore: cast_nullable_to_non_nullable
as SocialState?,healthState: freezed == healthState ? _self.healthState : healthState // ignore: cast_nullable_to_non_nullable
as HealthState?,
  ));
}
/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SkillSetCopyWith<$Res> get skills {
  
  return $SkillSetCopyWith<$Res>(_self.skills, (value) {
    return _then(_self.copyWith(skills: value));
  });
}/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HiddenMetricsCopyWith<$Res> get hiddenMetrics {
  
  return $HiddenMetricsCopyWith<$Res>(_self.hiddenMetrics, (value) {
    return _then(_self.copyWith(hiddenMetrics: value));
  });
}/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameEventCopyWith<$Res>? get pendingEvent {
    if (_self.pendingEvent == null) {
    return null;
  }

  return $GameEventCopyWith<$Res>(_self.pendingEvent!, (value) {
    return _then(_self.copyWith(pendingEvent: value));
  });
}/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EducationStateCopyWith<$Res>? get educationState {
    if (_self.educationState == null) {
    return null;
  }

  return $EducationStateCopyWith<$Res>(_self.educationState!, (value) {
    return _then(_self.copyWith(educationState: value));
  });
}/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkStateCopyWith<$Res>? get workState {
    if (_self.workState == null) {
    return null;
  }

  return $WorkStateCopyWith<$Res>(_self.workState!, (value) {
    return _then(_self.copyWith(workState: value));
  });
}/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SocialStateCopyWith<$Res>? get socialState {
    if (_self.socialState == null) {
    return null;
  }

  return $SocialStateCopyWith<$Res>(_self.socialState!, (value) {
    return _then(_self.copyWith(socialState: value));
  });
}/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthStateCopyWith<$Res>? get healthState {
    if (_self.healthState == null) {
    return null;
  }

  return $HealthStateCopyWith<$Res>(_self.healthState!, (value) {
    return _then(_self.copyWith(healthState: value));
  });
}
}


/// Adds pattern-matching-related methods to [LifeState].
extension LifeStatePatterns on LifeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LifeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LifeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LifeState value)  $default,){
final _that = this;
switch (_that) {
case _LifeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LifeState value)?  $default,){
final _that = this;
switch (_that) {
case _LifeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentYear,  int age,  int health,  int money,  int timeRemaining,  SkillSet skills,  List<TraitType> traits,  List<Habit> habits,  List<Relationship> relationships,  List<Section> sections,  HiddenMetrics hiddenMetrics,  int eventsTriggeredThisYear,  List<String> eventIdsTriggeredThisYear,  List<String> eventIdsTriggeredInLife,  List<String> unlockedEventIds,  GameEvent? pendingEvent,  bool isDead,  String? causeOfDeath,  Map<String, dynamic> lifeData,  List<MoralImpact> moralImpacts,  List<GameLog> logs,  EducationState? educationState,  WorkState? workState,  SocialState? socialState,  HealthState? healthState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LifeState() when $default != null:
return $default(_that.currentYear,_that.age,_that.health,_that.money,_that.timeRemaining,_that.skills,_that.traits,_that.habits,_that.relationships,_that.sections,_that.hiddenMetrics,_that.eventsTriggeredThisYear,_that.eventIdsTriggeredThisYear,_that.eventIdsTriggeredInLife,_that.unlockedEventIds,_that.pendingEvent,_that.isDead,_that.causeOfDeath,_that.lifeData,_that.moralImpacts,_that.logs,_that.educationState,_that.workState,_that.socialState,_that.healthState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentYear,  int age,  int health,  int money,  int timeRemaining,  SkillSet skills,  List<TraitType> traits,  List<Habit> habits,  List<Relationship> relationships,  List<Section> sections,  HiddenMetrics hiddenMetrics,  int eventsTriggeredThisYear,  List<String> eventIdsTriggeredThisYear,  List<String> eventIdsTriggeredInLife,  List<String> unlockedEventIds,  GameEvent? pendingEvent,  bool isDead,  String? causeOfDeath,  Map<String, dynamic> lifeData,  List<MoralImpact> moralImpacts,  List<GameLog> logs,  EducationState? educationState,  WorkState? workState,  SocialState? socialState,  HealthState? healthState)  $default,) {final _that = this;
switch (_that) {
case _LifeState():
return $default(_that.currentYear,_that.age,_that.health,_that.money,_that.timeRemaining,_that.skills,_that.traits,_that.habits,_that.relationships,_that.sections,_that.hiddenMetrics,_that.eventsTriggeredThisYear,_that.eventIdsTriggeredThisYear,_that.eventIdsTriggeredInLife,_that.unlockedEventIds,_that.pendingEvent,_that.isDead,_that.causeOfDeath,_that.lifeData,_that.moralImpacts,_that.logs,_that.educationState,_that.workState,_that.socialState,_that.healthState);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentYear,  int age,  int health,  int money,  int timeRemaining,  SkillSet skills,  List<TraitType> traits,  List<Habit> habits,  List<Relationship> relationships,  List<Section> sections,  HiddenMetrics hiddenMetrics,  int eventsTriggeredThisYear,  List<String> eventIdsTriggeredThisYear,  List<String> eventIdsTriggeredInLife,  List<String> unlockedEventIds,  GameEvent? pendingEvent,  bool isDead,  String? causeOfDeath,  Map<String, dynamic> lifeData,  List<MoralImpact> moralImpacts,  List<GameLog> logs,  EducationState? educationState,  WorkState? workState,  SocialState? socialState,  HealthState? healthState)?  $default,) {final _that = this;
switch (_that) {
case _LifeState() when $default != null:
return $default(_that.currentYear,_that.age,_that.health,_that.money,_that.timeRemaining,_that.skills,_that.traits,_that.habits,_that.relationships,_that.sections,_that.hiddenMetrics,_that.eventsTriggeredThisYear,_that.eventIdsTriggeredThisYear,_that.eventIdsTriggeredInLife,_that.unlockedEventIds,_that.pendingEvent,_that.isDead,_that.causeOfDeath,_that.lifeData,_that.moralImpacts,_that.logs,_that.educationState,_that.workState,_that.socialState,_that.healthState);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LifeState extends LifeState {
  const _LifeState({required this.currentYear, required this.age, required this.health, required this.money, required this.timeRemaining, required this.skills, required final  List<TraitType> traits, required final  List<Habit> habits, required final  List<Relationship> relationships, required final  List<Section> sections, required this.hiddenMetrics, this.eventsTriggeredThisYear = 0, final  List<String> eventIdsTriggeredThisYear = const [], final  List<String> eventIdsTriggeredInLife = const [], final  List<String> unlockedEventIds = const [], this.pendingEvent, this.isDead = false, this.causeOfDeath, final  Map<String, dynamic> lifeData = const {}, final  List<MoralImpact> moralImpacts = const [], final  List<GameLog> logs = const [], this.educationState, this.workState, this.socialState, this.healthState}): _traits = traits,_habits = habits,_relationships = relationships,_sections = sections,_eventIdsTriggeredThisYear = eventIdsTriggeredThisYear,_eventIdsTriggeredInLife = eventIdsTriggeredInLife,_unlockedEventIds = unlockedEventIds,_lifeData = lifeData,_moralImpacts = moralImpacts,_logs = logs,super._();
  factory _LifeState.fromJson(Map<String, dynamic> json) => _$LifeStateFromJson(json);

@override final  int currentYear;
@override final  int age;
@override final  int health;
@override final  int money;
@override final  int timeRemaining;
@override final  SkillSet skills;
 final  List<TraitType> _traits;
@override List<TraitType> get traits {
  if (_traits is EqualUnmodifiableListView) return _traits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_traits);
}

 final  List<Habit> _habits;
@override List<Habit> get habits {
  if (_habits is EqualUnmodifiableListView) return _habits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_habits);
}

 final  List<Relationship> _relationships;
@override List<Relationship> get relationships {
  if (_relationships is EqualUnmodifiableListView) return _relationships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relationships);
}

 final  List<Section> _sections;
@override List<Section> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}

@override final  HiddenMetrics hiddenMetrics;
@override@JsonKey() final  int eventsTriggeredThisYear;
 final  List<String> _eventIdsTriggeredThisYear;
@override@JsonKey() List<String> get eventIdsTriggeredThisYear {
  if (_eventIdsTriggeredThisYear is EqualUnmodifiableListView) return _eventIdsTriggeredThisYear;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_eventIdsTriggeredThisYear);
}

 final  List<String> _eventIdsTriggeredInLife;
@override@JsonKey() List<String> get eventIdsTriggeredInLife {
  if (_eventIdsTriggeredInLife is EqualUnmodifiableListView) return _eventIdsTriggeredInLife;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_eventIdsTriggeredInLife);
}

 final  List<String> _unlockedEventIds;
@override@JsonKey() List<String> get unlockedEventIds {
  if (_unlockedEventIds is EqualUnmodifiableListView) return _unlockedEventIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_unlockedEventIds);
}

@override final  GameEvent? pendingEvent;
@override@JsonKey() final  bool isDead;
@override final  String? causeOfDeath;
 final  Map<String, dynamic> _lifeData;
@override@JsonKey() Map<String, dynamic> get lifeData {
  if (_lifeData is EqualUnmodifiableMapView) return _lifeData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_lifeData);
}

 final  List<MoralImpact> _moralImpacts;
@override@JsonKey() List<MoralImpact> get moralImpacts {
  if (_moralImpacts is EqualUnmodifiableListView) return _moralImpacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_moralImpacts);
}

 final  List<GameLog> _logs;
@override@JsonKey() List<GameLog> get logs {
  if (_logs is EqualUnmodifiableListView) return _logs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_logs);
}

@override final  EducationState? educationState;
@override final  WorkState? workState;
@override final  SocialState? socialState;
@override final  HealthState? healthState;

/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LifeStateCopyWith<_LifeState> get copyWith => __$LifeStateCopyWithImpl<_LifeState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LifeStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LifeState&&(identical(other.currentYear, currentYear) || other.currentYear == currentYear)&&(identical(other.age, age) || other.age == age)&&(identical(other.health, health) || other.health == health)&&(identical(other.money, money) || other.money == money)&&(identical(other.timeRemaining, timeRemaining) || other.timeRemaining == timeRemaining)&&(identical(other.skills, skills) || other.skills == skills)&&const DeepCollectionEquality().equals(other._traits, _traits)&&const DeepCollectionEquality().equals(other._habits, _habits)&&const DeepCollectionEquality().equals(other._relationships, _relationships)&&const DeepCollectionEquality().equals(other._sections, _sections)&&(identical(other.hiddenMetrics, hiddenMetrics) || other.hiddenMetrics == hiddenMetrics)&&(identical(other.eventsTriggeredThisYear, eventsTriggeredThisYear) || other.eventsTriggeredThisYear == eventsTriggeredThisYear)&&const DeepCollectionEquality().equals(other._eventIdsTriggeredThisYear, _eventIdsTriggeredThisYear)&&const DeepCollectionEquality().equals(other._eventIdsTriggeredInLife, _eventIdsTriggeredInLife)&&const DeepCollectionEquality().equals(other._unlockedEventIds, _unlockedEventIds)&&(identical(other.pendingEvent, pendingEvent) || other.pendingEvent == pendingEvent)&&(identical(other.isDead, isDead) || other.isDead == isDead)&&(identical(other.causeOfDeath, causeOfDeath) || other.causeOfDeath == causeOfDeath)&&const DeepCollectionEquality().equals(other._lifeData, _lifeData)&&const DeepCollectionEquality().equals(other._moralImpacts, _moralImpacts)&&const DeepCollectionEquality().equals(other._logs, _logs)&&(identical(other.educationState, educationState) || other.educationState == educationState)&&(identical(other.workState, workState) || other.workState == workState)&&(identical(other.socialState, socialState) || other.socialState == socialState)&&(identical(other.healthState, healthState) || other.healthState == healthState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,currentYear,age,health,money,timeRemaining,skills,const DeepCollectionEquality().hash(_traits),const DeepCollectionEquality().hash(_habits),const DeepCollectionEquality().hash(_relationships),const DeepCollectionEquality().hash(_sections),hiddenMetrics,eventsTriggeredThisYear,const DeepCollectionEquality().hash(_eventIdsTriggeredThisYear),const DeepCollectionEquality().hash(_eventIdsTriggeredInLife),const DeepCollectionEquality().hash(_unlockedEventIds),pendingEvent,isDead,causeOfDeath,const DeepCollectionEquality().hash(_lifeData),const DeepCollectionEquality().hash(_moralImpacts),const DeepCollectionEquality().hash(_logs),educationState,workState,socialState,healthState]);

@override
String toString() {
  return 'LifeState(currentYear: $currentYear, age: $age, health: $health, money: $money, timeRemaining: $timeRemaining, skills: $skills, traits: $traits, habits: $habits, relationships: $relationships, sections: $sections, hiddenMetrics: $hiddenMetrics, eventsTriggeredThisYear: $eventsTriggeredThisYear, eventIdsTriggeredThisYear: $eventIdsTriggeredThisYear, eventIdsTriggeredInLife: $eventIdsTriggeredInLife, unlockedEventIds: $unlockedEventIds, pendingEvent: $pendingEvent, isDead: $isDead, causeOfDeath: $causeOfDeath, lifeData: $lifeData, moralImpacts: $moralImpacts, logs: $logs, educationState: $educationState, workState: $workState, socialState: $socialState, healthState: $healthState)';
}


}

/// @nodoc
abstract mixin class _$LifeStateCopyWith<$Res> implements $LifeStateCopyWith<$Res> {
  factory _$LifeStateCopyWith(_LifeState value, $Res Function(_LifeState) _then) = __$LifeStateCopyWithImpl;
@override @useResult
$Res call({
 int currentYear, int age, int health, int money, int timeRemaining, SkillSet skills, List<TraitType> traits, List<Habit> habits, List<Relationship> relationships, List<Section> sections, HiddenMetrics hiddenMetrics, int eventsTriggeredThisYear, List<String> eventIdsTriggeredThisYear, List<String> eventIdsTriggeredInLife, List<String> unlockedEventIds, GameEvent? pendingEvent, bool isDead, String? causeOfDeath, Map<String, dynamic> lifeData, List<MoralImpact> moralImpacts, List<GameLog> logs, EducationState? educationState, WorkState? workState, SocialState? socialState, HealthState? healthState
});


@override $SkillSetCopyWith<$Res> get skills;@override $HiddenMetricsCopyWith<$Res> get hiddenMetrics;@override $GameEventCopyWith<$Res>? get pendingEvent;@override $EducationStateCopyWith<$Res>? get educationState;@override $WorkStateCopyWith<$Res>? get workState;@override $SocialStateCopyWith<$Res>? get socialState;@override $HealthStateCopyWith<$Res>? get healthState;

}
/// @nodoc
class __$LifeStateCopyWithImpl<$Res>
    implements _$LifeStateCopyWith<$Res> {
  __$LifeStateCopyWithImpl(this._self, this._then);

  final _LifeState _self;
  final $Res Function(_LifeState) _then;

/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentYear = null,Object? age = null,Object? health = null,Object? money = null,Object? timeRemaining = null,Object? skills = null,Object? traits = null,Object? habits = null,Object? relationships = null,Object? sections = null,Object? hiddenMetrics = null,Object? eventsTriggeredThisYear = null,Object? eventIdsTriggeredThisYear = null,Object? eventIdsTriggeredInLife = null,Object? unlockedEventIds = null,Object? pendingEvent = freezed,Object? isDead = null,Object? causeOfDeath = freezed,Object? lifeData = null,Object? moralImpacts = null,Object? logs = null,Object? educationState = freezed,Object? workState = freezed,Object? socialState = freezed,Object? healthState = freezed,}) {
  return _then(_LifeState(
currentYear: null == currentYear ? _self.currentYear : currentYear // ignore: cast_nullable_to_non_nullable
as int,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,health: null == health ? _self.health : health // ignore: cast_nullable_to_non_nullable
as int,money: null == money ? _self.money : money // ignore: cast_nullable_to_non_nullable
as int,timeRemaining: null == timeRemaining ? _self.timeRemaining : timeRemaining // ignore: cast_nullable_to_non_nullable
as int,skills: null == skills ? _self.skills : skills // ignore: cast_nullable_to_non_nullable
as SkillSet,traits: null == traits ? _self._traits : traits // ignore: cast_nullable_to_non_nullable
as List<TraitType>,habits: null == habits ? _self._habits : habits // ignore: cast_nullable_to_non_nullable
as List<Habit>,relationships: null == relationships ? _self._relationships : relationships // ignore: cast_nullable_to_non_nullable
as List<Relationship>,sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<Section>,hiddenMetrics: null == hiddenMetrics ? _self.hiddenMetrics : hiddenMetrics // ignore: cast_nullable_to_non_nullable
as HiddenMetrics,eventsTriggeredThisYear: null == eventsTriggeredThisYear ? _self.eventsTriggeredThisYear : eventsTriggeredThisYear // ignore: cast_nullable_to_non_nullable
as int,eventIdsTriggeredThisYear: null == eventIdsTriggeredThisYear ? _self._eventIdsTriggeredThisYear : eventIdsTriggeredThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,eventIdsTriggeredInLife: null == eventIdsTriggeredInLife ? _self._eventIdsTriggeredInLife : eventIdsTriggeredInLife // ignore: cast_nullable_to_non_nullable
as List<String>,unlockedEventIds: null == unlockedEventIds ? _self._unlockedEventIds : unlockedEventIds // ignore: cast_nullable_to_non_nullable
as List<String>,pendingEvent: freezed == pendingEvent ? _self.pendingEvent : pendingEvent // ignore: cast_nullable_to_non_nullable
as GameEvent?,isDead: null == isDead ? _self.isDead : isDead // ignore: cast_nullable_to_non_nullable
as bool,causeOfDeath: freezed == causeOfDeath ? _self.causeOfDeath : causeOfDeath // ignore: cast_nullable_to_non_nullable
as String?,lifeData: null == lifeData ? _self._lifeData : lifeData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,moralImpacts: null == moralImpacts ? _self._moralImpacts : moralImpacts // ignore: cast_nullable_to_non_nullable
as List<MoralImpact>,logs: null == logs ? _self._logs : logs // ignore: cast_nullable_to_non_nullable
as List<GameLog>,educationState: freezed == educationState ? _self.educationState : educationState // ignore: cast_nullable_to_non_nullable
as EducationState?,workState: freezed == workState ? _self.workState : workState // ignore: cast_nullable_to_non_nullable
as WorkState?,socialState: freezed == socialState ? _self.socialState : socialState // ignore: cast_nullable_to_non_nullable
as SocialState?,healthState: freezed == healthState ? _self.healthState : healthState // ignore: cast_nullable_to_non_nullable
as HealthState?,
  ));
}

/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SkillSetCopyWith<$Res> get skills {
  
  return $SkillSetCopyWith<$Res>(_self.skills, (value) {
    return _then(_self.copyWith(skills: value));
  });
}/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HiddenMetricsCopyWith<$Res> get hiddenMetrics {
  
  return $HiddenMetricsCopyWith<$Res>(_self.hiddenMetrics, (value) {
    return _then(_self.copyWith(hiddenMetrics: value));
  });
}/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameEventCopyWith<$Res>? get pendingEvent {
    if (_self.pendingEvent == null) {
    return null;
  }

  return $GameEventCopyWith<$Res>(_self.pendingEvent!, (value) {
    return _then(_self.copyWith(pendingEvent: value));
  });
}/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EducationStateCopyWith<$Res>? get educationState {
    if (_self.educationState == null) {
    return null;
  }

  return $EducationStateCopyWith<$Res>(_self.educationState!, (value) {
    return _then(_self.copyWith(educationState: value));
  });
}/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkStateCopyWith<$Res>? get workState {
    if (_self.workState == null) {
    return null;
  }

  return $WorkStateCopyWith<$Res>(_self.workState!, (value) {
    return _then(_self.copyWith(workState: value));
  });
}/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SocialStateCopyWith<$Res>? get socialState {
    if (_self.socialState == null) {
    return null;
  }

  return $SocialStateCopyWith<$Res>(_self.socialState!, (value) {
    return _then(_self.copyWith(socialState: value));
  });
}/// Create a copy of LifeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthStateCopyWith<$Res>? get healthState {
    if (_self.healthState == null) {
    return null;
  }

  return $HealthStateCopyWith<$Res>(_self.healthState!, (value) {
    return _then(_self.copyWith(healthState: value));
  });
}
}


/// @nodoc
mixin _$LifeSummary {

 int get ageAtDeath; String get causeOfDeath; SkillSet get finalSkills; List<TraitType> get finalTraits; Map<String, double> get subjectContributions; Map<String, dynamic> get lifeData; MoralImpactSummary? get moralImpactSummary;
/// Create a copy of LifeSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LifeSummaryCopyWith<LifeSummary> get copyWith => _$LifeSummaryCopyWithImpl<LifeSummary>(this as LifeSummary, _$identity);

  /// Serializes this LifeSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LifeSummary&&(identical(other.ageAtDeath, ageAtDeath) || other.ageAtDeath == ageAtDeath)&&(identical(other.causeOfDeath, causeOfDeath) || other.causeOfDeath == causeOfDeath)&&(identical(other.finalSkills, finalSkills) || other.finalSkills == finalSkills)&&const DeepCollectionEquality().equals(other.finalTraits, finalTraits)&&const DeepCollectionEquality().equals(other.subjectContributions, subjectContributions)&&const DeepCollectionEquality().equals(other.lifeData, lifeData)&&(identical(other.moralImpactSummary, moralImpactSummary) || other.moralImpactSummary == moralImpactSummary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ageAtDeath,causeOfDeath,finalSkills,const DeepCollectionEquality().hash(finalTraits),const DeepCollectionEquality().hash(subjectContributions),const DeepCollectionEquality().hash(lifeData),moralImpactSummary);

@override
String toString() {
  return 'LifeSummary(ageAtDeath: $ageAtDeath, causeOfDeath: $causeOfDeath, finalSkills: $finalSkills, finalTraits: $finalTraits, subjectContributions: $subjectContributions, lifeData: $lifeData, moralImpactSummary: $moralImpactSummary)';
}


}

/// @nodoc
abstract mixin class $LifeSummaryCopyWith<$Res>  {
  factory $LifeSummaryCopyWith(LifeSummary value, $Res Function(LifeSummary) _then) = _$LifeSummaryCopyWithImpl;
@useResult
$Res call({
 int ageAtDeath, String causeOfDeath, SkillSet finalSkills, List<TraitType> finalTraits, Map<String, double> subjectContributions, Map<String, dynamic> lifeData, MoralImpactSummary? moralImpactSummary
});


$SkillSetCopyWith<$Res> get finalSkills;$MoralImpactSummaryCopyWith<$Res>? get moralImpactSummary;

}
/// @nodoc
class _$LifeSummaryCopyWithImpl<$Res>
    implements $LifeSummaryCopyWith<$Res> {
  _$LifeSummaryCopyWithImpl(this._self, this._then);

  final LifeSummary _self;
  final $Res Function(LifeSummary) _then;

/// Create a copy of LifeSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ageAtDeath = null,Object? causeOfDeath = null,Object? finalSkills = null,Object? finalTraits = null,Object? subjectContributions = null,Object? lifeData = null,Object? moralImpactSummary = freezed,}) {
  return _then(_self.copyWith(
ageAtDeath: null == ageAtDeath ? _self.ageAtDeath : ageAtDeath // ignore: cast_nullable_to_non_nullable
as int,causeOfDeath: null == causeOfDeath ? _self.causeOfDeath : causeOfDeath // ignore: cast_nullable_to_non_nullable
as String,finalSkills: null == finalSkills ? _self.finalSkills : finalSkills // ignore: cast_nullable_to_non_nullable
as SkillSet,finalTraits: null == finalTraits ? _self.finalTraits : finalTraits // ignore: cast_nullable_to_non_nullable
as List<TraitType>,subjectContributions: null == subjectContributions ? _self.subjectContributions : subjectContributions // ignore: cast_nullable_to_non_nullable
as Map<String, double>,lifeData: null == lifeData ? _self.lifeData : lifeData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,moralImpactSummary: freezed == moralImpactSummary ? _self.moralImpactSummary : moralImpactSummary // ignore: cast_nullable_to_non_nullable
as MoralImpactSummary?,
  ));
}
/// Create a copy of LifeSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SkillSetCopyWith<$Res> get finalSkills {
  
  return $SkillSetCopyWith<$Res>(_self.finalSkills, (value) {
    return _then(_self.copyWith(finalSkills: value));
  });
}/// Create a copy of LifeSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoralImpactSummaryCopyWith<$Res>? get moralImpactSummary {
    if (_self.moralImpactSummary == null) {
    return null;
  }

  return $MoralImpactSummaryCopyWith<$Res>(_self.moralImpactSummary!, (value) {
    return _then(_self.copyWith(moralImpactSummary: value));
  });
}
}


/// Adds pattern-matching-related methods to [LifeSummary].
extension LifeSummaryPatterns on LifeSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LifeSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LifeSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LifeSummary value)  $default,){
final _that = this;
switch (_that) {
case _LifeSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LifeSummary value)?  $default,){
final _that = this;
switch (_that) {
case _LifeSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ageAtDeath,  String causeOfDeath,  SkillSet finalSkills,  List<TraitType> finalTraits,  Map<String, double> subjectContributions,  Map<String, dynamic> lifeData,  MoralImpactSummary? moralImpactSummary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LifeSummary() when $default != null:
return $default(_that.ageAtDeath,_that.causeOfDeath,_that.finalSkills,_that.finalTraits,_that.subjectContributions,_that.lifeData,_that.moralImpactSummary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ageAtDeath,  String causeOfDeath,  SkillSet finalSkills,  List<TraitType> finalTraits,  Map<String, double> subjectContributions,  Map<String, dynamic> lifeData,  MoralImpactSummary? moralImpactSummary)  $default,) {final _that = this;
switch (_that) {
case _LifeSummary():
return $default(_that.ageAtDeath,_that.causeOfDeath,_that.finalSkills,_that.finalTraits,_that.subjectContributions,_that.lifeData,_that.moralImpactSummary);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ageAtDeath,  String causeOfDeath,  SkillSet finalSkills,  List<TraitType> finalTraits,  Map<String, double> subjectContributions,  Map<String, dynamic> lifeData,  MoralImpactSummary? moralImpactSummary)?  $default,) {final _that = this;
switch (_that) {
case _LifeSummary() when $default != null:
return $default(_that.ageAtDeath,_that.causeOfDeath,_that.finalSkills,_that.finalTraits,_that.subjectContributions,_that.lifeData,_that.moralImpactSummary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LifeSummary implements LifeSummary {
  const _LifeSummary({required this.ageAtDeath, required this.causeOfDeath, required this.finalSkills, required final  List<TraitType> finalTraits, required final  Map<String, double> subjectContributions, final  Map<String, dynamic> lifeData = const {}, this.moralImpactSummary}): _finalTraits = finalTraits,_subjectContributions = subjectContributions,_lifeData = lifeData;
  factory _LifeSummary.fromJson(Map<String, dynamic> json) => _$LifeSummaryFromJson(json);

@override final  int ageAtDeath;
@override final  String causeOfDeath;
@override final  SkillSet finalSkills;
 final  List<TraitType> _finalTraits;
@override List<TraitType> get finalTraits {
  if (_finalTraits is EqualUnmodifiableListView) return _finalTraits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_finalTraits);
}

 final  Map<String, double> _subjectContributions;
@override Map<String, double> get subjectContributions {
  if (_subjectContributions is EqualUnmodifiableMapView) return _subjectContributions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_subjectContributions);
}

 final  Map<String, dynamic> _lifeData;
@override@JsonKey() Map<String, dynamic> get lifeData {
  if (_lifeData is EqualUnmodifiableMapView) return _lifeData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_lifeData);
}

@override final  MoralImpactSummary? moralImpactSummary;

/// Create a copy of LifeSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LifeSummaryCopyWith<_LifeSummary> get copyWith => __$LifeSummaryCopyWithImpl<_LifeSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LifeSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LifeSummary&&(identical(other.ageAtDeath, ageAtDeath) || other.ageAtDeath == ageAtDeath)&&(identical(other.causeOfDeath, causeOfDeath) || other.causeOfDeath == causeOfDeath)&&(identical(other.finalSkills, finalSkills) || other.finalSkills == finalSkills)&&const DeepCollectionEquality().equals(other._finalTraits, _finalTraits)&&const DeepCollectionEquality().equals(other._subjectContributions, _subjectContributions)&&const DeepCollectionEquality().equals(other._lifeData, _lifeData)&&(identical(other.moralImpactSummary, moralImpactSummary) || other.moralImpactSummary == moralImpactSummary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ageAtDeath,causeOfDeath,finalSkills,const DeepCollectionEquality().hash(_finalTraits),const DeepCollectionEquality().hash(_subjectContributions),const DeepCollectionEquality().hash(_lifeData),moralImpactSummary);

@override
String toString() {
  return 'LifeSummary(ageAtDeath: $ageAtDeath, causeOfDeath: $causeOfDeath, finalSkills: $finalSkills, finalTraits: $finalTraits, subjectContributions: $subjectContributions, lifeData: $lifeData, moralImpactSummary: $moralImpactSummary)';
}


}

/// @nodoc
abstract mixin class _$LifeSummaryCopyWith<$Res> implements $LifeSummaryCopyWith<$Res> {
  factory _$LifeSummaryCopyWith(_LifeSummary value, $Res Function(_LifeSummary) _then) = __$LifeSummaryCopyWithImpl;
@override @useResult
$Res call({
 int ageAtDeath, String causeOfDeath, SkillSet finalSkills, List<TraitType> finalTraits, Map<String, double> subjectContributions, Map<String, dynamic> lifeData, MoralImpactSummary? moralImpactSummary
});


@override $SkillSetCopyWith<$Res> get finalSkills;@override $MoralImpactSummaryCopyWith<$Res>? get moralImpactSummary;

}
/// @nodoc
class __$LifeSummaryCopyWithImpl<$Res>
    implements _$LifeSummaryCopyWith<$Res> {
  __$LifeSummaryCopyWithImpl(this._self, this._then);

  final _LifeSummary _self;
  final $Res Function(_LifeSummary) _then;

/// Create a copy of LifeSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ageAtDeath = null,Object? causeOfDeath = null,Object? finalSkills = null,Object? finalTraits = null,Object? subjectContributions = null,Object? lifeData = null,Object? moralImpactSummary = freezed,}) {
  return _then(_LifeSummary(
ageAtDeath: null == ageAtDeath ? _self.ageAtDeath : ageAtDeath // ignore: cast_nullable_to_non_nullable
as int,causeOfDeath: null == causeOfDeath ? _self.causeOfDeath : causeOfDeath // ignore: cast_nullable_to_non_nullable
as String,finalSkills: null == finalSkills ? _self.finalSkills : finalSkills // ignore: cast_nullable_to_non_nullable
as SkillSet,finalTraits: null == finalTraits ? _self._finalTraits : finalTraits // ignore: cast_nullable_to_non_nullable
as List<TraitType>,subjectContributions: null == subjectContributions ? _self._subjectContributions : subjectContributions // ignore: cast_nullable_to_non_nullable
as Map<String, double>,lifeData: null == lifeData ? _self._lifeData : lifeData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,moralImpactSummary: freezed == moralImpactSummary ? _self.moralImpactSummary : moralImpactSummary // ignore: cast_nullable_to_non_nullable
as MoralImpactSummary?,
  ));
}

/// Create a copy of LifeSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SkillSetCopyWith<$Res> get finalSkills {
  
  return $SkillSetCopyWith<$Res>(_self.finalSkills, (value) {
    return _then(_self.copyWith(finalSkills: value));
  });
}/// Create a copy of LifeSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoralImpactSummaryCopyWith<$Res>? get moralImpactSummary {
    if (_self.moralImpactSummary == null) {
    return null;
  }

  return $MoralImpactSummaryCopyWith<$Res>(_self.moralImpactSummary!, (value) {
    return _then(_self.copyWith(moralImpactSummary: value));
  });
}
}

// dart format on
