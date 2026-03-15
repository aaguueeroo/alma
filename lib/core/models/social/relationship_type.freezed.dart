// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relationship_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RelationshipCategory {

 String get category; List<RelationshipSubtype> get subtypes;
/// Create a copy of RelationshipCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelationshipCategoryCopyWith<RelationshipCategory> get copyWith => _$RelationshipCategoryCopyWithImpl<RelationshipCategory>(this as RelationshipCategory, _$identity);

  /// Serializes this RelationshipCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RelationshipCategory&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other.subtypes, subtypes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,const DeepCollectionEquality().hash(subtypes));

@override
String toString() {
  return 'RelationshipCategory(category: $category, subtypes: $subtypes)';
}


}

/// @nodoc
abstract mixin class $RelationshipCategoryCopyWith<$Res>  {
  factory $RelationshipCategoryCopyWith(RelationshipCategory value, $Res Function(RelationshipCategory) _then) = _$RelationshipCategoryCopyWithImpl;
@useResult
$Res call({
 String category, List<RelationshipSubtype> subtypes
});




}
/// @nodoc
class _$RelationshipCategoryCopyWithImpl<$Res>
    implements $RelationshipCategoryCopyWith<$Res> {
  _$RelationshipCategoryCopyWithImpl(this._self, this._then);

  final RelationshipCategory _self;
  final $Res Function(RelationshipCategory) _then;

/// Create a copy of RelationshipCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? subtypes = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,subtypes: null == subtypes ? _self.subtypes : subtypes // ignore: cast_nullable_to_non_nullable
as List<RelationshipSubtype>,
  ));
}

}


