// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_country_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EducationCountryConfig {

 String get countryCode; List<EducationLevelConfig> get levels;
/// Create a copy of EducationCountryConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EducationCountryConfigCopyWith<EducationCountryConfig> get copyWith => _$EducationCountryConfigCopyWithImpl<EducationCountryConfig>(this as EducationCountryConfig, _$identity);

  /// Serializes this EducationCountryConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EducationCountryConfig&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&const DeepCollectionEquality().equals(other.levels, levels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryCode,const DeepCollectionEquality().hash(levels));

@override
String toString() {
  return 'EducationCountryConfig(countryCode: $countryCode, levels: $levels)';
}


}

/// @nodoc
abstract mixin class $EducationCountryConfigCopyWith<$Res>  {
  factory $EducationCountryConfigCopyWith(EducationCountryConfig value, $Res Function(EducationCountryConfig) _then) = _$EducationCountryConfigCopyWithImpl;
@useResult
$Res call({
 String countryCode, List<EducationLevelConfig> levels
});




}
/// @nodoc
class _$EducationCountryConfigCopyWithImpl<$Res>
    implements $EducationCountryConfigCopyWith<$Res> {
  _$EducationCountryConfigCopyWithImpl(this._self, this._then);

  final EducationCountryConfig _self;
  final $Res Function(EducationCountryConfig) _then;

/// Create a copy of EducationCountryConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countryCode = null,Object? levels = null,}) {
  return _then(_self.copyWith(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,levels: null == levels ? _self.levels : levels // ignore: cast_nullable_to_non_nullable
as List<EducationLevelConfig>,
  ));
}

}


/// Adds pattern-matching-related methods to [EducationCountryConfig].
extension EducationCountryConfigPatterns on EducationCountryConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EducationCountryConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EducationCountryConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EducationCountryConfig value)  $default,){
final _that = this;
switch (_that) {
case _EducationCountryConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EducationCountryConfig value)?  $default,){
final _that = this;
switch (_that) {
case _EducationCountryConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String countryCode,  List<EducationLevelConfig> levels)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EducationCountryConfig() when $default != null:
return $default(_that.countryCode,_that.levels);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String countryCode,  List<EducationLevelConfig> levels)  $default,) {final _that = this;
switch (_that) {
case _EducationCountryConfig():
return $default(_that.countryCode,_that.levels);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String countryCode,  List<EducationLevelConfig> levels)?  $default,) {final _that = this;
switch (_that) {
case _EducationCountryConfig() when $default != null:
return $default(_that.countryCode,_that.levels);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EducationCountryConfig implements EducationCountryConfig {
  const _EducationCountryConfig({required this.countryCode, required final  List<EducationLevelConfig> levels}): _levels = levels;
  factory _EducationCountryConfig.fromJson(Map<String, dynamic> json) => _$EducationCountryConfigFromJson(json);

@override final  String countryCode;
 final  List<EducationLevelConfig> _levels;
@override List<EducationLevelConfig> get levels {
  if (_levels is EqualUnmodifiableListView) return _levels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_levels);
}


/// Create a copy of EducationCountryConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EducationCountryConfigCopyWith<_EducationCountryConfig> get copyWith => __$EducationCountryConfigCopyWithImpl<_EducationCountryConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EducationCountryConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EducationCountryConfig&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&const DeepCollectionEquality().equals(other._levels, _levels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,countryCode,const DeepCollectionEquality().hash(_levels));

@override
String toString() {
  return 'EducationCountryConfig(countryCode: $countryCode, levels: $levels)';
}


}

/// @nodoc
abstract mixin class _$EducationCountryConfigCopyWith<$Res> implements $EducationCountryConfigCopyWith<$Res> {
  factory _$EducationCountryConfigCopyWith(_EducationCountryConfig value, $Res Function(_EducationCountryConfig) _then) = __$EducationCountryConfigCopyWithImpl;
@override @useResult
$Res call({
 String countryCode, List<EducationLevelConfig> levels
});




}
/// @nodoc
class __$EducationCountryConfigCopyWithImpl<$Res>
    implements _$EducationCountryConfigCopyWith<$Res> {
  __$EducationCountryConfigCopyWithImpl(this._self, this._then);

  final _EducationCountryConfig _self;
  final $Res Function(_EducationCountryConfig) _then;

/// Create a copy of EducationCountryConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countryCode = null,Object? levels = null,}) {
  return _then(_EducationCountryConfig(
countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,levels: null == levels ? _self._levels : levels // ignore: cast_nullable_to_non_nullable
as List<EducationLevelConfig>,
  ));
}


}


