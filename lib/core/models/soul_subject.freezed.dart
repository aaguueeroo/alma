// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'soul_subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SoulSubject {

 SoulSubjectType get type; int get progress; bool get isPassed;
/// Create a copy of SoulSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SoulSubjectCopyWith<SoulSubject> get copyWith => _$SoulSubjectCopyWithImpl<SoulSubject>(this as SoulSubject, _$identity);

  /// Serializes this SoulSubject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SoulSubject&&(identical(other.type, type) || other.type == type)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.isPassed, isPassed) || other.isPassed == isPassed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,progress,isPassed);

@override
String toString() {
  return 'SoulSubject(type: $type, progress: $progress, isPassed: $isPassed)';
}


}

/// @nodoc
abstract mixin class $SoulSubjectCopyWith<$Res>  {
  factory $SoulSubjectCopyWith(SoulSubject value, $Res Function(SoulSubject) _then) = _$SoulSubjectCopyWithImpl;
@useResult
$Res call({
 SoulSubjectType type, int progress, bool isPassed
});




}
/// @nodoc
class _$SoulSubjectCopyWithImpl<$Res>
    implements $SoulSubjectCopyWith<$Res> {
  _$SoulSubjectCopyWithImpl(this._self, this._then);

  final SoulSubject _self;
  final $Res Function(SoulSubject) _then;

/// Create a copy of SoulSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? progress = null,Object? isPassed = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SoulSubjectType,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as int,isPassed: null == isPassed ? _self.isPassed : isPassed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SoulSubject].
extension SoulSubjectPatterns on SoulSubject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SoulSubject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SoulSubject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SoulSubject value)  $default,){
final _that = this;
switch (_that) {
case _SoulSubject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SoulSubject value)?  $default,){
final _that = this;
switch (_that) {
case _SoulSubject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SoulSubjectType type,  int progress,  bool isPassed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SoulSubject() when $default != null:
return $default(_that.type,_that.progress,_that.isPassed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SoulSubjectType type,  int progress,  bool isPassed)  $default,) {final _that = this;
switch (_that) {
case _SoulSubject():
return $default(_that.type,_that.progress,_that.isPassed);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SoulSubjectType type,  int progress,  bool isPassed)?  $default,) {final _that = this;
switch (_that) {
case _SoulSubject() when $default != null:
return $default(_that.type,_that.progress,_that.isPassed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SoulSubject implements SoulSubject {
  const _SoulSubject({required this.type, this.progress = 0, this.isPassed = false});
  factory _SoulSubject.fromJson(Map<String, dynamic> json) => _$SoulSubjectFromJson(json);

@override final  SoulSubjectType type;
@override@JsonKey() final  int progress;
@override@JsonKey() final  bool isPassed;

/// Create a copy of SoulSubject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SoulSubjectCopyWith<_SoulSubject> get copyWith => __$SoulSubjectCopyWithImpl<_SoulSubject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SoulSubjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SoulSubject&&(identical(other.type, type) || other.type == type)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.isPassed, isPassed) || other.isPassed == isPassed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,progress,isPassed);

@override
String toString() {
  return 'SoulSubject(type: $type, progress: $progress, isPassed: $isPassed)';
}


}

/// @nodoc
abstract mixin class _$SoulSubjectCopyWith<$Res> implements $SoulSubjectCopyWith<$Res> {
  factory _$SoulSubjectCopyWith(_SoulSubject value, $Res Function(_SoulSubject) _then) = __$SoulSubjectCopyWithImpl;
@override @useResult
$Res call({
 SoulSubjectType type, int progress, bool isPassed
});




}
/// @nodoc
class __$SoulSubjectCopyWithImpl<$Res>
    implements _$SoulSubjectCopyWith<$Res> {
  __$SoulSubjectCopyWithImpl(this._self, this._then);

  final _SoulSubject _self;
  final $Res Function(_SoulSubject) _then;

/// Create a copy of SoulSubject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? progress = null,Object? isPassed = null,}) {
  return _then(_SoulSubject(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SoulSubjectType,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as int,isPassed: null == isPassed ? _self.isPassed : isPassed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
