// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hidden_metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HiddenMetrics {

 double get loyalty; double get compassion; double get integrity; double get ambition; double get courage; double get humility; double get discipline; double get curiosity;
/// Create a copy of HiddenMetrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HiddenMetricsCopyWith<HiddenMetrics> get copyWith => _$HiddenMetricsCopyWithImpl<HiddenMetrics>(this as HiddenMetrics, _$identity);

  /// Serializes this HiddenMetrics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HiddenMetrics&&(identical(other.loyalty, loyalty) || other.loyalty == loyalty)&&(identical(other.compassion, compassion) || other.compassion == compassion)&&(identical(other.integrity, integrity) || other.integrity == integrity)&&(identical(other.ambition, ambition) || other.ambition == ambition)&&(identical(other.courage, courage) || other.courage == courage)&&(identical(other.humility, humility) || other.humility == humility)&&(identical(other.discipline, discipline) || other.discipline == discipline)&&(identical(other.curiosity, curiosity) || other.curiosity == curiosity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,loyalty,compassion,integrity,ambition,courage,humility,discipline,curiosity);

@override
String toString() {
  return 'HiddenMetrics(loyalty: $loyalty, compassion: $compassion, integrity: $integrity, ambition: $ambition, courage: $courage, humility: $humility, discipline: $discipline, curiosity: $curiosity)';
}


}