/// @nodoc
mixin _$EducationLevelConfig {

 EducationLevel get level; int get defaultDuration; bool get isCompulsory; bool get autoStart; int? get startAge; bool get canRepeatYears; bool get canGetKickedOut; int get maxRepeats; int get passThreshold;
/// Create a copy of EducationLevelConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EducationLevelConfigCopyWith<EducationLevelConfig> get copyWith => _$EducationLevelConfigCopyWithImpl<EducationLevelConfig>(this as EducationLevelConfig, _$identity);

  /// Serializes this EducationLevelConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EducationLevelConfig&&(identical(other.level, level) || other.level == level)&&(identical(other.defaultDuration, defaultDuration) || other.defaultDuration == defaultDuration)&&(identical(other.isCompulsory, isCompulsory) || other.isCompulsory == isCompulsory)&&(identical(other.autoStart, autoStart) || other.autoStart == autoStart)&&(identical(other.startAge, startAge) || other.startAge == startAge)&&(identical(other.canRepeatYears, canRepeatYears) || other.canRepeatYears == canRepeatYears)&&(identical(other.canGetKickedOut, canGetKickedOut) || other.canGetKickedOut == canGetKickedOut)&&(identical(other.maxRepeats, maxRepeats) || other.maxRepeats == maxRepeats)&&(identical(other.passThreshold, passThreshold) || other.passThreshold == passThreshold));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,defaultDuration,isCompulsory,autoStart,startAge,canRepeatYears,canGetKickedOut,maxRepeats,passThreshold);

@override
String toString() {
  return 'EducationLevelConfig(level: $level, defaultDuration: $defaultDuration, isCompulsory: $isCompulsory, autoStart: $autoStart, startAge: $startAge, canRepeatYears: $canRepeatYears, canGetKickedOut: $canGetKickedOut, maxRepeats: $maxRepeats, passThreshold: $passThreshold)';
}


}

