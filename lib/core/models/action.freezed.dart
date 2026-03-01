// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameAction {

 String get id; String get name; String get description; ActionCategory get category; int get timeCost; Map<SkillType, int> get skillEffects; Map<HiddenMetricType, double> get hiddenMetricEffects; int get healthEffect; int get sectionPerformanceEffect; HabitType? get associatedHabit; String? get targetNpcId; List<MoralImpactTemplate> get moralImpactTemplates; String? get educationLevel; String? get educationProgramId; String? get workJobId; String? get workJobType; String? get logMessage; List<String> get relationshipTypeIds; List<AccessCondition> get conditions; double get npcResponseChance; Map<String, int> get npcDeclineConsequences; bool get isGroupAction; RelationshipEffects get relationshipEffects; int? get minAge; int? get maxAge;/// Type of social action (e.g. "friendly", "romantic", "mischievous"). Used to filter actions per relationship type (e.g. romantic not allowed for family). When null, treated as "friendly".
 String? get socialActionType;
/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameActionCopyWith<GameAction> get copyWith => _$GameActionCopyWithImpl<GameAction>(this as GameAction, _$identity);

  /// Serializes this GameAction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameAction&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.timeCost, timeCost) || other.timeCost == timeCost)&&const DeepCollectionEquality().equals(other.skillEffects, skillEffects)&&const DeepCollectionEquality().equals(other.hiddenMetricEffects, hiddenMetricEffects)&&(identical(other.healthEffect, healthEffect) || other.healthEffect == healthEffect)&&(identical(other.sectionPerformanceEffect, sectionPerformanceEffect) || other.sectionPerformanceEffect == sectionPerformanceEffect)&&(identical(other.associatedHabit, associatedHabit) || other.associatedHabit == associatedHabit)&&(identical(other.targetNpcId, targetNpcId) || other.targetNpcId == targetNpcId)&&const DeepCollectionEquality().equals(other.moralImpactTemplates, moralImpactTemplates)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.educationProgramId, educationProgramId) || other.educationProgramId == educationProgramId)&&(identical(other.workJobId, workJobId) || other.workJobId == workJobId)&&(identical(other.workJobType, workJobType) || other.workJobType == workJobType)&&(identical(other.logMessage, logMessage) || other.logMessage == logMessage)&&const DeepCollectionEquality().equals(other.relationshipTypeIds, relationshipTypeIds)&&const DeepCollectionEquality().equals(other.conditions, conditions)&&(identical(other.npcResponseChance, npcResponseChance) || other.npcResponseChance == npcResponseChance)&&const DeepCollectionEquality().equals(other.npcDeclineConsequences, npcDeclineConsequences)&&(identical(other.isGroupAction, isGroupAction) || other.isGroupAction == isGroupAction)&&(identical(other.relationshipEffects, relationshipEffects) || other.relationshipEffects == relationshipEffects)&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.socialActionType, socialActionType) || other.socialActionType == socialActionType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,description,category,timeCost,const DeepCollectionEquality().hash(skillEffects),const DeepCollectionEquality().hash(hiddenMetricEffects),healthEffect,sectionPerformanceEffect,associatedHabit,targetNpcId,const DeepCollectionEquality().hash(moralImpactTemplates),educationLevel,educationProgramId,workJobId,workJobType,logMessage,const DeepCollectionEquality().hash(relationshipTypeIds),const DeepCollectionEquality().hash(conditions),npcResponseChance,const DeepCollectionEquality().hash(npcDeclineConsequences),isGroupAction,relationshipEffects,minAge,maxAge,socialActionType]);

@override
String toString() {
  return 'GameAction(id: $id, name: $name, description: $description, category: $category, timeCost: $timeCost, skillEffects: $skillEffects, hiddenMetricEffects: $hiddenMetricEffects, healthEffect: $healthEffect, sectionPerformanceEffect: $sectionPerformanceEffect, associatedHabit: $associatedHabit, targetNpcId: $targetNpcId, moralImpactTemplates: $moralImpactTemplates, educationLevel: $educationLevel, educationProgramId: $educationProgramId, workJobId: $workJobId, workJobType: $workJobType, logMessage: $logMessage, relationshipTypeIds: $relationshipTypeIds, conditions: $conditions, npcResponseChance: $npcResponseChance, npcDeclineConsequences: $npcDeclineConsequences, isGroupAction: $isGroupAction, relationshipEffects: $relationshipEffects, minAge: $minAge, maxAge: $maxAge, socialActionType: $socialActionType)';
}


}

