// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_predisposition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HealthPredisposition {

 double get mentalResilience; double get physicalResilience; double get fitnessGenetics; double get immuneSystem; double get recoverySpeed; double get addictionProneness;
/// Create a copy of HealthPredisposition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthPredispositionCopyWith<HealthPredisposition> get copyWith => _$HealthPredispositionCopyWithImpl<HealthPredisposition>(this as HealthPredisposition, _$identity);

  /// Serializes this HealthPredisposition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthPredisposition&&(identical(other.mentalResilience, mentalResilience) || other.mentalResilience == mentalResilience)&&(identical(other.physicalResilience, physicalResilience) || other.physicalResilience == physicalResilience)&&(identical(other.fitnessGenetics, fitnessGenetics) || other.fitnessGenetics == fitnessGenetics)&&(identical(other.immuneSystem, immuneSystem) || other.immuneSystem == immuneSystem)&&(identical(other.recoverySpeed, recoverySpeed) || other.recoverySpeed == recoverySpeed)&&(identical(other.addictionProneness, addictionProneness) || other.addictionProneness == addictionProneness));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mentalResilience,physicalResilience,fitnessGenetics,immuneSystem,recoverySpeed,addictionProneness);

@override
String toString() {
  return 'HealthPredisposition(mentalResilience: $mentalResilience, physicalResilience: $physicalResilience, fitnessGenetics: $fitnessGenetics, immuneSystem: $immuneSystem, recoverySpeed: $recoverySpeed, addictionProneness: $addictionProneness)';
}


}

