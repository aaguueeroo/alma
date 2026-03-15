// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialState {

 List<Relationship> get relationships; int get reputation; SocialPrompt? get pendingPrompt; List<String> get performedGenericActionIdsThisYear; List<String> get genericActionIdsThisYear;
/// Create a copy of SocialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialStateCopyWith<SocialState> get copyWith => _$SocialStateCopyWithImpl<SocialState>(this as SocialState, _$identity);

  /// Serializes this SocialState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialState&&const DeepCollectionEquality().equals(other.relationships, relationships)&&(identical(other.reputation, reputation) || other.reputation == reputation)&&(identical(other.pendingPrompt, pendingPrompt) || other.pendingPrompt == pendingPrompt)&&const DeepCollectionEquality().equals(other.performedGenericActionIdsThisYear, performedGenericActionIdsThisYear)&&const DeepCollectionEquality().equals(other.genericActionIdsThisYear, genericActionIdsThisYear));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(relationships),reputation,pendingPrompt,const DeepCollectionEquality().hash(performedGenericActionIdsThisYear),const DeepCollectionEquality().hash(genericActionIdsThisYear));

@override
String toString() {
  return 'SocialState(relationships: $relationships, reputation: $reputation, pendingPrompt: $pendingPrompt, performedGenericActionIdsThisYear: $performedGenericActionIdsThisYear, genericActionIdsThisYear: $genericActionIdsThisYear)';
}


}

/// @nodoc
abstract mixin class $SocialStateCopyWith<$Res>  {
  factory $SocialStateCopyWith(SocialState value, $Res Function(SocialState) _then) = _$SocialStateCopyWithImpl;
@useResult
$Res call({
 List<Relationship> relationships, int reputation, SocialPrompt? pendingPrompt, List<String> performedGenericActionIdsThisYear, List<String> genericActionIdsThisYear
});


$SocialPromptCopyWith<$Res>? get pendingPrompt;

}
/// @nodoc
class _$SocialStateCopyWithImpl<$Res>
    implements $SocialStateCopyWith<$Res> {
  _$SocialStateCopyWithImpl(this._self, this._then);

  final SocialState _self;
  final $Res Function(SocialState) _then;

/// Create a copy of SocialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? relationships = null,Object? reputation = null,Object? pendingPrompt = freezed,Object? performedGenericActionIdsThisYear = null,Object? genericActionIdsThisYear = null,}) {
  return _then(_self.copyWith(
relationships: null == relationships ? _self.relationships : relationships // ignore: cast_nullable_to_non_nullable
as List<Relationship>,reputation: null == reputation ? _self.reputation : reputation // ignore: cast_nullable_to_non_nullable
as int,pendingPrompt: freezed == pendingPrompt ? _self.pendingPrompt : pendingPrompt // ignore: cast_nullable_to_non_nullable
as SocialPrompt?,performedGenericActionIdsThisYear: null == performedGenericActionIdsThisYear ? _self.performedGenericActionIdsThisYear : performedGenericActionIdsThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,genericActionIdsThisYear: null == genericActionIdsThisYear ? _self.genericActionIdsThisYear : genericActionIdsThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of SocialState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SocialPromptCopyWith<$Res>? get pendingPrompt {
    if (_self.pendingPrompt == null) {
    return null;
  }

  return $SocialPromptCopyWith<$Res>(_self.pendingPrompt!, (value) {
    return _then(_self.copyWith(pendingPrompt: value));
  });
}
}


/// Adds pattern-matching-related methods to [SocialState].
extension SocialStatePatterns on SocialState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialState value)  $default,){
final _that = this;
switch (_that) {
case _SocialState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialState value)?  $default,){
final _that = this;
switch (_that) {
case _SocialState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Relationship> relationships,  int reputation,  SocialPrompt? pendingPrompt,  List<String> performedGenericActionIdsThisYear,  List<String> genericActionIdsThisYear)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialState() when $default != null:
return $default(_that.relationships,_that.reputation,_that.pendingPrompt,_that.performedGenericActionIdsThisYear,_that.genericActionIdsThisYear);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Relationship> relationships,  int reputation,  SocialPrompt? pendingPrompt,  List<String> performedGenericActionIdsThisYear,  List<String> genericActionIdsThisYear)  $default,) {final _that = this;
switch (_that) {
case _SocialState():
return $default(_that.relationships,_that.reputation,_that.pendingPrompt,_that.performedGenericActionIdsThisYear,_that.genericActionIdsThisYear);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Relationship> relationships,  int reputation,  SocialPrompt? pendingPrompt,  List<String> performedGenericActionIdsThisYear,  List<String> genericActionIdsThisYear)?  $default,) {final _that = this;
switch (_that) {
case _SocialState() when $default != null:
return $default(_that.relationships,_that.reputation,_that.pendingPrompt,_that.performedGenericActionIdsThisYear,_that.genericActionIdsThisYear);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocialState implements SocialState {
  const _SocialState({final  List<Relationship> relationships = const [], this.reputation = 0, this.pendingPrompt, final  List<String> performedGenericActionIdsThisYear = const [], final  List<String> genericActionIdsThisYear = const []}): _relationships = relationships,_performedGenericActionIdsThisYear = performedGenericActionIdsThisYear,_genericActionIdsThisYear = genericActionIdsThisYear;
  factory _SocialState.fromJson(Map<String, dynamic> json) => _$SocialStateFromJson(json);

 final  List<Relationship> _relationships;
@override@JsonKey() List<Relationship> get relationships {
  if (_relationships is EqualUnmodifiableListView) return _relationships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relationships);
}

@override@JsonKey() final  int reputation;
@override final  SocialPrompt? pendingPrompt;
 final  List<String> _performedGenericActionIdsThisYear;
@override@JsonKey() List<String> get performedGenericActionIdsThisYear {
  if (_performedGenericActionIdsThisYear is EqualUnmodifiableListView) return _performedGenericActionIdsThisYear;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_performedGenericActionIdsThisYear);
}

 final  List<String> _genericActionIdsThisYear;
@override@JsonKey() List<String> get genericActionIdsThisYear {
  if (_genericActionIdsThisYear is EqualUnmodifiableListView) return _genericActionIdsThisYear;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genericActionIdsThisYear);
}