/// @nodoc
abstract mixin class $GameActionCopyWith<$Res>  {
  factory $GameActionCopyWith(GameAction value, $Res Function(GameAction) _then) = _$GameActionCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, ActionCategory category, int timeCost, Map<SkillType, int> skillEffects, Map<HiddenMetricType, double> hiddenMetricEffects, int healthEffect, int sectionPerformanceEffect, HabitType? associatedHabit, String? targetNpcId, List<MoralImpactTemplate> moralImpactTemplates, String? educationLevel, String? educationProgramId, String? workJobId, String? workJobType, String? logMessage, List<String> relationshipTypeIds, List<AccessCondition> conditions, double npcResponseChance, Map<String, int> npcDeclineConsequences, bool isGroupAction, RelationshipEffects relationshipEffects, int? minAge, int? maxAge, String? socialActionType
});


$RelationshipEffectsCopyWith<$Res> get relationshipEffects;

}
/// @nodoc
class _$GameActionCopyWithImpl<$Res>
    implements $GameActionCopyWith<$Res> {
  _$GameActionCopyWithImpl(this._self, this._then);

  final GameAction _self;
  final $Res Function(GameAction) _then;

/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? category = null,Object? timeCost = null,Object? skillEffects = null,Object? hiddenMetricEffects = null,Object? healthEffect = null,Object? sectionPerformanceEffect = null,Object? associatedHabit = freezed,Object? targetNpcId = freezed,Object? moralImpactTemplates = null,Object? educationLevel = freezed,Object? educationProgramId = freezed,Object? workJobId = freezed,Object? workJobType = freezed,Object? logMessage = freezed,Object? relationshipTypeIds = null,Object? conditions = null,Object? npcResponseChance = null,Object? npcDeclineConsequences = null,Object? isGroupAction = null,Object? relationshipEffects = null,Object? minAge = freezed,Object? maxAge = freezed,Object? socialActionType = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ActionCategory,timeCost: null == timeCost ? _self.timeCost : timeCost // ignore: cast_nullable_to_non_nullable
as int,skillEffects: null == skillEffects ? _self.skillEffects : skillEffects // ignore: cast_nullable_to_non_nullable
as Map<SkillType, int>,hiddenMetricEffects: null == hiddenMetricEffects ? _self.hiddenMetricEffects : hiddenMetricEffects // ignore: cast_nullable_to_non_nullable
as Map<HiddenMetricType, double>,healthEffect: null == healthEffect ? _self.healthEffect : healthEffect // ignore: cast_nullable_to_non_nullable
as int,sectionPerformanceEffect: null == sectionPerformanceEffect ? _self.sectionPerformanceEffect : sectionPerformanceEffect // ignore: cast_nullable_to_non_nullable
as int,associatedHabit: freezed == associatedHabit ? _self.associatedHabit : associatedHabit // ignore: cast_nullable_to_non_nullable
as HabitType?,targetNpcId: freezed == targetNpcId ? _self.targetNpcId : targetNpcId // ignore: cast_nullable_to_non_nullable
as String?,moralImpactTemplates: null == moralImpactTemplates ? _self.moralImpactTemplates : moralImpactTemplates // ignore: cast_nullable_to_non_nullable
as List<MoralImpactTemplate>,educationLevel: freezed == educationLevel ? _self.educationLevel : educationLevel // ignore: cast_nullable_to_non_nullable
as String?,educationProgramId: freezed == educationProgramId ? _self.educationProgramId : educationProgramId // ignore: cast_nullable_to_non_nullable
as String?,workJobId: freezed == workJobId ? _self.workJobId : workJobId // ignore: cast_nullable_to_non_nullable
as String?,workJobType: freezed == workJobType ? _self.workJobType : workJobType // ignore: cast_nullable_to_non_nullable
as String?,logMessage: freezed == logMessage ? _self.logMessage : logMessage // ignore: cast_nullable_to_non_nullable
as String?,relationshipTypeIds: null == relationshipTypeIds ? _self.relationshipTypeIds : relationshipTypeIds // ignore: cast_nullable_to_non_nullable
as List<String>,conditions: null == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<AccessCondition>,npcResponseChance: null == npcResponseChance ? _self.npcResponseChance : npcResponseChance // ignore: cast_nullable_to_non_nullable
as double,npcDeclineConsequences: null == npcDeclineConsequences ? _self.npcDeclineConsequences : npcDeclineConsequences // ignore: cast_nullable_to_non_nullable
as Map<String, int>,isGroupAction: null == isGroupAction ? _self.isGroupAction : isGroupAction // ignore: cast_nullable_to_non_nullable
as bool,relationshipEffects: null == relationshipEffects ? _self.relationshipEffects : relationshipEffects // ignore: cast_nullable_to_non_nullable
as RelationshipEffects,minAge: freezed == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int?,maxAge: freezed == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int?,socialActionType: freezed == socialActionType ? _self.socialActionType : socialActionType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RelationshipEffectsCopyWith<$Res> get relationshipEffects {
  
  return $RelationshipEffectsCopyWith<$Res>(_self.relationshipEffects, (value) {
    return _then(_self.copyWith(relationshipEffects: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameAction].
extension GameActionPatterns on GameAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameAction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameAction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameAction value)  $default,){
final _that = this;
switch (_that) {
case _GameAction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameAction value)?  $default,){
final _that = this;
switch (_that) {
case _GameAction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  ActionCategory category,  int timeCost,  Map<SkillType, int> skillEffects,  Map<HiddenMetricType, double> hiddenMetricEffects,  int healthEffect,  int sectionPerformanceEffect,  HabitType? associatedHabit,  String? targetNpcId,  List<MoralImpactTemplate> moralImpactTemplates,  String? educationLevel,  String? educationProgramId,  String? workJobId,  String? workJobType,  String? logMessage,  List<String> relationshipTypeIds,  List<AccessCondition> conditions,  double npcResponseChance,  Map<String, int> npcDeclineConsequences,  bool isGroupAction,  RelationshipEffects relationshipEffects,  int? minAge,  int? maxAge,  String? socialActionType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameAction() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.category,_that.timeCost,_that.skillEffects,_that.hiddenMetricEffects,_that.healthEffect,_that.sectionPerformanceEffect,_that.associatedHabit,_that.targetNpcId,_that.moralImpactTemplates,_that.educationLevel,_that.educationProgramId,_that.workJobId,_that.workJobType,_that.logMessage,_that.relationshipTypeIds,_that.conditions,_that.npcResponseChance,_that.npcDeclineConsequences,_that.isGroupAction,_that.relationshipEffects,_that.minAge,_that.maxAge,_that.socialActionType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  ActionCategory category,  int timeCost,  Map<SkillType, int> skillEffects,  Map<HiddenMetricType, double> hiddenMetricEffects,  int healthEffect,  int sectionPerformanceEffect,  HabitType? associatedHabit,  String? targetNpcId,  List<MoralImpactTemplate> moralImpactTemplates,  String? educationLevel,  String? educationProgramId,  String? workJobId,  String? workJobType,  String? logMessage,  List<String> relationshipTypeIds,  List<AccessCondition> conditions,  double npcResponseChance,  Map<String, int> npcDeclineConsequences,  bool isGroupAction,  RelationshipEffects relationshipEffects,  int? minAge,  int? maxAge,  String? socialActionType)  $default,) {final _that = this;
switch (_that) {
case _GameAction():
return $default(_that.id,_that.name,_that.description,_that.category,_that.timeCost,_that.skillEffects,_that.hiddenMetricEffects,_that.healthEffect,_that.sectionPerformanceEffect,_that.associatedHabit,_that.targetNpcId,_that.moralImpactTemplates,_that.educationLevel,_that.educationProgramId,_that.workJobId,_that.workJobType,_that.logMessage,_that.relationshipTypeIds,_that.conditions,_that.npcResponseChance,_that.npcDeclineConsequences,_that.isGroupAction,_that.relationshipEffects,_that.minAge,_that.maxAge,_that.socialActionType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  ActionCategory category,  int timeCost,  Map<SkillType, int> skillEffects,  Map<HiddenMetricType, double> hiddenMetricEffects,  int healthEffect,  int sectionPerformanceEffect,  HabitType? associatedHabit,  String? targetNpcId,  List<MoralImpactTemplate> moralImpactTemplates,  String? educationLevel,  String? educationProgramId,  String? workJobId,  String? workJobType,  String? logMessage,  List<String> relationshipTypeIds,  List<AccessCondition> conditions,  double npcResponseChance,  Map<String, int> npcDeclineConsequences,  bool isGroupAction,  RelationshipEffects relationshipEffects,  int? minAge,  int? maxAge,  String? socialActionType)?  $default,) {final _that = this;
switch (_that) {
case _GameAction() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.category,_that.timeCost,_that.skillEffects,_that.hiddenMetricEffects,_that.healthEffect,_that.sectionPerformanceEffect,_that.associatedHabit,_that.targetNpcId,_that.moralImpactTemplates,_that.educationLevel,_that.educationProgramId,_that.workJobId,_that.workJobType,_that.logMessage,_that.relationshipTypeIds,_that.conditions,_that.npcResponseChance,_that.npcDeclineConsequences,_that.isGroupAction,_that.relationshipEffects,_that.minAge,_that.maxAge,_that.socialActionType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameAction implements GameAction {
  const _GameAction({required this.id, required this.name, required this.description, required this.category, required this.timeCost, final  Map<SkillType, int> skillEffects = const {}, final  Map<HiddenMetricType, double> hiddenMetricEffects = const {}, this.healthEffect = 0, this.sectionPerformanceEffect = 0, this.associatedHabit, this.targetNpcId, final  List<MoralImpactTemplate> moralImpactTemplates = const [], this.educationLevel, this.educationProgramId, this.workJobId, this.workJobType, this.logMessage, final  List<String> relationshipTypeIds = const [], final  List<AccessCondition> conditions = const [], this.npcResponseChance = 0.0, final  Map<String, int> npcDeclineConsequences = const {}, this.isGroupAction = false, this.relationshipEffects = const RelationshipEffects(), this.minAge, this.maxAge, this.socialActionType}): _skillEffects = skillEffects,_hiddenMetricEffects = hiddenMetricEffects,_moralImpactTemplates = moralImpactTemplates,_relationshipTypeIds = relationshipTypeIds,_conditions = conditions,_npcDeclineConsequences = npcDeclineConsequences;
  factory _GameAction.fromJson(Map<String, dynamic> json) => _$GameActionFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
@override final  ActionCategory category;
@override final  int timeCost;
 final  Map<SkillType, int> _skillEffects;
@override@JsonKey() Map<SkillType, int> get skillEffects {
  if (_skillEffects is EqualUnmodifiableMapView) return _skillEffects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_skillEffects);
}

 final  Map<HiddenMetricType, double> _hiddenMetricEffects;
@override@JsonKey() Map<HiddenMetricType, double> get hiddenMetricEffects {
  if (_hiddenMetricEffects is EqualUnmodifiableMapView) return _hiddenMetricEffects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_hiddenMetricEffects);
}

@override@JsonKey() final  int healthEffect;
@override@JsonKey() final  int sectionPerformanceEffect;
@override final  HabitType? associatedHabit;
@override final  String? targetNpcId;
 final  List<MoralImpactTemplate> _moralImpactTemplates;
@override@JsonKey() List<MoralImpactTemplate> get moralImpactTemplates {
  if (_moralImpactTemplates is EqualUnmodifiableListView) return _moralImpactTemplates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_moralImpactTemplates);
}

@override final  String? educationLevel;
@override final  String? educationProgramId;
@override final  String? workJobId;
@override final  String? workJobType;
@override final  String? logMessage;
 final  List<String> _relationshipTypeIds;
@override@JsonKey() List<String> get relationshipTypeIds {
  if (_relationshipTypeIds is EqualUnmodifiableListView) return _relationshipTypeIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relationshipTypeIds);
}

 final  List<AccessCondition> _conditions;
@override@JsonKey() List<AccessCondition> get conditions {
  if (_conditions is EqualUnmodifiableListView) return _conditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conditions);
}

@override@JsonKey() final  double npcResponseChance;
 final  Map<String, int> _npcDeclineConsequences;
@override@JsonKey() Map<String, int> get npcDeclineConsequences {
  if (_npcDeclineConsequences is EqualUnmodifiableMapView) return _npcDeclineConsequences;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_npcDeclineConsequences);
}

@override@JsonKey() final  bool isGroupAction;
@override@JsonKey() final  RelationshipEffects relationshipEffects;
@override final  int? minAge;
@override final  int? maxAge;
/// Type of social action (e.g. "friendly", "romantic", "mischievous"). Used to filter actions per relationship type (e.g. romantic not allowed for family). When null, treated as "friendly".
@override final  String? socialActionType;

/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameActionCopyWith<_GameAction> get copyWith => __$GameActionCopyWithImpl<_GameAction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameActionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameAction&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.timeCost, timeCost) || other.timeCost == timeCost)&&const DeepCollectionEquality().equals(other._skillEffects, _skillEffects)&&const DeepCollectionEquality().equals(other._hiddenMetricEffects, _hiddenMetricEffects)&&(identical(other.healthEffect, healthEffect) || other.healthEffect == healthEffect)&&(identical(other.sectionPerformanceEffect, sectionPerformanceEffect) || other.sectionPerformanceEffect == sectionPerformanceEffect)&&(identical(other.associatedHabit, associatedHabit) || other.associatedHabit == associatedHabit)&&(identical(other.targetNpcId, targetNpcId) || other.targetNpcId == targetNpcId)&&const DeepCollectionEquality().equals(other._moralImpactTemplates, _moralImpactTemplates)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.educationProgramId, educationProgramId) || other.educationProgramId == educationProgramId)&&(identical(other.workJobId, workJobId) || other.workJobId == workJobId)&&(identical(other.workJobType, workJobType) || other.workJobType == workJobType)&&(identical(other.logMessage, logMessage) || other.logMessage == logMessage)&&const DeepCollectionEquality().equals(other._relationshipTypeIds, _relationshipTypeIds)&&const DeepCollectionEquality().equals(other._conditions, _conditions)&&(identical(other.npcResponseChance, npcResponseChance) || other.npcResponseChance == npcResponseChance)&&const DeepCollectionEquality().equals(other._npcDeclineConsequences, _npcDeclineConsequences)&&(identical(other.isGroupAction, isGroupAction) || other.isGroupAction == isGroupAction)&&(identical(other.relationshipEffects, relationshipEffects) || other.relationshipEffects == relationshipEffects)&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.socialActionType, socialActionType) || other.socialActionType == socialActionType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,description,category,timeCost,const DeepCollectionEquality().hash(_skillEffects),const DeepCollectionEquality().hash(_hiddenMetricEffects),healthEffect,sectionPerformanceEffect,associatedHabit,targetNpcId,const DeepCollectionEquality().hash(_moralImpactTemplates),educationLevel,educationProgramId,workJobId,workJobType,logMessage,const DeepCollectionEquality().hash(_relationshipTypeIds),const DeepCollectionEquality().hash(_conditions),npcResponseChance,const DeepCollectionEquality().hash(_npcDeclineConsequences),isGroupAction,relationshipEffects,minAge,maxAge,socialActionType]);