/// Adds pattern-matching-related methods to [RelationshipCategory].
extension RelationshipCategoryPatterns on RelationshipCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RelationshipCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RelationshipCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RelationshipCategory value)  $default,){
final _that = this;
switch (_that) {
case _RelationshipCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RelationshipCategory value)?  $default,){
final _that = this;
switch (_that) {
case _RelationshipCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String category,  List<RelationshipSubtype> subtypes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RelationshipCategory() when $default != null:
return $default(_that.category,_that.subtypes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String category,  List<RelationshipSubtype> subtypes)  $default,) {final _that = this;
switch (_that) {
case _RelationshipCategory():
return $default(_that.category,_that.subtypes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String category,  List<RelationshipSubtype> subtypes)?  $default,) {final _that = this;
switch (_that) {
case _RelationshipCategory() when $default != null:
return $default(_that.category,_that.subtypes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RelationshipCategory implements RelationshipCategory {
  const _RelationshipCategory({required this.category, required final  List<RelationshipSubtype> subtypes}): _subtypes = subtypes;
  factory _RelationshipCategory.fromJson(Map<String, dynamic> json) => _$RelationshipCategoryFromJson(json);

@override final  String category;
 final  List<RelationshipSubtype> _subtypes;
@override List<RelationshipSubtype> get subtypes {
  if (_subtypes is EqualUnmodifiableListView) return _subtypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subtypes);
}


/// Create a copy of RelationshipCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelationshipCategoryCopyWith<_RelationshipCategory> get copyWith => __$RelationshipCategoryCopyWithImpl<_RelationshipCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelationshipCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RelationshipCategory&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._subtypes, _subtypes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,const DeepCollectionEquality().hash(_subtypes));

@override
String toString() {
  return 'RelationshipCategory(category: $category, subtypes: $subtypes)';
}


}

/// @nodoc
abstract mixin class _$RelationshipCategoryCopyWith<$Res> implements $RelationshipCategoryCopyWith<$Res> {
  factory _$RelationshipCategoryCopyWith(_RelationshipCategory value, $Res Function(_RelationshipCategory) _then) = __$RelationshipCategoryCopyWithImpl;
@override @useResult
$Res call({
 String category, List<RelationshipSubtype> subtypes
});




}
/// @nodoc
class __$RelationshipCategoryCopyWithImpl<$Res>
    implements _$RelationshipCategoryCopyWith<$Res> {
  __$RelationshipCategoryCopyWithImpl(this._self, this._then);

  final _RelationshipCategory _self;
  final $Res Function(_RelationshipCategory) _then;

/// Create a copy of RelationshipCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? subtypes = null,}) {
  return _then(_RelationshipCategory(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,subtypes: null == subtypes ? _self._subtypes : subtypes // ignore: cast_nullable_to_non_nullable
as List<RelationshipSubtype>,
  ));
}


}


/// @nodoc
mixin _$RelationshipSubtype {

 String get id; String get label; int get decayRate; bool get autoImproveWhenCohabiting; bool get autoImproveWhenCoworking; bool get canChangeAutomatically; bool get requiresActionToTransition; String? get transitionsTo; int? get autoTransitionThreshold;/// When false, attraction is always 0 and never changed by actions (e.g. family).
 bool get attractionAllowed;/// When non-null, only actions whose [GameAction.socialActionType] is in this list are eligible. When null, all action types allowed.
 List<String>? get allowedActionTypes;
/// Create a copy of RelationshipSubtype
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelationshipSubtypeCopyWith<RelationshipSubtype> get copyWith => _$RelationshipSubtypeCopyWithImpl<RelationshipSubtype>(this as RelationshipSubtype, _$identity);

  /// Serializes this RelationshipSubtype to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RelationshipSubtype&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.decayRate, decayRate) || other.decayRate == decayRate)&&(identical(other.autoImproveWhenCohabiting, autoImproveWhenCohabiting) || other.autoImproveWhenCohabiting == autoImproveWhenCohabiting)&&(identical(other.autoImproveWhenCoworking, autoImproveWhenCoworking) || other.autoImproveWhenCoworking == autoImproveWhenCoworking)&&(identical(other.canChangeAutomatically, canChangeAutomatically) || other.canChangeAutomatically == canChangeAutomatically)&&(identical(other.requiresActionToTransition, requiresActionToTransition) || other.requiresActionToTransition == requiresActionToTransition)&&(identical(other.transitionsTo, transitionsTo) || other.transitionsTo == transitionsTo)&&(identical(other.autoTransitionThreshold, autoTransitionThreshold) || other.autoTransitionThreshold == autoTransitionThreshold)&&(identical(other.attractionAllowed, attractionAllowed) || other.attractionAllowed == attractionAllowed)&&const DeepCollectionEquality().equals(other.allowedActionTypes, allowedActionTypes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,decayRate,autoImproveWhenCohabiting,autoImproveWhenCoworking,canChangeAutomatically,requiresActionToTransition,transitionsTo,autoTransitionThreshold,attractionAllowed,const DeepCollectionEquality().hash(allowedActionTypes));

@override
String toString() {
  return 'RelationshipSubtype(id: $id, label: $label, decayRate: $decayRate, autoImproveWhenCohabiting: $autoImproveWhenCohabiting, autoImproveWhenCoworking: $autoImproveWhenCoworking, canChangeAutomatically: $canChangeAutomatically, requiresActionToTransition: $requiresActionToTransition, transitionsTo: $transitionsTo, autoTransitionThreshold: $autoTransitionThreshold, attractionAllowed: $attractionAllowed, allowedActionTypes: $allowedActionTypes)';
}


}

/// @nodoc
abstract mixin class $RelationshipSubtypeCopyWith<$Res>  {
  factory $RelationshipSubtypeCopyWith(RelationshipSubtype value, $Res Function(RelationshipSubtype) _then) = _$RelationshipSubtypeCopyWithImpl;
@useResult
$Res call({
 String id, String label, int decayRate, bool autoImproveWhenCohabiting, bool autoImproveWhenCoworking, bool canChangeAutomatically, bool requiresActionToTransition, String? transitionsTo, int? autoTransitionThreshold, bool attractionAllowed, List<String>? allowedActionTypes
});




}
/// @nodoc
class _$RelationshipSubtypeCopyWithImpl<$Res>
    implements $RelationshipSubtypeCopyWith<$Res> {
  _$RelationshipSubtypeCopyWithImpl(this._self, this._then);

  final RelationshipSubtype _self;
  final $Res Function(RelationshipSubtype) _then;

/// Create a copy of RelationshipSubtype
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? decayRate = null,Object? autoImproveWhenCohabiting = null,Object? autoImproveWhenCoworking = null,Object? canChangeAutomatically = null,Object? requiresActionToTransition = null,Object? transitionsTo = freezed,Object? autoTransitionThreshold = freezed,Object? attractionAllowed = null,Object? allowedActionTypes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,decayRate: null == decayRate ? _self.decayRate : decayRate // ignore: cast_nullable_to_non_nullable
as int,autoImproveWhenCohabiting: null == autoImproveWhenCohabiting ? _self.autoImproveWhenCohabiting : autoImproveWhenCohabiting // ignore: cast_nullable_to_non_nullable
as bool,autoImproveWhenCoworking: null == autoImproveWhenCoworking ? _self.autoImproveWhenCoworking : autoImproveWhenCoworking // ignore: cast_nullable_to_non_nullable
as bool,canChangeAutomatically: null == canChangeAutomatically ? _self.canChangeAutomatically : canChangeAutomatically // ignore: cast_nullable_to_non_nullable
as bool,requiresActionToTransition: null == requiresActionToTransition ? _self.requiresActionToTransition : requiresActionToTransition // ignore: cast_nullable_to_non_nullable
as bool,transitionsTo: freezed == transitionsTo ? _self.transitionsTo : transitionsTo // ignore: cast_nullable_to_non_nullable
as String?,autoTransitionThreshold: freezed == autoTransitionThreshold ? _self.autoTransitionThreshold : autoTransitionThreshold // ignore: cast_nullable_to_non_nullable
as int?,attractionAllowed: null == attractionAllowed ? _self.attractionAllowed : attractionAllowed // ignore: cast_nullable_to_non_nullable
as bool,allowedActionTypes: freezed == allowedActionTypes ? _self.allowedActionTypes : allowedActionTypes // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RelationshipSubtype].
extension RelationshipSubtypePatterns on RelationshipSubtype {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RelationshipSubtype value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RelationshipSubtype() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RelationshipSubtype value)  $default,){
final _that = this;
switch (_that) {
case _RelationshipSubtype():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RelationshipSubtype value)?  $default,){
final _that = this;
switch (_that) {
case _RelationshipSubtype() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  int decayRate,  bool autoImproveWhenCohabiting,  bool autoImproveWhenCoworking,  bool canChangeAutomatically,  bool requiresActionToTransition,  String? transitionsTo,  int? autoTransitionThreshold,  bool attractionAllowed,  List<String>? allowedActionTypes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RelationshipSubtype() when $default != null:
return $default(_that.id,_that.label,_that.decayRate,_that.autoImproveWhenCohabiting,_that.autoImproveWhenCoworking,_that.canChangeAutomatically,_that.requiresActionToTransition,_that.transitionsTo,_that.autoTransitionThreshold,_that.attractionAllowed,_that.allowedActionTypes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  int decayRate,  bool autoImproveWhenCohabiting,  bool autoImproveWhenCoworking,  bool canChangeAutomatically,  bool requiresActionToTransition,  String? transitionsTo,  int? autoTransitionThreshold,  bool attractionAllowed,  List<String>? allowedActionTypes)  $default,) {final _that = this;
switch (_that) {
case _RelationshipSubtype():
return $default(_that.id,_that.label,_that.decayRate,_that.autoImproveWhenCohabiting,_that.autoImproveWhenCoworking,_that.canChangeAutomatically,_that.requiresActionToTransition,_that.transitionsTo,_that.autoTransitionThreshold,_that.attractionAllowed,_that.allowedActionTypes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  int decayRate,  bool autoImproveWhenCohabiting,  bool autoImproveWhenCoworking,  bool canChangeAutomatically,  bool requiresActionToTransition,  String? transitionsTo,  int? autoTransitionThreshold,  bool attractionAllowed,  List<String>? allowedActionTypes)?  $default,) {final _that = this;
switch (_that) {
case _RelationshipSubtype() when $default != null:
return $default(_that.id,_that.label,_that.decayRate,_that.autoImproveWhenCohabiting,_that.autoImproveWhenCoworking,_that.canChangeAutomatically,_that.requiresActionToTransition,_that.transitionsTo,_that.autoTransitionThreshold,_that.attractionAllowed,_that.allowedActionTypes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RelationshipSubtype implements RelationshipSubtype {
  const _RelationshipSubtype({required this.id, required this.label, this.decayRate = 3, this.autoImproveWhenCohabiting = false, this.autoImproveWhenCoworking = false, this.canChangeAutomatically = true, this.requiresActionToTransition = false, this.transitionsTo, this.autoTransitionThreshold, this.attractionAllowed = true, final  List<String>? allowedActionTypes = null}): _allowedActionTypes = allowedActionTypes;
  factory _RelationshipSubtype.fromJson(Map<String, dynamic> json) => _$RelationshipSubtypeFromJson(json);

@override final  String id;
@override final  String label;
@override@JsonKey() final  int decayRate;
@override@JsonKey() final  bool autoImproveWhenCohabiting;
@override@JsonKey() final  bool autoImproveWhenCoworking;
@override@JsonKey() final  bool canChangeAutomatically;
@override@JsonKey() final  bool requiresActionToTransition;
@override final  String? transitionsTo;
@override final  int? autoTransitionThreshold;
/// When false, attraction is always 0 and never changed by actions (e.g. family).
@override@JsonKey() final  bool attractionAllowed;
/// When non-null, only actions whose [GameAction.socialActionType] is in this list are eligible. When null, all action types allowed.
 final  List<String>? _allowedActionTypes;
/// When non-null, only actions whose [GameAction.socialActionType] is in this list are eligible. When null, all action types allowed.
@override@JsonKey() List<String>? get allowedActionTypes {
  final value = _allowedActionTypes;
  if (value == null) return null;
  if (_allowedActionTypes is EqualUnmodifiableListView) return _allowedActionTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of RelationshipSubtype
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelationshipSubtypeCopyWith<_RelationshipSubtype> get copyWith => __$RelationshipSubtypeCopyWithImpl<_RelationshipSubtype>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelationshipSubtypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RelationshipSubtype&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.decayRate, decayRate) || other.decayRate == decayRate)&&(identical(other.autoImproveWhenCohabiting, autoImproveWhenCohabiting) || other.autoImproveWhenCohabiting == autoImproveWhenCohabiting)&&(identical(other.autoImproveWhenCoworking, autoImproveWhenCoworking) || other.autoImproveWhenCoworking == autoImproveWhenCoworking)&&(identical(other.canChangeAutomatically, canChangeAutomatically) || other.canChangeAutomatically == canChangeAutomatically)&&(identical(other.requiresActionToTransition, requiresActionToTransition) || other.requiresActionToTransition == requiresActionToTransition)&&(identical(other.transitionsTo, transitionsTo) || other.transitionsTo == transitionsTo)&&(identical(other.autoTransitionThreshold, autoTransitionThreshold) || other.autoTransitionThreshold == autoTransitionThreshold)&&(identical(other.attractionAllowed, attractionAllowed) || other.attractionAllowed == attractionAllowed)&&const DeepCollectionEquality().equals(other._allowedActionTypes, _allowedActionTypes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,decayRate,autoImproveWhenCohabiting,autoImproveWhenCoworking,canChangeAutomatically,requiresActionToTransition,transitionsTo,autoTransitionThreshold,attractionAllowed,const DeepCollectionEquality().hash(_allowedActionTypes));

@override
String toString() {
  return 'RelationshipSubtype(id: $id, label: $label, decayRate: $decayRate, autoImproveWhenCohabiting: $autoImproveWhenCohabiting, autoImproveWhenCoworking: $autoImproveWhenCoworking, canChangeAutomatically: $canChangeAutomatically, requiresActionToTransition: $requiresActionToTransition, transitionsTo: $transitionsTo, autoTransitionThreshold: $autoTransitionThreshold, attractionAllowed: $attractionAllowed, allowedActionTypes: $allowedActionTypes)';
}


}

/// @nodoc
abstract mixin class _$RelationshipSubtypeCopyWith<$Res> implements $RelationshipSubtypeCopyWith<$Res> {
  factory _$RelationshipSubtypeCopyWith(_RelationshipSubtype value, $Res Function(_RelationshipSubtype) _then) = __$RelationshipSubtypeCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, int decayRate, bool autoImproveWhenCohabiting, bool autoImproveWhenCoworking, bool canChangeAutomatically, bool requiresActionToTransition, String? transitionsTo, int? autoTransitionThreshold, bool attractionAllowed, List<String>? allowedActionTypes
});




}
/// @nodoc
class __$RelationshipSubtypeCopyWithImpl<$Res>
    implements _$RelationshipSubtypeCopyWith<$Res> {
  __$RelationshipSubtypeCopyWithImpl(this._self, this._then);

  final _RelationshipSubtype _self;
  final $Res Function(_RelationshipSubtype) _then;

/// Create a copy of RelationshipSubtype
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? decayRate = null,Object? autoImproveWhenCohabiting = null,Object? autoImproveWhenCoworking = null,Object? canChangeAutomatically = null,Object? requiresActionToTransition = null,Object? transitionsTo = freezed,Object? autoTransitionThreshold = freezed,Object? attractionAllowed = null,Object? allowedActionTypes = freezed,}) {
  return _then(_RelationshipSubtype(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,decayRate: null == decayRate ? _self.decayRate : decayRate // ignore: cast_nullable_to_non_nullable
as int,autoImproveWhenCohabiting: null == autoImproveWhenCohabiting ? _self.autoImproveWhenCohabiting : autoImproveWhenCohabiting // ignore: cast_nullable_to_non_nullable
as bool,autoImproveWhenCoworking: null == autoImproveWhenCoworking ? _self.autoImproveWhenCoworking : autoImproveWhenCoworking // ignore: cast_nullable_to_non_nullable
as bool,canChangeAutomatically: null == canChangeAutomatically ? _self.canChangeAutomatically : canChangeAutomatically // ignore: cast_nullable_to_non_nullable
as bool,requiresActionToTransition: null == requiresActionToTransition ? _self.requiresActionToTransition : requiresActionToTransition // ignore: cast_nullable_to_non_nullable
as bool,transitionsTo: freezed == transitionsTo ? _self.transitionsTo : transitionsTo // ignore: cast_nullable_to_non_nullable
as String?,autoTransitionThreshold: freezed == autoTransitionThreshold ? _self.autoTransitionThreshold : autoTransitionThreshold // ignore: cast_nullable_to_non_nullable
as int?,attractionAllowed: null == attractionAllowed ? _self.attractionAllowed : attractionAllowed // ignore: cast_nullable_to_non_nullable
as bool,allowedActionTypes: freezed == allowedActionTypes ? _self._allowedActionTypes : allowedActionTypes // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
