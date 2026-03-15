// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_prompt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialPrompt {

 String get title; String get description; bool get canDecline;
/// Create a copy of SocialPrompt
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialPromptCopyWith<SocialPrompt> get copyWith => _$SocialPromptCopyWithImpl<SocialPrompt>(this as SocialPrompt, _$identity);

  /// Serializes this SocialPrompt to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialPrompt&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.canDecline, canDecline) || other.canDecline == canDecline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,canDecline);

@override
String toString() {
  return 'SocialPrompt(title: $title, description: $description, canDecline: $canDecline)';
}


}

/// @nodoc
abstract mixin class $SocialPromptCopyWith<$Res>  {
  factory $SocialPromptCopyWith(SocialPrompt value, $Res Function(SocialPrompt) _then) = _$SocialPromptCopyWithImpl;
@useResult
$Res call({
 String title, String description, bool canDecline
});




}
/// @nodoc
class _$SocialPromptCopyWithImpl<$Res>
    implements $SocialPromptCopyWith<$Res> {
  _$SocialPromptCopyWithImpl(this._self, this._then);

  final SocialPrompt _self;
  final $Res Function(SocialPrompt) _then;

/// Create a copy of SocialPrompt
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? canDecline = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,canDecline: null == canDecline ? _self.canDecline : canDecline // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialPrompt].
extension SocialPromptPatterns on SocialPrompt {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialPrompt value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialPrompt() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialPrompt value)  $default,){
final _that = this;
switch (_that) {
case _SocialPrompt():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialPrompt value)?  $default,){
final _that = this;
switch (_that) {
case _SocialPrompt() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description,  bool canDecline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialPrompt() when $default != null:
return $default(_that.title,_that.description,_that.canDecline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description,  bool canDecline)  $default,) {final _that = this;
switch (_that) {
case _SocialPrompt():
return $default(_that.title,_that.description,_that.canDecline);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description,  bool canDecline)?  $default,) {final _that = this;
switch (_that) {
case _SocialPrompt() when $default != null:
return $default(_that.title,_that.description,_that.canDecline);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocialPrompt implements SocialPrompt {
  const _SocialPrompt({required this.title, required this.description, this.canDecline = true});
  factory _SocialPrompt.fromJson(Map<String, dynamic> json) => _$SocialPromptFromJson(json);

@override final  String title;
@override final  String description;
@override@JsonKey() final  bool canDecline;

/// Create a copy of SocialPrompt
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialPromptCopyWith<_SocialPrompt> get copyWith => __$SocialPromptCopyWithImpl<_SocialPrompt>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialPromptToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialPrompt&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.canDecline, canDecline) || other.canDecline == canDecline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,canDecline);

@override
String toString() {
  return 'SocialPrompt(title: $title, description: $description, canDecline: $canDecline)';
}


}

/// @nodoc
abstract mixin class _$SocialPromptCopyWith<$Res> implements $SocialPromptCopyWith<$Res> {
  factory _$SocialPromptCopyWith(_SocialPrompt value, $Res Function(_SocialPrompt) _then) = __$SocialPromptCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, bool canDecline
});




}
/// @nodoc
class __$SocialPromptCopyWithImpl<$Res>
    implements _$SocialPromptCopyWith<$Res> {
  __$SocialPromptCopyWithImpl(this._self, this._then);

  final _SocialPrompt _self;
  final $Res Function(_SocialPrompt) _then;

/// Create a copy of SocialPrompt
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? canDecline = null,}) {
  return _then(_SocialPrompt(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,canDecline: null == canDecline ? _self.canDecline : canDecline // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
