// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symptom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Symptom {

 String get id; String get name; String get description; String get conditionId; int? get appearedAtAge;
/// Create a copy of Symptom
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SymptomCopyWith<Symptom> get copyWith => _$SymptomCopyWithImpl<Symptom>(this as Symptom, _$identity);

  /// Serializes this Symptom to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Symptom&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.conditionId, conditionId) || other.conditionId == conditionId)&&(identical(other.appearedAtAge, appearedAtAge) || other.appearedAtAge == appearedAtAge));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,conditionId,appearedAtAge);

@override
String toString() {
  return 'Symptom(id: $id, name: $name, description: $description, conditionId: $conditionId, appearedAtAge: $appearedAtAge)';
}


}

/// @nodoc
abstract mixin class $SymptomCopyWith<$Res>  {
  factory $SymptomCopyWith(Symptom value, $Res Function(Symptom) _then) = _$SymptomCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, String conditionId, int? appearedAtAge
});




}
/// @nodoc
class _$SymptomCopyWithImpl<$Res>
    implements $SymptomCopyWith<$Res> {
  _$SymptomCopyWithImpl(this._self, this._then);

  final Symptom _self;
  final $Res Function(Symptom) _then;

/// Create a copy of Symptom
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? conditionId = null,Object? appearedAtAge = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,conditionId: null == conditionId ? _self.conditionId : conditionId // ignore: cast_nullable_to_non_nullable
as String,appearedAtAge: freezed == appearedAtAge ? _self.appearedAtAge : appearedAtAge // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Symptom].
extension SymptomPatterns on Symptom {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Symptom value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Symptom() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Symptom value)  $default,){
final _that = this;
switch (_that) {
case _Symptom():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Symptom value)?  $default,){
final _that = this;
switch (_that) {
case _Symptom() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String conditionId,  int? appearedAtAge)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Symptom() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.conditionId,_that.appearedAtAge);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String conditionId,  int? appearedAtAge)  $default,) {final _that = this;
switch (_that) {
case _Symptom():
return $default(_that.id,_that.name,_that.description,_that.conditionId,_that.appearedAtAge);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  String conditionId,  int? appearedAtAge)?  $default,) {final _that = this;
switch (_that) {
case _Symptom() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.conditionId,_that.appearedAtAge);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Symptom implements Symptom {
  const _Symptom({required this.id, required this.name, required this.description, required this.conditionId, this.appearedAtAge});
  factory _Symptom.fromJson(Map<String, dynamic> json) => _$SymptomFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
@override final  String conditionId;
@override final  int? appearedAtAge;

/// Create a copy of Symptom
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SymptomCopyWith<_Symptom> get copyWith => __$SymptomCopyWithImpl<_Symptom>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SymptomToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Symptom&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.conditionId, conditionId) || other.conditionId == conditionId)&&(identical(other.appearedAtAge, appearedAtAge) || other.appearedAtAge == appearedAtAge));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,conditionId,appearedAtAge);

@override
String toString() {
  return 'Symptom(id: $id, name: $name, description: $description, conditionId: $conditionId, appearedAtAge: $appearedAtAge)';
}


}

/// @nodoc
abstract mixin class _$SymptomCopyWith<$Res> implements $SymptomCopyWith<$Res> {
  factory _$SymptomCopyWith(_Symptom value, $Res Function(_Symptom) _then) = __$SymptomCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, String conditionId, int? appearedAtAge
});




}
/// @nodoc
class __$SymptomCopyWithImpl<$Res>
    implements _$SymptomCopyWith<$Res> {
  __$SymptomCopyWithImpl(this._self, this._then);

  final _Symptom _self;
  final $Res Function(_Symptom) _then;

/// Create a copy of Symptom
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? conditionId = null,Object? appearedAtAge = freezed,}) {
  return _then(_Symptom(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,conditionId: null == conditionId ? _self.conditionId : conditionId // ignore: cast_nullable_to_non_nullable
as String,appearedAtAge: freezed == appearedAtAge ? _self.appearedAtAge : appearedAtAge // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