@override
String toString() {
  return 'GameAction(id: $id, name: $name, description: $description, category: $category, timeCost: $timeCost, skillEffects: $skillEffects, hiddenMetricEffects: $hiddenMetricEffects, healthEffect: $healthEffect, sectionPerformanceEffect: $sectionPerformanceEffect, associatedHabit: $associatedHabit, targetNpcId: $targetNpcId, moralImpactTemplates: $moralImpactTemplates, educationLevel: $educationLevel, educationProgramId: $educationProgramId, workJobId: $workJobId, workJobType: $workJobType, logMessage: $logMessage, relationshipTypeIds: $relationshipTypeIds, conditions: $conditions, npcResponseChance: $npcResponseChance, npcDeclineConsequences: $npcDeclineConsequences, isGroupAction: $isGroupAction, relationshipEffects: $relationshipEffects, minAge: $minAge, maxAge: $maxAge, socialActionType: $socialActionType)';
}


}

/// @nodoc
abstract mixin class _$GameActionCopyWith<$Res> implements $GameActionCopyWith<$Res> {
  factory _$GameActionCopyWith(_GameAction value, $Res Function(_GameAction) _then) = __$GameActionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, ActionCategory category, int timeCost, Map<SkillType, int> skillEffects, Map<HiddenMetricType, double> hiddenMetricEffects, int healthEffect, int sectionPerformanceEffect, HabitType? associatedHabit, String? targetNpcId, List<MoralImpactTemplate> moralImpactTemplates, String? educationLevel, String? educationProgramId, String? workJobId, String? workJobType, String? logMessage, List<String> relationshipTypeIds, List<AccessCondition> conditions, double npcResponseChance, Map<String, int> npcDeclineConsequences, bool isGroupAction, RelationshipEffects relationshipEffects, int? minAge, int? maxAge, String? socialActionType
});