/// @nodoc
abstract mixin class $EducationLevelConfigCopyWith<$Res>  {
  factory $EducationLevelConfigCopyWith(EducationLevelConfig value, $Res Function(EducationLevelConfig) _then) = _$EducationLevelConfigCopyWithImpl;
@useResult
$Res call({
 EducationLevel level, int defaultDuration, bool isCompulsory, bool autoStart, int? startAge, bool canRepeatYears, bool canGetKickedOut, int maxRepeats, int passThreshold
});




}
/// @nodoc
class _$EducationLevelConfigCopyWithImpl<$Res>
    implements $EducationLevelConfigCopyWith<$Res> {
  _$EducationLevelConfigCopyWithImpl(this._self, this._then);

  final EducationLevelConfig _self;
  final $Res Function(EducationLevelConfig) _then;

/// Create a copy of EducationLevelConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? level = null,Object? defaultDuration = null,Object? isCompulsory = null,Object? autoStart = null,Object? startAge = freezed,Object? canRepeatYears = null,Object? canGetKickedOut = null,Object? maxRepeats = null,Object? passThreshold = null,}) {
  return _then(_self.copyWith(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as EducationLevel,defaultDuration: null == defaultDuration ? _self.defaultDuration : defaultDuration // ignore: cast_nullable_to_non_nullable
as int,isCompulsory: null == isCompulsory ? _self.isCompulsory : isCompulsory // ignore: cast_nullable_to_non_nullable
as bool,autoStart: null == autoStart ? _self.autoStart : autoStart // ignore: cast_nullable_to_non_nullable
as bool,startAge: freezed == startAge ? _self.startAge : startAge // ignore: cast_nullable_to_non_nullable
as int?,canRepeatYears: null == canRepeatYears ? _self.canRepeatYears : canRepeatYears // ignore: cast_nullable_to_non_nullable
as bool,canGetKickedOut: null == canGetKickedOut ? _self.canGetKickedOut : canGetKickedOut // ignore: cast_nullable_to_non_nullable
as bool,maxRepeats: null == maxRepeats ? _self.maxRepeats : maxRepeats // ignore: cast_nullable_to_non_nullable
as int,passThreshold: null == passThreshold ? _self.passThreshold : passThreshold // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [EducationLevelConfig].
extension EducationLevelConfigPatterns on EducationLevelConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EducationLevelConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EducationLevelConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EducationLevelConfig value)  $default,){
final _that = this;
switch (_that) {
case _EducationLevelConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EducationLevelConfig value)?  $default,){
final _that = this;
switch (_that) {
case _EducationLevelConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EducationLevel level,  int defaultDuration,  bool isCompulsory,  bool autoStart,  int? startAge,  bool canRepeatYears,  bool canGetKickedOut,  int maxRepeats,  int passThreshold)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EducationLevelConfig() when $default != null:
return $default(_that.level,_that.defaultDuration,_that.isCompulsory,_that.autoStart,_that.startAge,_that.canRepeatYears,_that.canGetKickedOut,_that.maxRepeats,_that.passThreshold);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EducationLevel level,  int defaultDuration,  bool isCompulsory,  bool autoStart,  int? startAge,  bool canRepeatYears,  bool canGetKickedOut,  int maxRepeats,  int passThreshold)  $default,) {final _that = this;
switch (_that) {
case _EducationLevelConfig():
return $default(_that.level,_that.defaultDuration,_that.isCompulsory,_that.autoStart,_that.startAge,_that.canRepeatYears,_that.canGetKickedOut,_that.maxRepeats,_that.passThreshold);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EducationLevel level,  int defaultDuration,  bool isCompulsory,  bool autoStart,  int? startAge,  bool canRepeatYears,  bool canGetKickedOut,  int maxRepeats,  int passThreshold)?  $default,) {final _that = this;
switch (_that) {
case _EducationLevelConfig() when $default != null:
return $default(_that.level,_that.defaultDuration,_that.isCompulsory,_that.autoStart,_that.startAge,_that.canRepeatYears,_that.canGetKickedOut,_that.maxRepeats,_that.passThreshold);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EducationLevelConfig implements EducationLevelConfig {
  const _EducationLevelConfig({required this.level, required this.defaultDuration, required this.isCompulsory, required this.autoStart, this.startAge, this.canRepeatYears = true, this.canGetKickedOut = true, this.maxRepeats = 2, this.passThreshold = 50});
  factory _EducationLevelConfig.fromJson(Map<String, dynamic> json) => _$EducationLevelConfigFromJson(json);

@override final  EducationLevel level;
@override final  int defaultDuration;
@override final  bool isCompulsory;
@override final  bool autoStart;
@override final  int? startAge;
@override@JsonKey() final  bool canRepeatYears;
@override@JsonKey() final  bool canGetKickedOut;
@override@JsonKey() final  int maxRepeats;
@override@JsonKey() final  int passThreshold;

/// Create a copy of EducationLevelConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EducationLevelConfigCopyWith<_EducationLevelConfig> get copyWith => __$EducationLevelConfigCopyWithImpl<_EducationLevelConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EducationLevelConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EducationLevelConfig&&(identical(other.level, level) || other.level == level)&&(identical(other.defaultDuration, defaultDuration) || other.defaultDuration == defaultDuration)&&(identical(other.isCompulsory, isCompulsory) || other.isCompulsory == isCompulsory)&&(identical(other.autoStart, autoStart) || other.autoStart == autoStart)&&(identical(other.startAge, startAge) || other.startAge == startAge)&&(identical(other.canRepeatYears, canRepeatYears) || other.canRepeatYears == canRepeatYears)&&(identical(other.canGetKickedOut, canGetKickedOut) || other.canGetKickedOut == canGetKickedOut)&&(identical(other.maxRepeats, maxRepeats) || other.maxRepeats == maxRepeats)&&(identical(other.passThreshold, passThreshold) || other.passThreshold == passThreshold));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,defaultDuration,isCompulsory,autoStart,startAge,canRepeatYears,canGetKickedOut,maxRepeats,passThreshold);

@override
String toString() {
  return 'EducationLevelConfig(level: $level, defaultDuration: $defaultDuration, isCompulsory: $isCompulsory, autoStart: $autoStart, startAge: $startAge, canRepeatYears: $canRepeatYears, canGetKickedOut: $canGetKickedOut, maxRepeats: $maxRepeats, passThreshold: $passThreshold)';
}


}

/// @nodoc
abstract mixin class _$EducationLevelConfigCopyWith<$Res> implements $EducationLevelConfigCopyWith<$Res> {
  factory _$EducationLevelConfigCopyWith(_EducationLevelConfig value, $Res Function(_EducationLevelConfig) _then) = __$EducationLevelConfigCopyWithImpl;
@override @useResult
$Res call({
 EducationLevel level, int defaultDuration, bool isCompulsory, bool autoStart, int? startAge, bool canRepeatYears, bool canGetKickedOut, int maxRepeats, int passThreshold
});




}
/// @nodoc
class __$EducationLevelConfigCopyWithImpl<$Res>
    implements _$EducationLevelConfigCopyWith<$Res> {
  __$EducationLevelConfigCopyWithImpl(this._self, this._then);

  final _EducationLevelConfig _self;
  final $Res Function(_EducationLevelConfig) _then;

/// Create a copy of EducationLevelConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? level = null,Object? defaultDuration = null,Object? isCompulsory = null,Object? autoStart = null,Object? startAge = freezed,Object? canRepeatYears = null,Object? canGetKickedOut = null,Object? maxRepeats = null,Object? passThreshold = null,}) {
  return _then(_EducationLevelConfig(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as EducationLevel,defaultDuration: null == defaultDuration ? _self.defaultDuration : defaultDuration // ignore: cast_nullable_to_non_nullable
as int,isCompulsory: null == isCompulsory ? _self.isCompulsory : isCompulsory // ignore: cast_nullable_to_non_nullable
as bool,autoStart: null == autoStart ? _self.autoStart : autoStart // ignore: cast_nullable_to_non_nullable
as bool,startAge: freezed == startAge ? _self.startAge : startAge // ignore: cast_nullable_to_non_nullable
as int?,canRepeatYears: null == canRepeatYears ? _self.canRepeatYears : canRepeatYears // ignore: cast_nullable_to_non_nullable
as bool,canGetKickedOut: null == canGetKickedOut ? _self.canGetKickedOut : canGetKickedOut // ignore: cast_nullable_to_non_nullable
as bool,maxRepeats: null == maxRepeats ? _self.maxRepeats : maxRepeats // ignore: cast_nullable_to_non_nullable
as int,passThreshold: null == passThreshold ? _self.passThreshold : passThreshold // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
