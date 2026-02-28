// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'life_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LifeTemplate {

 String get id; String get name; String get description; String get country; String get familyBackground; SkillSet get startingSkills; List<TraitType> get startingTraits; List<Section> get startingSections; List<Npc> get startingNpcs; int get startingHealth; int get startingMoney;
/// Create a copy of LifeTemplate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LifeTemplateCopyWith<LifeTemplate> get copyWith => _$LifeTemplateCopyWithImpl<LifeTemplate>(this as LifeTemplate, _$identity);

  /// Serializes this LifeTemplate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LifeTemplate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.country, country) || other.country == country)&&(identical(other.familyBackground, familyBackground) || other.familyBackground == familyBackground)&&(identical(other.startingSkills, startingSkills) || other.startingSkills == startingSkills)&&const DeepCollectionEquality().equals(other.startingTraits, startingTraits)&&const DeepCollectionEquality().equals(other.startingSections, startingSections)&&const DeepCollectionEquality().equals(other.startingNpcs, startingNpcs)&&(identical(other.startingHealth, startingHealth) || other.startingHealth == startingHealth)&&(identical(other.startingMoney, startingMoney) || other.startingMoney == startingMoney));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,country,familyBackground,startingSkills,const DeepCollectionEquality().hash(startingTraits),const DeepCollectionEquality().hash(startingSections),const DeepCollectionEquality().hash(startingNpcs),startingHealth,startingMoney);

@override
String toString() {
  return 'LifeTemplate(id: $id, name: $name, description: $description, country: $country, familyBackground: $familyBackground, startingSkills: $startingSkills, startingTraits: $startingTraits, startingSections: $startingSections, startingNpcs: $startingNpcs, startingHealth: $startingHealth, startingMoney: $startingMoney)';
}


}

/// @nodoc
abstract mixin class $LifeTemplateCopyWith<$Res>  {
  factory $LifeTemplateCopyWith(LifeTemplate value, $Res Function(LifeTemplate) _then) = _$LifeTemplateCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, String country, String familyBackground, SkillSet startingSkills, List<TraitType> startingTraits, List<Section> startingSections, List<Npc> startingNpcs, int startingHealth, int startingMoney
});


$SkillSetCopyWith<$Res> get startingSkills;

}
/// @nodoc
class _$LifeTemplateCopyWithImpl<$Res>
    implements $LifeTemplateCopyWith<$Res> {
  _$LifeTemplateCopyWithImpl(this._self, this._then);

  final LifeTemplate _self;
  final $Res Function(LifeTemplate) _then;

/// Create a copy of LifeTemplate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? country = null,Object? familyBackground = null,Object? startingSkills = null,Object? startingTraits = null,Object? startingSections = null,Object? startingNpcs = null,Object? startingHealth = null,Object? startingMoney = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,familyBackground: null == familyBackground ? _self.familyBackground : familyBackground // ignore: cast_nullable_to_non_nullable
as String,startingSkills: null == startingSkills ? _self.startingSkills : startingSkills // ignore: cast_nullable_to_non_nullable
as SkillSet,startingTraits: null == startingTraits ? _self.startingTraits : startingTraits // ignore: cast_nullable_to_non_nullable
as List<TraitType>,startingSections: null == startingSections ? _self.startingSections : startingSections // ignore: cast_nullable_to_non_nullable
as List<Section>,startingNpcs: null == startingNpcs ? _self.startingNpcs : startingNpcs // ignore: cast_nullable_to_non_nullable
as List<Npc>,startingHealth: null == startingHealth ? _self.startingHealth : startingHealth // ignore: cast_nullable_to_non_nullable
as int,startingMoney: null == startingMoney ? _self.startingMoney : startingMoney // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of LifeTemplate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SkillSetCopyWith<$Res> get startingSkills {
  
  return $SkillSetCopyWith<$Res>(_self.startingSkills, (value) {
    return _then(_self.copyWith(startingSkills: value));
  });
}
}


/// Adds pattern-matching-related methods to [LifeTemplate].
extension LifeTemplatePatterns on LifeTemplate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LifeTemplate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LifeTemplate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LifeTemplate value)  $default,){
final _that = this;
switch (_that) {
case _LifeTemplate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LifeTemplate value)?  $default,){
final _that = this;
switch (_that) {
case _LifeTemplate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String country,  String familyBackground,  SkillSet startingSkills,  List<TraitType> startingTraits,  List<Section> startingSections,  List<Npc> startingNpcs,  int startingHealth,  int startingMoney)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LifeTemplate() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.country,_that.familyBackground,_that.startingSkills,_that.startingTraits,_that.startingSections,_that.startingNpcs,_that.startingHealth,_that.startingMoney);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String country,  String familyBackground,  SkillSet startingSkills,  List<TraitType> startingTraits,  List<Section> startingSections,  List<Npc> startingNpcs,  int startingHealth,  int startingMoney)  $default,) {final _that = this;
switch (_that) {
case _LifeTemplate():
return $default(_that.id,_that.name,_that.description,_that.country,_that.familyBackground,_that.startingSkills,_that.startingTraits,_that.startingSections,_that.startingNpcs,_that.startingHealth,_that.startingMoney);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  String country,  String familyBackground,  SkillSet startingSkills,  List<TraitType> startingTraits,  List<Section> startingSections,  List<Npc> startingNpcs,  int startingHealth,  int startingMoney)?  $default,) {final _that = this;
switch (_that) {
case _LifeTemplate() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.country,_that.familyBackground,_that.startingSkills,_that.startingTraits,_that.startingSections,_that.startingNpcs,_that.startingHealth,_that.startingMoney);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LifeTemplate implements LifeTemplate {
  const _LifeTemplate({required this.id, required this.name, required this.description, required this.country, required this.familyBackground, required this.startingSkills, required final  List<TraitType> startingTraits, required final  List<Section> startingSections, required final  List<Npc> startingNpcs, this.startingHealth = 80, this.startingMoney = 0}): _startingTraits = startingTraits,_startingSections = startingSections,_startingNpcs = startingNpcs;
  factory _LifeTemplate.fromJson(Map<String, dynamic> json) => _$LifeTemplateFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
@override final  String country;
@override final  String familyBackground;
@override final  SkillSet startingSkills;
 final  List<TraitType> _startingTraits;
@override List<TraitType> get startingTraits {
  if (_startingTraits is EqualUnmodifiableListView) return _startingTraits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_startingTraits);
}

 final  List<Section> _startingSections;
@override List<Section> get startingSections {
  if (_startingSections is EqualUnmodifiableListView) return _startingSections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_startingSections);
}

 final  List<Npc> _startingNpcs;
