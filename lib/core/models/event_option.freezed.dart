// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventOption {

 String get description; EventConsequences get consequences;
/// Create a copy of EventOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventOptionCopyWith<EventOption> get copyWith => _$EventOptionCopyWithImpl<EventOption>(this as EventOption, _$identity);

  /// Serializes this EventOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventOption&&(identical(other.description, description) || other.description == description)&&(identical(other.consequences, consequences) || other.consequences == consequences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,consequences);

@override
String toString() {
  return 'EventOption(description: $description, consequences: $consequences)';
}


}

/// @nodoc
abstract mixin class $EventOptionCopyWith<$Res>  {
  factory $EventOptionCopyWith(EventOption value, $Res Function(EventOption) _then) = _$EventOptionCopyWithImpl;
@useResult
$Res call({
 String description, EventConsequences consequences
});


$EventConsequencesCopyWith<$Res> get consequences;

}
/// @nodoc
class _$EventOptionCopyWithImpl<$Res>
    implements $EventOptionCopyWith<$Res> {
  _$EventOptionCopyWithImpl(this._self, this._then);

  final EventOption _self;
  final $Res Function(EventOption) _then;

/// Create a copy of EventOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? consequences = null,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,consequences: null == consequences ? _self.consequences : consequences // ignore: cast_nullable_to_non_nullable
as EventConsequences,
  ));
}
/// Create a copy of EventOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventConsequencesCopyWith<$Res> get consequences {
  
  return $EventConsequencesCopyWith<$Res>(_self.consequences, (value) {
    return _then(_self.copyWith(consequences: value));
  });
}
}


