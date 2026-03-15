// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_action_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SocialActionResult {

 List<String> get acceptedNpcIds; List<String> get rejectedNpcIds; String get resultDialogText; bool get hadTargets;
/// Create a copy of SocialActionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialActionResultCopyWith<SocialActionResult> get copyWith => _$SocialActionResultCopyWithImpl<SocialActionResult>(this as SocialActionResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialActionResult&&const DeepCollectionEquality().equals(other.acceptedNpcIds, acceptedNpcIds)&&const DeepCollectionEquality().equals(other.rejectedNpcIds, rejectedNpcIds)&&(identical(other.resultDialogText, resultDialogText) || other.resultDialogText == resultDialogText)&&(identical(other.hadTargets, hadTargets) || other.hadTargets == hadTargets));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(acceptedNpcIds),const DeepCollectionEquality().hash(rejectedNpcIds),resultDialogText,hadTargets);

@override
String toString() {
  return 'SocialActionResult(acceptedNpcIds: $acceptedNpcIds, rejectedNpcIds: $rejectedNpcIds, resultDialogText: $resultDialogText, hadTargets: $hadTargets)';
}


}

/// @nodoc
abstract mixin class $SocialActionResultCopyWith<$Res>  {
  factory $SocialActionResultCopyWith(SocialActionResult value, $Res Function(SocialActionResult) _then) = _$SocialActionResultCopyWithImpl;
@useResult
$Res call({
 List<String> acceptedNpcIds, List<String> rejectedNpcIds, String resultDialogText, bool hadTargets
});




}
/// @nodoc
class _$SocialActionResultCopyWithImpl<$Res>
    implements $SocialActionResultCopyWith<$Res> {
  _$SocialActionResultCopyWithImpl(this._self, this._then);

  final SocialActionResult _self;
  final $Res Function(SocialActionResult) _then;

/// Create a copy of SocialActionResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? acceptedNpcIds = null,Object? rejectedNpcIds = null,Object? resultDialogText = null,Object? hadTargets = null,}) {
  return _then(_self.copyWith(
acceptedNpcIds: null == acceptedNpcIds ? _self.acceptedNpcIds : acceptedNpcIds // ignore: cast_nullable_to_non_nullable
as List<String>,rejectedNpcIds: null == rejectedNpcIds ? _self.rejectedNpcIds : rejectedNpcIds // ignore: cast_nullable_to_non_nullable
as List<String>,resultDialogText: null == resultDialogText ? _self.resultDialogText : resultDialogText // ignore: cast_nullable_to_non_nullable
as String,hadTargets: null == hadTargets ? _self.hadTargets : hadTargets // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialActionResult].
extension SocialActionResultPatterns on SocialActionResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialActionResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialActionResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialActionResult value)  $default,){
final _that = this;
switch (_that) {
case _SocialActionResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialActionResult value)?  $default,){
final _that = this;
switch (_that) {
case _SocialActionResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> acceptedNpcIds,  List<String> rejectedNpcIds,  String resultDialogText,  bool hadTargets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialActionResult() when $default != null:
return $default(_that.acceptedNpcIds,_that.rejectedNpcIds,_that.resultDialogText,_that.hadTargets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> acceptedNpcIds,  List<String> rejectedNpcIds,  String resultDialogText,  bool hadTargets)  $default,) {final _that = this;
switch (_that) {
case _SocialActionResult():
return $default(_that.acceptedNpcIds,_that.rejectedNpcIds,_that.resultDialogText,_that.hadTargets);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> acceptedNpcIds,  List<String> rejectedNpcIds,  String resultDialogText,  bool hadTargets)?  $default,) {final _that = this;
switch (_that) {
case _SocialActionResult() when $default != null:
return $default(_that.acceptedNpcIds,_that.rejectedNpcIds,_that.resultDialogText,_that.hadTargets);case _:
  return null;

}
}

}

/// @nodoc


class _SocialActionResult implements SocialActionResult {
  const _SocialActionResult({required final  List<String> acceptedNpcIds, required final  List<String> rejectedNpcIds, required this.resultDialogText, this.hadTargets = false}): _acceptedNpcIds = acceptedNpcIds,_rejectedNpcIds = rejectedNpcIds;
  

 final  List<String> _acceptedNpcIds;
@override List<String> get acceptedNpcIds {
  if (_acceptedNpcIds is EqualUnmodifiableListView) return _acceptedNpcIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_acceptedNpcIds);
}

 final  List<String> _rejectedNpcIds;
@override List<String> get rejectedNpcIds {
  if (_rejectedNpcIds is EqualUnmodifiableListView) return _rejectedNpcIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rejectedNpcIds);
}

@override final  String resultDialogText;
@override@JsonKey() final  bool hadTargets;

/// Create a copy of SocialActionResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialActionResultCopyWith<_SocialActionResult> get copyWith => __$SocialActionResultCopyWithImpl<_SocialActionResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialActionResult&&const DeepCollectionEquality().equals(other._acceptedNpcIds, _acceptedNpcIds)&&const DeepCollectionEquality().equals(other._rejectedNpcIds, _rejectedNpcIds)&&(identical(other.resultDialogText, resultDialogText) || other.resultDialogText == resultDialogText)&&(identical(other.hadTargets, hadTargets) || other.hadTargets == hadTargets));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_acceptedNpcIds),const DeepCollectionEquality().hash(_rejectedNpcIds),resultDialogText,hadTargets);

@override
String toString() {
  return 'SocialActionResult(acceptedNpcIds: $acceptedNpcIds, rejectedNpcIds: $rejectedNpcIds, resultDialogText: $resultDialogText, hadTargets: $hadTargets)';
}


}

/// @nodoc
abstract mixin class _$SocialActionResultCopyWith<$Res> implements $SocialActionResultCopyWith<$Res> {
  factory _$SocialActionResultCopyWith(_SocialActionResult value, $Res Function(_SocialActionResult) _then) = __$SocialActionResultCopyWithImpl;
@override @useResult
$Res call({
 List<String> acceptedNpcIds, List<String> rejectedNpcIds, String resultDialogText, bool hadTargets
});




}
/// @nodoc
class __$SocialActionResultCopyWithImpl<$Res>
    implements _$SocialActionResultCopyWith<$Res> {
  __$SocialActionResultCopyWithImpl(this._self, this._then);

  final _SocialActionResult _self;
  final $Res Function(_SocialActionResult) _then;

/// Create a copy of SocialActionResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? acceptedNpcIds = null,Object? rejectedNpcIds = null,Object? resultDialogText = null,Object? hadTargets = null,}) {
  return _then(_SocialActionResult(
acceptedNpcIds: null == acceptedNpcIds ? _self._acceptedNpcIds : acceptedNpcIds // ignore: cast_nullable_to_non_nullable
as List<String>,rejectedNpcIds: null == rejectedNpcIds ? _self._rejectedNpcIds : rejectedNpcIds // ignore: cast_nullable_to_non_nullable
as List<String>,resultDialogText: null == resultDialogText ? _self.resultDialogText : resultDialogText // ignore: cast_nullable_to_non_nullable
as String,hadTargets: null == hadTargets ? _self.hadTargets : hadTargets // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