@override $RelationshipEffectsCopyWith<$Res> get relationshipEffects;

}
/// @nodoc
class __$GameActionCopyWithImpl<$Res>
    implements _$GameActionCopyWith<$Res> {
  __$GameActionCopyWithImpl(this._self, this._then);

  final _GameAction _self;
  final $Res Function(_GameAction) _then;

/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? category = null,Object? timeCost = null,Object? skillEffects = null,Object? hiddenMetricEffects = null,Object? healthEffect = null,Object? sectionPerformanceEffect = null,Object? associatedHabit = freezed,Object? targetNpcId = freezed,Object? moralImpactTemplates = null,Object? educationLevel = freezed,Object? educationProgramId = freezed,Object? workJobId = freezed,Object? workJobType = freezed,Object? logMessage = freezed,Object? relationshipTypeIds = null,Object? conditions = null,Object? npcResponseChance = null,Object? npcDeclineConsequences = null,Object? isGroupAction = null,Object? relationshipEffects = null,Object? minAge = freezed,Object? maxAge = freezed,Object? socialActionType = freezed,}) {
  return _then(_GameAction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ActionCategory,timeCost: null == timeCost ? _self.timeCost : timeCost // ignore: cast_nullable_to_non_nullable
as int,skillEffects: null == skillEffects ? _self._skillEffects : skillEffects // ignore: cast_nullable_to_non_nullable
as Map<SkillType, int>,hiddenMetricEffects: null == hiddenMetricEffects ? _self._hiddenMetricEffects : hiddenMetricEffects // ignore: cast_nullable_to_non_nullable
as Map<HiddenMetricType, double>,healthEffect: null == healthEffect ? _self.healthEffect : healthEffect // ignore: cast_nullable_to_non_nullable
as int,sectionPerformanceEffect: null == sectionPerformanceEffect ? _self.sectionPerformanceEffect : sectionPerformanceEffect // ignore: cast_nullable_to_non_nullable
as int,associatedHabit: freezed == associatedHabit ? _self.associatedHabit : associatedHabit // ignore: cast_nullable_to_non_nullable
as HabitType?,targetNpcId: freezed == targetNpcId ? _self.targetNpcId : targetNpcId // ignore: cast_nullable_to_non_nullable
as String?,moralImpactTemplates: null == moralImpactTemplates ? _self._moralImpactTemplates : moralImpactTemplates // ignore: cast_nullable_to_non_nullable
as List<MoralImpactTemplate>,educationLevel: freezed == educationLevel ? _self.educationLevel : educationLevel // ignore: cast_nullable_to_non_nullable
as String?,educationProgramId: freezed == educationProgramId ? _self.educationProgramId : educationProgramId // ignore: cast_nullable_to_non_nullable
as String?,workJobId: freezed == workJobId ? _self.workJobId : workJobId // ignore: cast_nullable_to_non_nullable
as String?,workJobType: freezed == workJobType ? _self.workJobType : workJobType // ignore: cast_nullable_to_non_nullable
as String?,logMessage: freezed == logMessage ? _self.logMessage : logMessage // ignore: cast_nullable_to_non_nullable
as String?,relationshipTypeIds: null == relationshipTypeIds ? _self._relationshipTypeIds : relationshipTypeIds // ignore: cast_nullable_to_non_nullable
as List<String>,conditions: null == conditions ? _self._conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<AccessCondition>,npcResponseChance: null == npcResponseChance ? _self.npcResponseChance : npcResponseChance // ignore: cast_nullable_to_non_nullable
as double,npcDeclineConsequences: null == npcDeclineConsequences ? _self._npcDeclineConsequences : npcDeclineConsequences // ignore: cast_nullable_to_non_nullable
as Map<String, int>,isGroupAction: null == isGroupAction ? _self.isGroupAction : isGroupAction // ignore: cast_nullable_to_non_nullable
as bool,relationshipEffects: null == relationshipEffects ? _self.relationshipEffects : relationshipEffects // ignore: cast_nullable_to_non_nullable
as RelationshipEffects,minAge: freezed == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int?,maxAge: freezed == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int?,socialActionType: freezed == socialActionType ? _self.socialActionType : socialActionType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GameAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RelationshipEffectsCopyWith<$Res> get relationshipEffects {
  
  return $RelationshipEffectsCopyWith<$Res>(_self.relationshipEffects, (value) {
    return _then(_self.copyWith(relationshipEffects: value));
  });
}
}

// dart format on
