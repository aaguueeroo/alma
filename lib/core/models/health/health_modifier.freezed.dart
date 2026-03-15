// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_modifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HealthModifier {

 String get source; double get physicalDelta; double get mentalDelta; double get stressDelta;
/// Create a copy of HealthModifier
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthModifierCopyWith<HealthModifier> get copyWith => _$HealthModifierCopyWithImpl<HealthModifier>(this as HealthModifier, _$identity);

  /// Serializes this HealthModifier to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthModifier&&(identical(other.source, source) || other.source == source)&&(identical(other.physicalDelta, physicalDelta) || other.physicalDelta == physicalDelta)&&(identical(other.mentalDelta, mentalDelta) || other.mentalDelta == mentalDelta)&&(identical(other.stressDelta, stressDelta) || other.stressDelta == stressDelta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,physicalDelta,mentalDelta,stressDelta);

@override
String toString() {
  return 'HealthModifier(source: $source, physicalDelta: $physicalDelta, mentalDelta: $mentalDelta, stressDelta: $stressDelta)';
}


}

/// @nodoc
abstract mixin class $HealthModifierCopyWith<$Res>  {
  factory $HealthModifierCopyWith(HealthModifier value, $Res Function(HealthModifier) _then) = _$HealthModifierCopyWithImpl;
@useResult
$Res call({
 String source, double physicalDelta, double mentalDelta, double stressDelta
});




}
/// @nodoc
class _$HealthModifierCopyWithImpl<$Res>
    implements $HealthModifierCopyWith<$Res> {
  _$HealthModifierCopyWithImpl(this._self, this._then);

  final HealthModifier _self;
  final $Res Function(HealthModifier) _then;

/// Create a copy of HealthModifier
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? source = null,Object? physicalDelta = null,Object? mentalDelta = null,Object? stressDelta = null,}) {
  return _then(_self.copyWith(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,physicalDelta: null == physicalDelta ? _self.physicalDelta : physicalDelta // ignore: cast_nullable_to_non_nullable
as double,mentalDelta: null == mentalDelta ? _self.mentalDelta : mentalDelta // ignore: cast_nullable_to_non_nullable
as double,stressDelta: null == stressDelta ? _self.stressDelta : stressDelta // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthModifier].
extension HealthModifierPatterns on HealthModifier {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthModifier value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthModifier() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthModifier value)  $default,){
final _that = this;
switch (_that) {
case _HealthModifier():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthModifier value)?  $default,){
final _that = this;
switch (_that) {
case _HealthModifier() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String source,  double physicalDelta,  double mentalDelta,  double stressDelta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthModifier() when $default != null:
return $default(_that.source,_that.physicalDelta,_that.mentalDelta,_that.stressDelta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String source,  double physicalDelta,  double mentalDelta,  double stressDelta)  $default,) {final _that = this;
switch (_that) {
case _HealthModifier():
return $default(_that.source,_that.physicalDelta,_that.mentalDelta,_that.stressDelta);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String source,  double physicalDelta,  double mentalDelta,  double stressDelta)?  $default,) {final _that = this;
switch (_that) {
case _HealthModifier() when $default != null:
return $default(_that.source,_that.physicalDelta,_that.mentalDelta,_that.stressDelta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthModifier implements HealthModifier {
  const _HealthModifier({required this.source, this.physicalDelta = 0.0, this.mentalDelta = 0.0, this.stressDelta = 0.0});
  factory _HealthModifier.fromJson(Map<String, dynamic> json) => _$HealthModifierFromJson(json);

@override final  String source;
@override@JsonKey() final  double physicalDelta;
@override@JsonKey() final  double mentalDelta;
@override@JsonKey() final  double stressDelta;

/// Create a copy of HealthModifier
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthModifierCopyWith<_HealthModifier> get copyWith => __$HealthModifierCopyWithImpl<_HealthModifier>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthModifierToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthModifier&&(identical(other.source, source) || other.source == source)&&(identical(other.physicalDelta, physicalDelta) || other.physicalDelta == physicalDelta)&&(identical(other.mentalDelta, mentalDelta) || other.mentalDelta == mentalDelta)&&(identical(other.stressDelta, stressDelta) || other.stressDelta == stressDelta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,physicalDelta,mentalDelta,stressDelta);

@override
String toString() {
  return 'HealthModifier(source: $source, physicalDelta: $physicalDelta, mentalDelta: $mentalDelta, stressDelta: $stressDelta)';
}


}

/// @nodoc
abstract mixin class _$HealthModifierCopyWith<$Res> implements $HealthModifierCopyWith<$Res> {
  factory _$HealthModifierCopyWith(_HealthModifier value, $Res Function(_HealthModifier) _then) = __$HealthModifierCopyWithImpl;
@override @useResult
$Res call({
 String source, double physicalDelta, double mentalDelta, double stressDelta
});




}
/// @nodoc
class __$HealthModifierCopyWithImpl<$Res>
    implements _$HealthModifierCopyWith<$Res> {
  __$HealthModifierCopyWithImpl(this._self, this._then);

  final _HealthModifier _self;
  final $Res Function(_HealthModifier) _then;

/// Create a copy of HealthModifier
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? source = null,Object? physicalDelta = null,Object? mentalDelta = null,Object? stressDelta = null,}) {
  return _then(_HealthModifier(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,physicalDelta: null == physicalDelta ? _self.physicalDelta : physicalDelta // ignore: cast_nullable_to_non_nullable
as double,mentalDelta: null == mentalDelta ? _self.mentalDelta : mentalDelta // ignore: cast_nullable_to_non_nullable
as double,stressDelta: null == stressDelta ? _self.stressDelta : stressDelta // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