/// @nodoc
abstract mixin class $HealthPredispositionCopyWith<$Res>  {
  factory $HealthPredispositionCopyWith(HealthPredisposition value, $Res Function(HealthPredisposition) _then) = _$HealthPredispositionCopyWithImpl;
@useResult
$Res call({
 double mentalResilience, double physicalResilience, double fitnessGenetics, double immuneSystem, double recoverySpeed, double addictionProneness
});




}
/// @nodoc
class _$HealthPredispositionCopyWithImpl<$Res>
    implements $HealthPredispositionCopyWith<$Res> {
  _$HealthPredispositionCopyWithImpl(this._self, this._then);

  final HealthPredisposition _self;
  final $Res Function(HealthPredisposition) _then;

/// Create a copy of HealthPredisposition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mentalResilience = null,Object? physicalResilience = null,Object? fitnessGenetics = null,Object? immuneSystem = null,Object? recoverySpeed = null,Object? addictionProneness = null,}) {
  return _then(_self.copyWith(
mentalResilience: null == mentalResilience ? _self.mentalResilience : mentalResilience // ignore: cast_nullable_to_non_nullable
as double,physicalResilience: null == physicalResilience ? _self.physicalResilience : physicalResilience // ignore: cast_nullable_to_non_nullable
as double,fitnessGenetics: null == fitnessGenetics ? _self.fitnessGenetics : fitnessGenetics // ignore: cast_nullable_to_non_nullable
as double,immuneSystem: null == immuneSystem ? _self.immuneSystem : immuneSystem // ignore: cast_nullable_to_non_nullable
as double,recoverySpeed: null == recoverySpeed ? _self.recoverySpeed : recoverySpeed // ignore: cast_nullable_to_non_nullable
as double,addictionProneness: null == addictionProneness ? _self.addictionProneness : addictionProneness // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthPredisposition].
extension HealthPredispositionPatterns on HealthPredisposition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthPredisposition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthPredisposition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthPredisposition value)  $default,){
final _that = this;
switch (_that) {
case _HealthPredisposition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthPredisposition value)?  $default,){
final _that = this;
switch (_that) {
case _HealthPredisposition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double mentalResilience,  double physicalResilience,  double fitnessGenetics,  double immuneSystem,  double recoverySpeed,  double addictionProneness)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthPredisposition() when $default != null:
return $default(_that.mentalResilience,_that.physicalResilience,_that.fitnessGenetics,_that.immuneSystem,_that.recoverySpeed,_that.addictionProneness);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double mentalResilience,  double physicalResilience,  double fitnessGenetics,  double immuneSystem,  double recoverySpeed,  double addictionProneness)  $default,) {final _that = this;
switch (_that) {
case _HealthPredisposition():
return $default(_that.mentalResilience,_that.physicalResilience,_that.fitnessGenetics,_that.immuneSystem,_that.recoverySpeed,_that.addictionProneness);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double mentalResilience,  double physicalResilience,  double fitnessGenetics,  double immuneSystem,  double recoverySpeed,  double addictionProneness)?  $default,) {final _that = this;
switch (_that) {
case _HealthPredisposition() when $default != null:
return $default(_that.mentalResilience,_that.physicalResilience,_that.fitnessGenetics,_that.immuneSystem,_that.recoverySpeed,_that.addictionProneness);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthPredisposition implements HealthPredisposition {
  const _HealthPredisposition({this.mentalResilience = 0.5, this.physicalResilience = 0.5, this.fitnessGenetics = 0.5, this.immuneSystem = 0.5, this.recoverySpeed = 0.5, this.addictionProneness = 0.5});
  factory _HealthPredisposition.fromJson(Map<String, dynamic> json) => _$HealthPredispositionFromJson(json);

@override@JsonKey() final  double mentalResilience;
@override@JsonKey() final  double physicalResilience;
@override@JsonKey() final  double fitnessGenetics;
@override@JsonKey() final  double immuneSystem;
@override@JsonKey() final  double recoverySpeed;
@override@JsonKey() final  double addictionProneness;

/// Create a copy of HealthPredisposition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthPredispositionCopyWith<_HealthPredisposition> get copyWith => __$HealthPredispositionCopyWithImpl<_HealthPredisposition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthPredispositionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthPredisposition&&(identical(other.mentalResilience, mentalResilience) || other.mentalResilience == mentalResilience)&&(identical(other.physicalResilience, physicalResilience) || other.physicalResilience == physicalResilience)&&(identical(other.fitnessGenetics, fitnessGenetics) || other.fitnessGenetics == fitnessGenetics)&&(identical(other.immuneSystem, immuneSystem) || other.immuneSystem == immuneSystem)&&(identical(other.recoverySpeed, recoverySpeed) || other.recoverySpeed == recoverySpeed)&&(identical(other.addictionProneness, addictionProneness) || other.addictionProneness == addictionProneness));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mentalResilience,physicalResilience,fitnessGenetics,immuneSystem,recoverySpeed,addictionProneness);

@override
String toString() {
  return 'HealthPredisposition(mentalResilience: $mentalResilience, physicalResilience: $physicalResilience, fitnessGenetics: $fitnessGenetics, immuneSystem: $immuneSystem, recoverySpeed: $recoverySpeed, addictionProneness: $addictionProneness)';
}


}

/// @nodoc
abstract mixin class _$HealthPredispositionCopyWith<$Res> implements $HealthPredispositionCopyWith<$Res> {
  factory _$HealthPredispositionCopyWith(_HealthPredisposition value, $Res Function(_HealthPredisposition) _then) = __$HealthPredispositionCopyWithImpl;
@override @useResult
$Res call({
 double mentalResilience, double physicalResilience, double fitnessGenetics, double immuneSystem, double recoverySpeed, double addictionProneness
});




}
/// @nodoc
class __$HealthPredispositionCopyWithImpl<$Res>
    implements _$HealthPredispositionCopyWith<$Res> {
  __$HealthPredispositionCopyWithImpl(this._self, this._then);

  final _HealthPredisposition _self;
  final $Res Function(_HealthPredisposition) _then;

/// Create a copy of HealthPredisposition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mentalResilience = null,Object? physicalResilience = null,Object? fitnessGenetics = null,Object? immuneSystem = null,Object? recoverySpeed = null,Object? addictionProneness = null,}) {
  return _then(_HealthPredisposition(
mentalResilience: null == mentalResilience ? _self.mentalResilience : mentalResilience // ignore: cast_nullable_to_non_nullable
as double,physicalResilience: null == physicalResilience ? _self.physicalResilience : physicalResilience // ignore: cast_nullable_to_non_nullable
as double,fitnessGenetics: null == fitnessGenetics ? _self.fitnessGenetics : fitnessGenetics // ignore: cast_nullable_to_non_nullable
as double,immuneSystem: null == immuneSystem ? _self.immuneSystem : immuneSystem // ignore: cast_nullable_to_non_nullable
as double,recoverySpeed: null == recoverySpeed ? _self.recoverySpeed : recoverySpeed // ignore: cast_nullable_to_non_nullable
as double,addictionProneness: null == addictionProneness ? _self.addictionProneness : addictionProneness // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