/// Adds pattern-matching-related methods to [EventOption].
extension EventOptionPatterns on EventOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventOption value)  $default,){
final _that = this;
switch (_that) {
case _EventOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventOption value)?  $default,){
final _that = this;
switch (_that) {
case _EventOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String description,  EventConsequences consequences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventOption() when $default != null:
return $default(_that.description,_that.consequences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String description,  EventConsequences consequences)  $default,) {final _that = this;
switch (_that) {
case _EventOption():
return $default(_that.description,_that.consequences);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String description,  EventConsequences consequences)?  $default,) {final _that = this;
switch (_that) {
case _EventOption() when $default != null:
return $default(_that.description,_that.consequences);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventOption implements EventOption {
  const _EventOption({required this.description, required this.consequences});
  factory _EventOption.fromJson(Map<String, dynamic> json) => _$EventOptionFromJson(json);

@override final  String description;
@override final  EventConsequences consequences;

/// Create a copy of EventOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventOptionCopyWith<_EventOption> get copyWith => __$EventOptionCopyWithImpl<_EventOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventOption&&(identical(other.description, description) || other.description == description)&&(identical(other.consequences, consequences) || other.consequences == consequences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,consequences);

@override
String toString() {
  return 'EventOption(description: $description, consequences: $consequences)';
}


}

/// @nodoc
abstract mixin class _$EventOptionCopyWith<$Res> implements $EventOptionCopyWith<$Res> {
  factory _$EventOptionCopyWith(_EventOption value, $Res Function(_EventOption) _then) = __$EventOptionCopyWithImpl;
@override @useResult
$Res call({
 String description, EventConsequences consequences
});


@override $EventConsequencesCopyWith<$Res> get consequences;

}
/// @nodoc
class __$EventOptionCopyWithImpl<$Res>
    implements _$EventOptionCopyWith<$Res> {
  __$EventOptionCopyWithImpl(this._self, this._then);

  final _EventOption _self;
  final $Res Function(_EventOption) _then;

/// Create a copy of EventOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? consequences = null,}) {
  return _then(_EventOption(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,consequences: null == consequences ? _self.consequences : consequences // ignore: cast_nullable_to_non_nullable
as EventConsequences,
  ));
}

/// Create a copy of EventOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventConsequencesCopyWith<$Res> get consequences {
  
  return $EventConsequencesCopyWith<$Res>(_self.consequences, (value) {
    return _then(_self.copyWith(consequences: value));
  });
}
}


/// @nodoc
mixin _$EventConsequences {

 Map<SkillType, int> get skillChanges; Map<HiddenMetricType, double> get hiddenMetricChanges; int get healthChange; int get moneyChange; Map<TraitType, double> get traitChance; String? get relationshipTargetId; int get relationshipChange; String? get unlockEventId; bool get causesDeath;
/// Create a copy of EventConsequences
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventConsequencesCopyWith<EventConsequences> get copyWith => _$EventConsequencesCopyWithImpl<EventConsequences>(this as EventConsequences, _$identity);

  /// Serializes this EventConsequences to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventConsequences&&const DeepCollectionEquality().equals(other.skillChanges, skillChanges)&&const DeepCollectionEquality().equals(other.hiddenMetricChanges, hiddenMetricChanges)&&(identical(other.healthChange, healthChange) || other.healthChange == healthChange)&&(identical(other.moneyChange, moneyChange) || other.moneyChange == moneyChange)&&const DeepCollectionEquality().equals(other.traitChance, traitChance)&&(identical(other.relationshipTargetId, relationshipTargetId) || other.relationshipTargetId == relationshipTargetId)&&(identical(other.relationshipChange, relationshipChange) || other.relationshipChange == relationshipChange)&&(identical(other.unlockEventId, unlockEventId) || other.unlockEventId == unlockEventId)&&(identical(other.causesDeath, causesDeath) || other.causesDeath == causesDeath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(skillChanges),const DeepCollectionEquality().hash(hiddenMetricChanges),healthChange,moneyChange,const DeepCollectionEquality().hash(traitChance),relationshipTargetId,relationshipChange,unlockEventId,causesDeath);

@override
String toString() {
  return 'EventConsequences(skillChanges: $skillChanges, hiddenMetricChanges: $hiddenMetricChanges, healthChange: $healthChange, moneyChange: $moneyChange, traitChance: $traitChance, relationshipTargetId: $relationshipTargetId, relationshipChange: $relationshipChange, unlockEventId: $unlockEventId, causesDeath: $causesDeath)';
}


}

/// @nodoc
abstract mixin class $EventConsequencesCopyWith<$Res>  {
  factory $EventConsequencesCopyWith(EventConsequences value, $Res Function(EventConsequences) _then) = _$EventConsequencesCopyWithImpl;
@useResult
$Res call({
 Map<SkillType, int> skillChanges, Map<HiddenMetricType, double> hiddenMetricChanges, int healthChange, int moneyChange, Map<TraitType, double> traitChance, String? relationshipTargetId, int relationshipChange, String? unlockEventId, bool causesDeath
});




}
/// @nodoc
class _$EventConsequencesCopyWithImpl<$Res>
    implements $EventConsequencesCopyWith<$Res> {
  _$EventConsequencesCopyWithImpl(this._self, this._then);

  final EventConsequences _self;
  final $Res Function(EventConsequences) _then;

/// Create a copy of EventConsequences
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? skillChanges = null,Object? hiddenMetricChanges = null,Object? healthChange = null,Object? moneyChange = null,Object? traitChance = null,Object? relationshipTargetId = freezed,Object? relationshipChange = null,Object? unlockEventId = freezed,Object? causesDeath = null,}) {
  return _then(_self.copyWith(
skillChanges: null == skillChanges ? _self.skillChanges : skillChanges // ignore: cast_nullable_to_non_nullable
as Map<SkillType, int>,hiddenMetricChanges: null == hiddenMetricChanges ? _self.hiddenMetricChanges : hiddenMetricChanges // ignore: cast_nullable_to_non_nullable
as Map<HiddenMetricType, double>,healthChange: null == healthChange ? _self.healthChange : healthChange // ignore: cast_nullable_to_non_nullable
as int,moneyChange: null == moneyChange ? _self.moneyChange : moneyChange // ignore: cast_nullable_to_non_nullable
as int,traitChance: null == traitChance ? _self.traitChance : traitChance // ignore: cast_nullable_to_non_nullable
as Map<TraitType, double>,relationshipTargetId: freezed == relationshipTargetId ? _self.relationshipTargetId : relationshipTargetId // ignore: cast_nullable_to_non_nullable
as String?,relationshipChange: null == relationshipChange ? _self.relationshipChange : relationshipChange // ignore: cast_nullable_to_non_nullable
as int,unlockEventId: freezed == unlockEventId ? _self.unlockEventId : unlockEventId // ignore: cast_nullable_to_non_nullable
as String?,causesDeath: null == causesDeath ? _self.causesDeath : causesDeath // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EventConsequences].
extension EventConsequencesPatterns on EventConsequences {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventConsequences value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventConsequences() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventConsequences value)  $default,){
final _that = this;
switch (_that) {
case _EventConsequences():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventConsequences value)?  $default,){
final _that = this;
switch (_that) {
case _EventConsequences() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<SkillType, int> skillChanges,  Map<HiddenMetricType, double> hiddenMetricChanges,  int healthChange,  int moneyChange,  Map<TraitType, double> traitChance,  String? relationshipTargetId,  int relationshipChange,  String? unlockEventId,  bool causesDeath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventConsequences() when $default != null:
return $default(_that.skillChanges,_that.hiddenMetricChanges,_that.healthChange,_that.moneyChange,_that.traitChance,_that.relationshipTargetId,_that.relationshipChange,_that.unlockEventId,_that.causesDeath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<SkillType, int> skillChanges,  Map<HiddenMetricType, double> hiddenMetricChanges,  int healthChange,  int moneyChange,  Map<TraitType, double> traitChance,  String? relationshipTargetId,  int relationshipChange,  String? unlockEventId,  bool causesDeath)  $default,) {final _that = this;
switch (_that) {
case _EventConsequences():
return $default(_that.skillChanges,_that.hiddenMetricChanges,_that.healthChange,_that.moneyChange,_that.traitChance,_that.relationshipTargetId,_that.relationshipChange,_that.unlockEventId,_that.causesDeath);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<SkillType, int> skillChanges,  Map<HiddenMetricType, double> hiddenMetricChanges,  int healthChange,  int moneyChange,  Map<TraitType, double> traitChance,  String? relationshipTargetId,  int relationshipChange,  String? unlockEventId,  bool causesDeath)?  $default,) {final _that = this;
switch (_that) {
case _EventConsequences() when $default != null:
return $default(_that.skillChanges,_that.hiddenMetricChanges,_that.healthChange,_that.moneyChange,_that.traitChance,_that.relationshipTargetId,_that.relationshipChange,_that.unlockEventId,_that.causesDeath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventConsequences implements EventConsequences {
  const _EventConsequences({final  Map<SkillType, int> skillChanges = const {}, final  Map<HiddenMetricType, double> hiddenMetricChanges = const {}, this.healthChange = 0, this.moneyChange = 0, final  Map<TraitType, double> traitChance = const {}, this.relationshipTargetId, this.relationshipChange = 0, this.unlockEventId, this.causesDeath = false}): _skillChanges = skillChanges,_hiddenMetricChanges = hiddenMetricChanges,_traitChance = traitChance;
  factory _EventConsequences.fromJson(Map<String, dynamic> json) => _$EventConsequencesFromJson(json);

 final  Map<SkillType, int> _skillChanges;
@override@JsonKey() Map<SkillType, int> get skillChanges {
  if (_skillChanges is EqualUnmodifiableMapView) return _skillChanges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_skillChanges);
}

 final  Map<HiddenMetricType, double> _hiddenMetricChanges;
@override@JsonKey() Map<HiddenMetricType, double> get hiddenMetricChanges {
  if (_hiddenMetricChanges is EqualUnmodifiableMapView) return _hiddenMetricChanges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_hiddenMetricChanges);
}

@override@JsonKey() final  int healthChange;
@override@JsonKey() final  int moneyChange;
 final  Map<TraitType, double> _traitChance;
@override@JsonKey() Map<TraitType, double> get traitChance {
  if (_traitChance is EqualUnmodifiableMapView) return _traitChance;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_traitChance);
}

@override final  String? relationshipTargetId;
@override@JsonKey() final  int relationshipChange;
@override final  String? unlockEventId;
@override@JsonKey() final  bool causesDeath;

/// Create a copy of EventConsequences
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventConsequencesCopyWith<_EventConsequences> get copyWith => __$EventConsequencesCopyWithImpl<_EventConsequences>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventConsequencesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventConsequences&&const DeepCollectionEquality().equals(other._skillChanges, _skillChanges)&&const DeepCollectionEquality().equals(other._hiddenMetricChanges, _hiddenMetricChanges)&&(identical(other.healthChange, healthChange) || other.healthChange == healthChange)&&(identical(other.moneyChange, moneyChange) || other.moneyChange == moneyChange)&&const DeepCollectionEquality().equals(other._traitChance, _traitChance)&&(identical(other.relationshipTargetId, relationshipTargetId) || other.relationshipTargetId == relationshipTargetId)&&(identical(other.relationshipChange, relationshipChange) || other.relationshipChange == relationshipChange)&&(identical(other.unlockEventId, unlockEventId) || other.unlockEventId == unlockEventId)&&(identical(other.causesDeath, causesDeath) || other.causesDeath == causesDeath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_skillChanges),const DeepCollectionEquality().hash(_hiddenMetricChanges),healthChange,moneyChange,const DeepCollectionEquality().hash(_traitChance),relationshipTargetId,relationshipChange,unlockEventId,causesDeath);

@override
String toString() {
  return 'EventConsequences(skillChanges: $skillChanges, hiddenMetricChanges: $hiddenMetricChanges, healthChange: $healthChange, moneyChange: $moneyChange, traitChance: $traitChance, relationshipTargetId: $relationshipTargetId, relationshipChange: $relationshipChange, unlockEventId: $unlockEventId, causesDeath: $causesDeath)';
}


}

/// @nodoc
abstract mixin class _$EventConsequencesCopyWith<$Res> implements $EventConsequencesCopyWith<$Res> {
  factory _$EventConsequencesCopyWith(_EventConsequences value, $Res Function(_EventConsequences) _then) = __$EventConsequencesCopyWithImpl;
@override @useResult
$Res call({
 Map<SkillType, int> skillChanges, Map<HiddenMetricType, double> hiddenMetricChanges, int healthChange, int moneyChange, Map<TraitType, double> traitChance, String? relationshipTargetId, int relationshipChange, String? unlockEventId, bool causesDeath
});




}
/// @nodoc
class __$EventConsequencesCopyWithImpl<$Res>
    implements _$EventConsequencesCopyWith<$Res> {
  __$EventConsequencesCopyWithImpl(this._self, this._then);

  final _EventConsequences _self;
  final $Res Function(_EventConsequences) _then;

/// Create a copy of EventConsequences
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? skillChanges = null,Object? hiddenMetricChanges = null,Object? healthChange = null,Object? moneyChange = null,Object? traitChance = null,Object? relationshipTargetId = freezed,Object? relationshipChange = null,Object? unlockEventId = freezed,Object? causesDeath = null,}) {
  return _then(_EventConsequences(
skillChanges: null == skillChanges ? _self._skillChanges : skillChanges // ignore: cast_nullable_to_non_nullable
as Map<SkillType, int>,hiddenMetricChanges: null == hiddenMetricChanges ? _self._hiddenMetricChanges : hiddenMetricChanges // ignore: cast_nullable_to_non_nullable
as Map<HiddenMetricType, double>,healthChange: null == healthChange ? _self.healthChange : healthChange // ignore: cast_nullable_to_non_nullable
as int,moneyChange: null == moneyChange ? _self.moneyChange : moneyChange // ignore: cast_nullable_to_non_nullable
as int,traitChance: null == traitChance ? _self._traitChance : traitChance // ignore: cast_nullable_to_non_nullable
as Map<TraitType, double>,relationshipTargetId: freezed == relationshipTargetId ? _self.relationshipTargetId : relationshipTargetId // ignore: cast_nullable_to_non_nullable
as String?,relationshipChange: null == relationshipChange ? _self.relationshipChange : relationshipChange // ignore: cast_nullable_to_non_nullable
as int,unlockEventId: freezed == unlockEventId ? _self.unlockEventId : unlockEventId // ignore: cast_nullable_to_non_nullable
as String?,causesDeath: null == causesDeath ? _self.causesDeath : causesDeath // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