/// Create a copy of SocialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialStateCopyWith<_SocialState> get copyWith => __$SocialStateCopyWithImpl<_SocialState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialState&&const DeepCollectionEquality().equals(other._relationships, _relationships)&&(identical(other.reputation, reputation) || other.reputation == reputation)&&(identical(other.pendingPrompt, pendingPrompt) || other.pendingPrompt == pendingPrompt)&&const DeepCollectionEquality().equals(other._performedGenericActionIdsThisYear, _performedGenericActionIdsThisYear)&&const DeepCollectionEquality().equals(other._genericActionIdsThisYear, _genericActionIdsThisYear));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_relationships),reputation,pendingPrompt,const DeepCollectionEquality().hash(_performedGenericActionIdsThisYear),const DeepCollectionEquality().hash(_genericActionIdsThisYear));

@override
String toString() {
  return 'SocialState(relationships: $relationships, reputation: $reputation, pendingPrompt: $pendingPrompt, performedGenericActionIdsThisYear: $performedGenericActionIdsThisYear, genericActionIdsThisYear: $genericActionIdsThisYear)';
}


}

/// @nodoc
abstract mixin class _$SocialStateCopyWith<$Res> implements $SocialStateCopyWith<$Res> {
  factory _$SocialStateCopyWith(_SocialState value, $Res Function(_SocialState) _then) = __$SocialStateCopyWithImpl;
@override @useResult
$Res call({
 List<Relationship> relationships, int reputation, SocialPrompt? pendingPrompt, List<String> performedGenericActionIdsThisYear, List<String> genericActionIdsThisYear
});


@override $SocialPromptCopyWith<$Res>? get pendingPrompt;

}
/// @nodoc
class __$SocialStateCopyWithImpl<$Res>
    implements _$SocialStateCopyWith<$Res> {
  __$SocialStateCopyWithImpl(this._self, this._then);

  final _SocialState _self;
  final $Res Function(_SocialState) _then;

/// Create a copy of SocialState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? relationships = null,Object? reputation = null,Object? pendingPrompt = freezed,Object? performedGenericActionIdsThisYear = null,Object? genericActionIdsThisYear = null,}) {
  return _then(_SocialState(
relationships: null == relationships ? _self._relationships : relationships // ignore: cast_nullable_to_non_nullable
as List<Relationship>,reputation: null == reputation ? _self.reputation : reputation // ignore: cast_nullable_to_non_nullable
as int,pendingPrompt: freezed == pendingPrompt ? _self.pendingPrompt : pendingPrompt // ignore: cast_nullable_to_non_nullable
as SocialPrompt?,performedGenericActionIdsThisYear: null == performedGenericActionIdsThisYear ? _self._performedGenericActionIdsThisYear : performedGenericActionIdsThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,genericActionIdsThisYear: null == genericActionIdsThisYear ? _self._genericActionIdsThisYear : genericActionIdsThisYear // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of SocialState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SocialPromptCopyWith<$Res>? get pendingPrompt {
    if (_self.pendingPrompt == null) {
    return null;
  }

  return $SocialPromptCopyWith<$Res>(_self.pendingPrompt!, (value) {
    return _then(_self.copyWith(pendingPrompt: value));
  });
}
}

// dart format on