@override List<Npc> get startingNpcs {
  if (_startingNpcs is EqualUnmodifiableListView) return _startingNpcs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_startingNpcs);
}

@override@JsonKey() final  int startingHealth;
@override@JsonKey() final  int startingMoney;

/// Create a copy of LifeTemplate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LifeTemplateCopyWith<_LifeTemplate> get copyWith => __$LifeTemplateCopyWithImpl<_LifeTemplate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LifeTemplateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LifeTemplate&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.country, country) || other.country == country)&&(identical(other.familyBackground, familyBackground) || other.familyBackground == familyBackground)&&(identical(other.startingSkills, startingSkills) || other.startingSkills == startingSkills)&&const DeepCollectionEquality().equals(other._startingTraits, _startingTraits)&&const DeepCollectionEquality().equals(other._startingSections, _startingSections)&&const DeepCollectionEquality().equals(other._startingNpcs, _startingNpcs)&&(identical(other.startingHealth, startingHealth) || other.startingHealth == startingHealth)&&(identical(other.startingMoney, startingMoney) || other.startingMoney == startingMoney));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,country,familyBackground,startingSkills,const DeepCollectionEquality().hash(_startingTraits),const DeepCollectionEquality().hash(_startingSections),const DeepCollectionEquality().hash(_startingNpcs),startingHealth,startingMoney);

@override
String toString() {
  return 'LifeTemplate(id: $id, name: $name, description: $description, country: $country, familyBackground: $familyBackground, startingSkills: $startingSkills, startingTraits: $startingTraits, startingSections: $startingSections, startingNpcs: $startingNpcs, startingHealth: $startingHealth, startingMoney: $startingMoney)';
}


}

/// @nodoc
abstract mixin class _$LifeTemplateCopyWith<$Res> implements $LifeTemplateCopyWith<$Res> {
  factory _$LifeTemplateCopyWith(_LifeTemplate value, $Res Function(_LifeTemplate) _then) = __$LifeTemplateCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, String country, String familyBackground, SkillSet startingSkills, List<TraitType> startingTraits, List<Section> startingSections, List<Npc> startingNpcs, int startingHealth, int startingMoney
});


@override $SkillSetCopyWith<$Res> get startingSkills;

}
/// @nodoc
class __$LifeTemplateCopyWithImpl<$Res>
    implements _$LifeTemplateCopyWith<$Res> {
  __$LifeTemplateCopyWithImpl(this._self, this._then);

  final _LifeTemplate _self;
  final $Res Function(_LifeTemplate) _then;

/// Create a copy of LifeTemplate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? country = null,Object? familyBackground = null,Object? startingSkills = null,Object? startingTraits = null,Object? startingSections = null,Object? startingNpcs = null,Object? startingHealth = null,Object? startingMoney = null,}) {
  return _then(_LifeTemplate(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,familyBackground: null == familyBackground ? _self.familyBackground : familyBackground // ignore: cast_nullable_to_non_nullable
as String,startingSkills: null == startingSkills ? _self.startingSkills : startingSkills // ignore: cast_nullable_to_non_nullable
as SkillSet,startingTraits: null == startingTraits ? _self._startingTraits : startingTraits // ignore: cast_nullable_to_non_nullable
as List<TraitType>,startingSections: null == startingSections ? _self._startingSections : startingSections // ignore: cast_nullable_to_non_nullable
as List<Section>,startingNpcs: null == startingNpcs ? _self._startingNpcs : startingNpcs // ignore: cast_nullable_to_non_nullable
as List<Npc>,startingHealth: null == startingHealth ? _self.startingHealth : startingHealth // ignore: cast_nullable_to_non_nullable
as int,startingMoney: null == startingMoney ? _self.startingMoney : startingMoney // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of LifeTemplate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SkillSetCopyWith<$Res> get startingSkills {
  
  return $SkillSetCopyWith<$Res>(_self.startingSkills, (value) {
    return _then(_self.copyWith(startingSkills: value));
  });
}
}

// dart format on
