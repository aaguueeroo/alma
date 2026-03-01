// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_country_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialCountryConfig {

 String get country; double get meetChanceSchool; double get meetChanceWork; double get meetChanceNeighborhood; double get meetChanceRandom; double get familyImportanceModifier; double get friendshipDecayModifier;
/// Create a copy of SocialCountryConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialCountryConfigCopyWith<SocialCountryConfig> get copyWith => _$SocialCountryConfigCopyWithImpl<SocialCountryConfig>(this as SocialCountryConfig, _$identity);

  /// Serializes this SocialCountryConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialCountryConfig&&(identical(other.country, country) || other.country == country)&&(identical(other.meetChanceSchool, meetChanceSchool) || other.meetChanceSchool == meetChanceSchool)&&(identical(other.meetChanceWork, meetChanceWork) || other.meetChanceWork == meetChanceWork)&&(identical(other.meetChanceNeighborhood, meetChanceNeighborhood) || other.meetChanceNeighborhood == meetChanceNeighborhood)&&(identical(other.meetChanceRandom, meetChanceRandom) || other.meetChanceRandom == meetChanceRandom)&&(identical(other.familyImportanceModifier, familyImportanceModifier) || other.familyImportanceModifier == familyImportanceModifier)&&(identical(other.friendshipDecayModifier, friendshipDecayModifier) || other.friendshipDecayModifier == friendshipDecayModifier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,meetChanceSchool,meetChanceWork,meetChanceNeighborhood,meetChanceRandom,familyImportanceModifier,friendshipDecayModifier);

@override
String toString() {
  return 'SocialCountryConfig(country: $country, meetChanceSchool: $meetChanceSchool, meetChanceWork: $meetChanceWork, meetChanceNeighborhood: $meetChanceNeighborhood, meetChanceRandom: $meetChanceRandom, familyImportanceModifier: $familyImportanceModifier, friendshipDecayModifier: $friendshipDecayModifier)';
}


}

