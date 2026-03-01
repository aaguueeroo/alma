// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moral_impact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoralImpact {

 SoulSubjectType get axis; double get weight; double get contextMultiplier; int get year; bool get wasDifficult;
/// Create a copy of MoralImpact
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoralImpactCopyWith<MoralImpact> get copyWith => _$MoralImpactCopyWithImpl<MoralImpact>(this as MoralImpact, _$identity);

  /// Serializes this MoralImpact to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoralImpact&&(identical(other.axis, axis) || other.axis == axis)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.contextMultiplier, contextMultiplier) || other.contextMultiplier == contextMultiplier)&&(identical(other.year, year) || other.year == year)&&(identical(other.wasDifficult, wasDifficult) || other.wasDifficult == wasDifficult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,axis,weight,contextMultiplier,year,wasDifficult);

@override
String toString() {
  return 'MoralImpact(axis: $axis, weight: $weight, contextMultiplier: $contextMultiplier, year: $year, wasDifficult: $wasDifficult)';
}


}

/// @nodoc
abstract mixin class $MoralImpactCopyWith<$Res>  {
  factory $MoralImpactCopyWith(MoralImpact value, $Res Function(MoralImpact) _then) = _$MoralImpactCopyWithImpl;
@useResult
$Res call({
 SoulSubjectType axis, double weight, double contextMultiplier, int year, bool wasDifficult
});




}
/// @nodoc
class _$MoralImpactCopyWithImpl<$Res>
    implements $MoralImpactCopyWith<$Res> {
  _$MoralImpactCopyWithImpl(this._self, this._then);

  final MoralImpact _self;
  final $Res Function(MoralImpact) _then;

/// Create a copy of MoralImpact
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? axis = null,Object? weight = null,Object? contextMultiplier = null,Object? year = null,Object? wasDifficult = null,}) {
  return _then(_self.copyWith(
axis: null == axis ? _self.axis : axis // ignore: cast_nullable_to_non_nullable
as SoulSubjectType,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,contextMultiplier: null == contextMultiplier ? _self.contextMultiplier : contextMultiplier // ignore: cast_nullable_to_non_nullable
as double,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,wasDifficult: null == wasDifficult ? _self.wasDifficult : wasDifficult // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MoralImpact].
extension MoralImpactPatterns on MoralImpact {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoralImpact value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoralImpact() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoralImpact value)  $default,){
final _that = this;
switch (_that) {
case _MoralImpact():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoralImpact value)?  $default,){
final _that = this;
switch (_that) {
case _MoralImpact() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SoulSubjectType axis,  double weight,  double contextMultiplier,  int year,  bool wasDifficult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoralImpact() when $default != null:
return $default(_that.axis,_that.weight,_that.contextMultiplier,_that.year,_that.wasDifficult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SoulSubjectType axis,  double weight,  double contextMultiplier,  int year,  bool wasDifficult)  $default,) {final _that = this;
switch (_that) {
case _MoralImpact():
return $default(_that.axis,_that.weight,_that.contextMultiplier,_that.year,_that.wasDifficult);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SoulSubjectType axis,  double weight,  double contextMultiplier,  int year,  bool wasDifficult)?  $default,) {final _that = this;
switch (_that) {
case _MoralImpact() when $default != null:
return $default(_that.axis,_that.weight,_that.contextMultiplier,_that.year,_that.wasDifficult);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoralImpact extends MoralImpact {
  const _MoralImpact({required this.axis, required this.weight, this.contextMultiplier = 1.0, required this.year, this.wasDifficult = false}): super._();
  factory _MoralImpact.fromJson(Map<String, dynamic> json) => _$MoralImpactFromJson(json);

@override final  SoulSubjectType axis;
@override final  double weight;
@override@JsonKey() final  double contextMultiplier;
@override final  int year;
@override@JsonKey() final  bool wasDifficult;

/// Create a copy of MoralImpact
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoralImpactCopyWith<_MoralImpact> get copyWith => __$MoralImpactCopyWithImpl<_MoralImpact>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoralImpactToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoralImpact&&(identical(other.axis, axis) || other.axis == axis)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.contextMultiplier, contextMultiplier) || other.contextMultiplier == contextMultiplier)&&(identical(other.year, year) || other.year == year)&&(identical(other.wasDifficult, wasDifficult) || other.wasDifficult == wasDifficult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,axis,weight,contextMultiplier,year,wasDifficult);

@override
String toString() {
  return 'MoralImpact(axis: $axis, weight: $weight, contextMultiplier: $contextMultiplier, year: $year, wasDifficult: $wasDifficult)';
}


}

/// @nodoc
abstract mixin class _$MoralImpactCopyWith<$Res> implements $MoralImpactCopyWith<$Res> {
  factory _$MoralImpactCopyWith(_MoralImpact value, $Res Function(_MoralImpact) _then) = __$MoralImpactCopyWithImpl;
@override @useResult
$Res call({
 SoulSubjectType axis, double weight, double contextMultiplier, int year, bool wasDifficult
});




}
/// @nodoc
class __$MoralImpactCopyWithImpl<$Res>
    implements _$MoralImpactCopyWith<$Res> {
  __$MoralImpactCopyWithImpl(this._self, this._then);

  final _MoralImpact _self;
  final $Res Function(_MoralImpact) _then;

/// Create a copy of MoralImpact
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? axis = null,Object? weight = null,Object? contextMultiplier = null,Object? year = null,Object? wasDifficult = null,}) {
  return _then(_MoralImpact(
axis: null == axis ? _self.axis : axis // ignore: cast_nullable_to_non_nullable
as SoulSubjectType,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,contextMultiplier: null == contextMultiplier ? _self.contextMultiplier : contextMultiplier // ignore: cast_nullable_to_non_nullable
as double,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,wasDifficult: null == wasDifficult ? _self.wasDifficult : wasDifficult // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$MoralImpactTemplate {

 SoulSubjectType get axis; double get weight; double get contextMultiplier; bool get wasDifficult;
/// Create a copy of MoralImpactTemplate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoralImpactTemplateCopyWith<MoralImpactTemplate> get copyWith => _$MoralImpactTemplateCopyWithImpl<MoralImpactTemplate>(this as MoralImpactTemplate, _$identity);

  /// Serializes this MoralImpactTemplate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoralImpactTemplate&&(identical(other.axis, axis) || other.axis == axis)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.contextMultiplier, contextMultiplier) || other.contextMultiplier == contextMultiplier)&&(identical(other.wasDifficult, wasDifficult) || other.wasDifficult == wasDifficult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,axis,weight,contextMultiplier,wasDifficult);

@override
String toString() {
  return 'MoralImpactTemplate(axis: $axis, weight: $weight, contextMultiplier: $contextMultiplier, wasDifficult: $wasDifficult)';
}


}

/// @nodoc
abstract mixin class $MoralImpactTemplateCopyWith<$Res>  {
  factory $MoralImpactTemplateCopyWith(MoralImpactTemplate value, $Res Function(MoralImpactTemplate) _then) = _$MoralImpactTemplateCopyWithImpl;
@useResult
$Res call({
 SoulSubjectType axis, double weight, double contextMultiplier, bool wasDifficult
});




}
/// @nodoc
class _$MoralImpactTemplateCopyWithImpl<$Res>
    implements $MoralImpactTemplateCopyWith<$Res> {
  _$MoralImpactTemplateCopyWithImpl(this._self, this._then);

  final MoralImpactTemplate _self;
  final $Res Function(MoralImpactTemplate) _then;

/// Create a copy of MoralImpactTemplate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? axis = null,Object? weight = null,Object? contextMultiplier = null,Object? wasDifficult = null,}) {
  return _then(_self.copyWith(
axis: null == axis ? _self.axis : axis // ignore: cast_nullable_to_non_nullable
as SoulSubjectType,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,contextMultiplier: null == contextMultiplier ? _self.contextMultiplier : contextMultiplier // ignore: cast_nullable_to_non_nullable
as double,wasDifficult: null == wasDifficult ? _self.wasDifficult : wasDifficult // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MoralImpactTemplate].
extension MoralImpactTemplatePatterns on MoralImpactTemplate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoralImpactTemplate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoralImpactTemplate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoralImpactTemplate value)  $default,){
final _that = this;
switch (_that) {
case _MoralImpactTemplate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoralImpactTemplate value)?  $default,){
final _that = this;
switch (_that) {
case _MoralImpactTemplate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SoulSubjectType axis,  double weight,  double contextMultiplier,  bool wasDifficult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoralImpactTemplate() when $default != null:
return $default(_that.axis,_that.weight,_that.contextMultiplier,_that.wasDifficult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SoulSubjectType axis,  double weight,  double contextMultiplier,  bool wasDifficult)  $default,) {final _that = this;
switch (_that) {
case _MoralImpactTemplate():
return $default(_that.axis,_that.weight,_that.contextMultiplier,_that.wasDifficult);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SoulSubjectType axis,  double weight,  double contextMultiplier,  bool wasDifficult)?  $default,) {final _that = this;
switch (_that) {
case _MoralImpactTemplate() when $default != null:
return $default(_that.axis,_that.weight,_that.contextMultiplier,_that.wasDifficult);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoralImpactTemplate implements MoralImpactTemplate {
  const _MoralImpactTemplate({required this.axis, required this.weight, this.contextMultiplier = 1.0, this.wasDifficult = false});
  factory _MoralImpactTemplate.fromJson(Map<String, dynamic> json) => _$MoralImpactTemplateFromJson(json);

@override final  SoulSubjectType axis;
@override final  double weight;
@override@JsonKey() final  double contextMultiplier;
@override@JsonKey() final  bool wasDifficult;

/// Create a copy of MoralImpactTemplate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoralImpactTemplateCopyWith<_MoralImpactTemplate> get copyWith => __$MoralImpactTemplateCopyWithImpl<_MoralImpactTemplate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoralImpactTemplateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoralImpactTemplate&&(identical(other.axis, axis) || other.axis == axis)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.contextMultiplier, contextMultiplier) || other.contextMultiplier == contextMultiplier)&&(identical(other.wasDifficult, wasDifficult) || other.wasDifficult == wasDifficult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,axis,weight,contextMultiplier,wasDifficult);

@override
String toString() {
  return 'MoralImpactTemplate(axis: $axis, weight: $weight, contextMultiplier: $contextMultiplier, wasDifficult: $wasDifficult)';
}


}

/// @nodoc
abstract mixin class _$MoralImpactTemplateCopyWith<$Res> implements $MoralImpactTemplateCopyWith<$Res> {
  factory _$MoralImpactTemplateCopyWith(_MoralImpactTemplate value, $Res Function(_MoralImpactTemplate) _then) = __$MoralImpactTemplateCopyWithImpl;
@override @useResult
$Res call({
 SoulSubjectType axis, double weight, double contextMultiplier, bool wasDifficult
});




}
/// @nodoc
class __$MoralImpactTemplateCopyWithImpl<$Res>
    implements _$MoralImpactTemplateCopyWith<$Res> {
  __$MoralImpactTemplateCopyWithImpl(this._self, this._then);

  final _MoralImpactTemplate _self;
  final $Res Function(_MoralImpactTemplate) _then;

/// Create a copy of MoralImpactTemplate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? axis = null,Object? weight = null,Object? contextMultiplier = null,Object? wasDifficult = null,}) {
  return _then(_MoralImpactTemplate(
axis: null == axis ? _self.axis : axis // ignore: cast_nullable_to_non_nullable
as SoulSubjectType,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,contextMultiplier: null == contextMultiplier ? _self.contextMultiplier : contextMultiplier // ignore: cast_nullable_to_non_nullable
as double,wasDifficult: null == wasDifficult ? _self.wasDifficult : wasDifficult // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$MoralImpactSummary {

 Map<SoulSubjectType, double> get totalWeightedImpactByAxis; double get diversityScore; double get consistencyScore; int get difficultActionCount; double get difficultWeightedSum;
/// Create a copy of MoralImpactSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoralImpactSummaryCopyWith<MoralImpactSummary> get copyWith => _$MoralImpactSummaryCopyWithImpl<MoralImpactSummary>(this as MoralImpactSummary, _$identity);

  /// Serializes this MoralImpactSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoralImpactSummary&&const DeepCollectionEquality().equals(other.totalWeightedImpactByAxis, totalWeightedImpactByAxis)&&(identical(other.diversityScore, diversityScore) || other.diversityScore == diversityScore)&&(identical(other.consistencyScore, consistencyScore) || other.consistencyScore == consistencyScore)&&(identical(other.difficultActionCount, difficultActionCount) || other.difficultActionCount == difficultActionCount)&&(identical(other.difficultWeightedSum, difficultWeightedSum) || other.difficultWeightedSum == difficultWeightedSum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(totalWeightedImpactByAxis),diversityScore,consistencyScore,difficultActionCount,difficultWeightedSum);

@override
String toString() {
  return 'MoralImpactSummary(totalWeightedImpactByAxis: $totalWeightedImpactByAxis, diversityScore: $diversityScore, consistencyScore: $consistencyScore, difficultActionCount: $difficultActionCount, difficultWeightedSum: $difficultWeightedSum)';
}


}

/// @nodoc
abstract mixin class $MoralImpactSummaryCopyWith<$Res>  {
  factory $MoralImpactSummaryCopyWith(MoralImpactSummary value, $Res Function(MoralImpactSummary) _then) = _$MoralImpactSummaryCopyWithImpl;
@useResult
$Res call({
 Map<SoulSubjectType, double> totalWeightedImpactByAxis, double diversityScore, double consistencyScore, int difficultActionCount, double difficultWeightedSum
});




}
/// @nodoc
class _$MoralImpactSummaryCopyWithImpl<$Res>
    implements $MoralImpactSummaryCopyWith<$Res> {
  _$MoralImpactSummaryCopyWithImpl(this._self, this._then);

  final MoralImpactSummary _self;
  final $Res Function(MoralImpactSummary) _then;

/// Create a copy of MoralImpactSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalWeightedImpactByAxis = null,Object? diversityScore = null,Object? consistencyScore = null,Object? difficultActionCount = null,Object? difficultWeightedSum = null,}) {
  return _then(_self.copyWith(
totalWeightedImpactByAxis: null == totalWeightedImpactByAxis ? _self.totalWeightedImpactByAxis : totalWeightedImpactByAxis // ignore: cast_nullable_to_non_nullable
as Map<SoulSubjectType, double>,diversityScore: null == diversityScore ? _self.diversityScore : diversityScore // ignore: cast_nullable_to_non_nullable
as double,consistencyScore: null == consistencyScore ? _self.consistencyScore : consistencyScore // ignore: cast_nullable_to_non_nullable
as double,difficultActionCount: null == difficultActionCount ? _self.difficultActionCount : difficultActionCount // ignore: cast_nullable_to_non_nullable
as int,difficultWeightedSum: null == difficultWeightedSum ? _self.difficultWeightedSum : difficultWeightedSum // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [MoralImpactSummary].
extension MoralImpactSummaryPatterns on MoralImpactSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoralImpactSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoralImpactSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoralImpactSummary value)  $default,){
final _that = this;
switch (_that) {
case _MoralImpactSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoralImpactSummary value)?  $default,){
final _that = this;
switch (_that) {
case _MoralImpactSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<SoulSubjectType, double> totalWeightedImpactByAxis,  double diversityScore,  double consistencyScore,  int difficultActionCount,  double difficultWeightedSum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoralImpactSummary() when $default != null:
return $default(_that.totalWeightedImpactByAxis,_that.diversityScore,_that.consistencyScore,_that.difficultActionCount,_that.difficultWeightedSum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<SoulSubjectType, double> totalWeightedImpactByAxis,  double diversityScore,  double consistencyScore,  int difficultActionCount,  double difficultWeightedSum)  $default,) {final _that = this;
switch (_that) {
case _MoralImpactSummary():
return $default(_that.totalWeightedImpactByAxis,_that.diversityScore,_that.consistencyScore,_that.difficultActionCount,_that.difficultWeightedSum);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<SoulSubjectType, double> totalWeightedImpactByAxis,  double diversityScore,  double consistencyScore,  int difficultActionCount,  double difficultWeightedSum)?  $default,) {final _that = this;
switch (_that) {
case _MoralImpactSummary() when $default != null:
return $default(_that.totalWeightedImpactByAxis,_that.diversityScore,_that.consistencyScore,_that.difficultActionCount,_that.difficultWeightedSum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoralImpactSummary extends MoralImpactSummary {
  const _MoralImpactSummary({required final  Map<SoulSubjectType, double> totalWeightedImpactByAxis, required this.diversityScore, required this.consistencyScore, required this.difficultActionCount, required this.difficultWeightedSum}): _totalWeightedImpactByAxis = totalWeightedImpactByAxis,super._();
  factory _MoralImpactSummary.fromJson(Map<String, dynamic> json) => _$MoralImpactSummaryFromJson(json);

 final  Map<SoulSubjectType, double> _totalWeightedImpactByAxis;
@override Map<SoulSubjectType, double> get totalWeightedImpactByAxis {
  if (_totalWeightedImpactByAxis is EqualUnmodifiableMapView) return _totalWeightedImpactByAxis;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_totalWeightedImpactByAxis);
}

@override final  double diversityScore;
@override final  double consistencyScore;
@override final  int difficultActionCount;
@override final  double difficultWeightedSum;

/// Create a copy of MoralImpactSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoralImpactSummaryCopyWith<_MoralImpactSummary> get copyWith => __$MoralImpactSummaryCopyWithImpl<_MoralImpactSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoralImpactSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoralImpactSummary&&const DeepCollectionEquality().equals(other._totalWeightedImpactByAxis, _totalWeightedImpactByAxis)&&(identical(other.diversityScore, diversityScore) || other.diversityScore == diversityScore)&&(identical(other.consistencyScore, consistencyScore) || other.consistencyScore == consistencyScore)&&(identical(other.difficultActionCount, difficultActionCount) || other.difficultActionCount == difficultActionCount)&&(identical(other.difficultWeightedSum, difficultWeightedSum) || other.difficultWeightedSum == difficultWeightedSum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_totalWeightedImpactByAxis),diversityScore,consistencyScore,difficultActionCount,difficultWeightedSum);

@override
String toString() {
  return 'MoralImpactSummary(totalWeightedImpactByAxis: $totalWeightedImpactByAxis, diversityScore: $diversityScore, consistencyScore: $consistencyScore, difficultActionCount: $difficultActionCount, difficultWeightedSum: $difficultWeightedSum)';
}


}

/// @nodoc
abstract mixin class _$MoralImpactSummaryCopyWith<$Res> implements $MoralImpactSummaryCopyWith<$Res> {
  factory _$MoralImpactSummaryCopyWith(_MoralImpactSummary value, $Res Function(_MoralImpactSummary) _then) = __$MoralImpactSummaryCopyWithImpl;
@override @useResult
$Res call({
 Map<SoulSubjectType, double> totalWeightedImpactByAxis, double diversityScore, double consistencyScore, int difficultActionCount, double difficultWeightedSum
});




}
/// @nodoc
class __$MoralImpactSummaryCopyWithImpl<$Res>
    implements _$MoralImpactSummaryCopyWith<$Res> {
  __$MoralImpactSummaryCopyWithImpl(this._self, this._then);

  final _MoralImpactSummary _self;
  final $Res Function(_MoralImpactSummary) _then;

/// Create a copy of MoralImpactSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalWeightedImpactByAxis = null,Object? diversityScore = null,Object? consistencyScore = null,Object? difficultActionCount = null,Object? difficultWeightedSum = null,}) {
  return _then(_MoralImpactSummary(
totalWeightedImpactByAxis: null == totalWeightedImpactByAxis ? _self._totalWeightedImpactByAxis : totalWeightedImpactByAxis // ignore: cast_nullable_to_non_nullable
as Map<SoulSubjectType, double>,diversityScore: null == diversityScore ? _self.diversityScore : diversityScore // ignore: cast_nullable_to_non_nullable
as double,consistencyScore: null == consistencyScore ? _self.consistencyScore : consistencyScore // ignore: cast_nullable_to_non_nullable
as double,difficultActionCount: null == difficultActionCount ? _self.difficultActionCount : difficultActionCount // ignore: cast_nullable_to_non_nullable
as int,difficultWeightedSum: null == difficultWeightedSum ? _self.difficultWeightedSum : difficultWeightedSum // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