/// @nodoc
abstract mixin class $HiddenMetricsCopyWith<$Res>  {
  factory $HiddenMetricsCopyWith(HiddenMetrics value, $Res Function(HiddenMetrics) _then) = _$HiddenMetricsCopyWithImpl;
@useResult
$Res call({
 double loyalty, double compassion, double integrity, double ambition, double courage, double humility, double discipline, double curiosity
});




}
/// @nodoc
class _$HiddenMetricsCopyWithImpl<$Res>
    implements $HiddenMetricsCopyWith<$Res> {
  _$HiddenMetricsCopyWithImpl(this._self, this._then);

  final HiddenMetrics _self;
  final $Res Function(HiddenMetrics) _then;

/// Create a copy of HiddenMetrics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loyalty = null,Object? compassion = null,Object? integrity = null,Object? ambition = null,Object? courage = null,Object? humility = null,Object? discipline = null,Object? curiosity = null,}) {
  return _then(_self.copyWith(
loyalty: null == loyalty ? _self.loyalty : loyalty // ignore: cast_nullable_to_non_nullable
as double,compassion: null == compassion ? _self.compassion : compassion // ignore: cast_nullable_to_non_nullable
as double,integrity: null == integrity ? _self.integrity : integrity // ignore: cast_nullable_to_non_nullable
as double,ambition: null == ambition ? _self.ambition : ambition // ignore: cast_nullable_to_non_nullable
as double,courage: null == courage ? _self.courage : courage // ignore: cast_nullable_to_non_nullable
as double,humility: null == humility ? _self.humility : humility // ignore: cast_nullable_to_non_nullable
as double,discipline: null == discipline ? _self.discipline : discipline // ignore: cast_nullable_to_non_nullable
as double,curiosity: null == curiosity ? _self.curiosity : curiosity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [HiddenMetrics].
extension HiddenMetricsPatterns on HiddenMetrics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HiddenMetrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HiddenMetrics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HiddenMetrics value)  $default,){
final _that = this;
switch (_that) {
case _HiddenMetrics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HiddenMetrics value)?  $default,){
final _that = this;
switch (_that) {
case _HiddenMetrics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double loyalty,  double compassion,  double integrity,  double ambition,  double courage,  double humility,  double discipline,  double curiosity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HiddenMetrics() when $default != null:
return $default(_that.loyalty,_that.compassion,_that.integrity,_that.ambition,_that.courage,_that.humility,_that.discipline,_that.curiosity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double loyalty,  double compassion,  double integrity,  double ambition,  double courage,  double humility,  double discipline,  double curiosity)  $default,) {final _that = this;
switch (_that) {
case _HiddenMetrics():
return $default(_that.loyalty,_that.compassion,_that.integrity,_that.ambition,_that.courage,_that.humility,_that.discipline,_that.curiosity);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double loyalty,  double compassion,  double integrity,  double ambition,  double courage,  double humility,  double discipline,  double curiosity)?  $default,) {final _that = this;
switch (_that) {
case _HiddenMetrics() when $default != null:
return $default(_that.loyalty,_that.compassion,_that.integrity,_that.ambition,_that.courage,_that.humility,_that.discipline,_that.curiosity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HiddenMetrics implements HiddenMetrics {
  const _HiddenMetrics({this.loyalty = 0.0, this.compassion = 0.0, this.integrity = 0.0, this.ambition = 0.0, this.courage = 0.0, this.humility = 0.0, this.discipline = 0.0, this.curiosity = 0.0});
  factory _HiddenMetrics.fromJson(Map<String, dynamic> json) => _$HiddenMetricsFromJson(json);

@override@JsonKey() final  double loyalty;
@override@JsonKey() final  double compassion;
@override@JsonKey() final  double integrity;
@override@JsonKey() final  double ambition;
@override@JsonKey() final  double courage;
@override@JsonKey() final  double humility;
@override@JsonKey() final  double discipline;
@override@JsonKey() final  double curiosity;

/// Create a copy of HiddenMetrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HiddenMetricsCopyWith<_HiddenMetrics> get copyWith => __$HiddenMetricsCopyWithImpl<_HiddenMetrics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HiddenMetricsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HiddenMetrics&&(identical(other.loyalty, loyalty) || other.loyalty == loyalty)&&(identical(other.compassion, compassion) || other.compassion == compassion)&&(identical(other.integrity, integrity) || other.integrity == integrity)&&(identical(other.ambition, ambition) || other.ambition == ambition)&&(identical(other.courage, courage) || other.courage == courage)&&(identical(other.humility, humility) || other.humility == humility)&&(identical(other.discipline, discipline) || other.discipline == discipline)&&(identical(other.curiosity, curiosity) || other.curiosity == curiosity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,loyalty,compassion,integrity,ambition,courage,humility,discipline,curiosity);

@override
String toString() {
  return 'HiddenMetrics(loyalty: $loyalty, compassion: $compassion, integrity: $integrity, ambition: $ambition, courage: $courage, humility: $humility, discipline: $discipline, curiosity: $curiosity)';
}


}

/// @nodoc
abstract mixin class _$HiddenMetricsCopyWith<$Res> implements $HiddenMetricsCopyWith<$Res> {
  factory _$HiddenMetricsCopyWith(_HiddenMetrics value, $Res Function(_HiddenMetrics) _then) = __$HiddenMetricsCopyWithImpl;
@override @useResult
$Res call({
 double loyalty, double compassion, double integrity, double ambition, double courage, double humility, double discipline, double curiosity
});




}
/// @nodoc
class __$HiddenMetricsCopyWithImpl<$Res>
    implements _$HiddenMetricsCopyWith<$Res> {
  __$HiddenMetricsCopyWithImpl(this._self, this._then);

  final _HiddenMetrics _self;
  final $Res Function(_HiddenMetrics) _then;

/// Create a copy of HiddenMetrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loyalty = null,Object? compassion = null,Object? integrity = null,Object? ambition = null,Object? courage = null,Object? humility = null,Object? discipline = null,Object? curiosity = null,}) {
  return _then(_HiddenMetrics(
loyalty: null == loyalty ? _self.loyalty : loyalty // ignore: cast_nullable_to_non_nullable
as double,compassion: null == compassion ? _self.compassion : compassion // ignore: cast_nullable_to_non_nullable
as double,integrity: null == integrity ? _self.integrity : integrity // ignore: cast_nullable_to_non_nullable
as double,ambition: null == ambition ? _self.ambition : ambition // ignore: cast_nullable_to_non_nullable
as double,courage: null == courage ? _self.courage : courage // ignore: cast_nullable_to_non_nullable
as double,humility: null == humility ? _self.humility : humility // ignore: cast_nullable_to_non_nullable
as double,discipline: null == discipline ? _self.discipline : discipline // ignore: cast_nullable_to_non_nullable
as double,curiosity: null == curiosity ? _self.curiosity : curiosity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