/// @nodoc
abstract mixin class $SocialCountryConfigCopyWith<$Res>  {
  factory $SocialCountryConfigCopyWith(SocialCountryConfig value, $Res Function(SocialCountryConfig) _then) = _$SocialCountryConfigCopyWithImpl;
@useResult
$Res call({
 String country, double meetChanceSchool, double meetChanceWork, double meetChanceNeighborhood, double meetChanceRandom, double familyImportanceModifier, double friendshipDecayModifier
});




}
/// @nodoc
class _$SocialCountryConfigCopyWithImpl<$Res>
    implements $SocialCountryConfigCopyWith<$Res> {
  _$SocialCountryConfigCopyWithImpl(this._self, this._then);

  final SocialCountryConfig _self;
  final $Res Function(SocialCountryConfig) _then;

/// Create a copy of SocialCountryConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? country = null,Object? meetChanceSchool = null,Object? meetChanceWork = null,Object? meetChanceNeighborhood = null,Object? meetChanceRandom = null,Object? familyImportanceModifier = null,Object? friendshipDecayModifier = null,}) {
  return _then(_self.copyWith(
country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,meetChanceSchool: null == meetChanceSchool ? _self.meetChanceSchool : meetChanceSchool // ignore: cast_nullable_to_non_nullable
as double,meetChanceWork: null == meetChanceWork ? _self.meetChanceWork : meetChanceWork // ignore: cast_nullable_to_non_nullable
as double,meetChanceNeighborhood: null == meetChanceNeighborhood ? _self.meetChanceNeighborhood : meetChanceNeighborhood // ignore: cast_nullable_to_non_nullable
as double,meetChanceRandom: null == meetChanceRandom ? _self.meetChanceRandom : meetChanceRandom // ignore: cast_nullable_to_non_nullable
as double,familyImportanceModifier: null == familyImportanceModifier ? _self.familyImportanceModifier : familyImportanceModifier // ignore: cast_nullable_to_non_nullable
as double,friendshipDecayModifier: null == friendshipDecayModifier ? _self.friendshipDecayModifier : friendshipDecayModifier // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialCountryConfig].
extension SocialCountryConfigPatterns on SocialCountryConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialCountryConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialCountryConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialCountryConfig value)  $default,){
final _that = this;
switch (_that) {
case _SocialCountryConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialCountryConfig value)?  $default,){
final _that = this;
switch (_that) {
case _SocialCountryConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String country,  double meetChanceSchool,  double meetChanceWork,  double meetChanceNeighborhood,  double meetChanceRandom,  double familyImportanceModifier,  double friendshipDecayModifier)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialCountryConfig() when $default != null:
return $default(_that.country,_that.meetChanceSchool,_that.meetChanceWork,_that.meetChanceNeighborhood,_that.meetChanceRandom,_that.familyImportanceModifier,_that.friendshipDecayModifier);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String country,  double meetChanceSchool,  double meetChanceWork,  double meetChanceNeighborhood,  double meetChanceRandom,  double familyImportanceModifier,  double friendshipDecayModifier)  $default,) {final _that = this;
switch (_that) {
case _SocialCountryConfig():
return $default(_that.country,_that.meetChanceSchool,_that.meetChanceWork,_that.meetChanceNeighborhood,_that.meetChanceRandom,_that.familyImportanceModifier,_that.friendshipDecayModifier);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String country,  double meetChanceSchool,  double meetChanceWork,  double meetChanceNeighborhood,  double meetChanceRandom,  double familyImportanceModifier,  double friendshipDecayModifier)?  $default,) {final _that = this;
switch (_that) {
case _SocialCountryConfig() when $default != null:
return $default(_that.country,_that.meetChanceSchool,_that.meetChanceWork,_that.meetChanceNeighborhood,_that.meetChanceRandom,_that.familyImportanceModifier,_that.friendshipDecayModifier);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocialCountryConfig implements SocialCountryConfig {
  const _SocialCountryConfig({required this.country, this.meetChanceSchool = 0.4, this.meetChanceWork = 0.3, this.meetChanceNeighborhood = 0.2, this.meetChanceRandom = 0.1, this.familyImportanceModifier = 1.0, this.friendshipDecayModifier = 1.0});
  factory _SocialCountryConfig.fromJson(Map<String, dynamic> json) => _$SocialCountryConfigFromJson(json);

@override final  String country;
@override@JsonKey() final  double meetChanceSchool;
@override@JsonKey() final  double meetChanceWork;
@override@JsonKey() final  double meetChanceNeighborhood;
@override@JsonKey() final  double meetChanceRandom;
@override@JsonKey() final  double familyImportanceModifier;
@override@JsonKey() final  double friendshipDecayModifier;

/// Create a copy of SocialCountryConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialCountryConfigCopyWith<_SocialCountryConfig> get copyWith => __$SocialCountryConfigCopyWithImpl<_SocialCountryConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialCountryConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialCountryConfig&&(identical(other.country, country) || other.country == country)&&(identical(other.meetChanceSchool, meetChanceSchool) || other.meetChanceSchool == meetChanceSchool)&&(identical(other.meetChanceWork, meetChanceWork) || other.meetChanceWork == meetChanceWork)&&(identical(other.meetChanceNeighborhood, meetChanceNeighborhood) || other.meetChanceNeighborhood == meetChanceNeighborhood)&&(identical(other.meetChanceRandom, meetChanceRandom) || other.meetChanceRandom == meetChanceRandom)&&(identical(other.familyImportanceModifier, familyImportanceModifier) || other.familyImportanceModifier == familyImportanceModifier)&&(identical(other.friendshipDecayModifier, friendshipDecayModifier) || other.friendshipDecayModifier == friendshipDecayModifier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,meetChanceSchool,meetChanceWork,meetChanceNeighborhood,meetChanceRandom,familyImportanceModifier,friendshipDecayModifier);

@override
String toString() {
  return 'SocialCountryConfig(country: $country, meetChanceSchool: $meetChanceSchool, meetChanceWork: $meetChanceWork, meetChanceNeighborhood: $meetChanceNeighborhood, meetChanceRandom: $meetChanceRandom, familyImportanceModifier: $familyImportanceModifier, friendshipDecayModifier: $friendshipDecayModifier)';
}


}

/// @nodoc
abstract mixin class _$SocialCountryConfigCopyWith<$Res> implements $SocialCountryConfigCopyWith<$Res> {
  factory _$SocialCountryConfigCopyWith(_SocialCountryConfig value, $Res Function(_SocialCountryConfig) _then) = __$SocialCountryConfigCopyWithImpl;
@override @useResult
$Res call({
 String country, double meetChanceSchool, double meetChanceWork, double meetChanceNeighborhood, double meetChanceRandom, double familyImportanceModifier, double friendshipDecayModifier
});




}
/// @nodoc
class __$SocialCountryConfigCopyWithImpl<$Res>
    implements _$SocialCountryConfigCopyWith<$Res> {
  __$SocialCountryConfigCopyWithImpl(this._self, this._then);

  final _SocialCountryConfig _self;
  final $Res Function(_SocialCountryConfig) _then;

/// Create a copy of SocialCountryConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? country = null,Object? meetChanceSchool = null,Object? meetChanceWork = null,Object? meetChanceNeighborhood = null,Object? meetChanceRandom = null,Object? familyImportanceModifier = null,Object? friendshipDecayModifier = null,}) {
  return _then(_SocialCountryConfig(
country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,meetChanceSchool: null == meetChanceSchool ? _self.meetChanceSchool : meetChanceSchool // ignore: cast_nullable_to_non_nullable
as double,meetChanceWork: null == meetChanceWork ? _self.meetChanceWork : meetChanceWork // ignore: cast_nullable_to_non_nullable
as double,meetChanceNeighborhood: null == meetChanceNeighborhood ? _self.meetChanceNeighborhood : meetChanceNeighborhood // ignore: cast_nullable_to_non_nullable
as double,meetChanceRandom: null == meetChanceRandom ? _self.meetChanceRandom : meetChanceRandom // ignore: cast_nullable_to_non_nullable
as double,familyImportanceModifier: null == familyImportanceModifier ? _self.familyImportanceModifier : familyImportanceModifier // ignore: cast_nullable_to_non_nullable
as double,friendshipDecayModifier: null == friendshipDecayModifier ? _self.friendshipDecayModifier : friendshipDecayModifier // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
