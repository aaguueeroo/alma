// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NameRepository {

 String get country; NameSet get firstNames; List<String> get lastNames;
/// Create a copy of NameRepository
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameRepositoryCopyWith<NameRepository> get copyWith => _$NameRepositoryCopyWithImpl<NameRepository>(this as NameRepository, _$identity);

  /// Serializes this NameRepository to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NameRepository&&(identical(other.country, country) || other.country == country)&&(identical(other.firstNames, firstNames) || other.firstNames == firstNames)&&const DeepCollectionEquality().equals(other.lastNames, lastNames));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,firstNames,const DeepCollectionEquality().hash(lastNames));

@override
String toString() {
  return 'NameRepository(country: $country, firstNames: $firstNames, lastNames: $lastNames)';
}


}

/// @nodoc
abstract mixin class $NameRepositoryCopyWith<$Res>  {
  factory $NameRepositoryCopyWith(NameRepository value, $Res Function(NameRepository) _then) = _$NameRepositoryCopyWithImpl;
@useResult
$Res call({
 String country, NameSet firstNames, List<String> lastNames
});


$NameSetCopyWith<$Res> get firstNames;

}
/// @nodoc
class _$NameRepositoryCopyWithImpl<$Res>
    implements $NameRepositoryCopyWith<$Res> {
  _$NameRepositoryCopyWithImpl(this._self, this._then);

  final NameRepository _self;
  final $Res Function(NameRepository) _then;

/// Create a copy of NameRepository
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? country = null,Object? firstNames = null,Object? lastNames = null,}) {
  return _then(_self.copyWith(
country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,firstNames: null == firstNames ? _self.firstNames : firstNames // ignore: cast_nullable_to_non_nullable
as NameSet,lastNames: null == lastNames ? _self.lastNames : lastNames // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of NameRepository
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameSetCopyWith<$Res> get firstNames {
  
  return $NameSetCopyWith<$Res>(_self.firstNames, (value) {
    return _then(_self.copyWith(firstNames: value));
  });
}
}


/// Adds pattern-matching-related methods to [NameRepository].
extension NameRepositoryPatterns on NameRepository {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NameRepository value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NameRepository() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NameRepository value)  $default,){
final _that = this;
switch (_that) {
case _NameRepository():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NameRepository value)?  $default,){
final _that = this;
switch (_that) {
case _NameRepository() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String country,  NameSet firstNames,  List<String> lastNames)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NameRepository() when $default != null:
return $default(_that.country,_that.firstNames,_that.lastNames);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String country,  NameSet firstNames,  List<String> lastNames)  $default,) {final _that = this;
switch (_that) {
case _NameRepository():
return $default(_that.country,_that.firstNames,_that.lastNames);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String country,  NameSet firstNames,  List<String> lastNames)?  $default,) {final _that = this;
switch (_that) {
case _NameRepository() when $default != null:
return $default(_that.country,_that.firstNames,_that.lastNames);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NameRepository implements NameRepository {
  const _NameRepository({required this.country, required this.firstNames, required final  List<String> lastNames}): _lastNames = lastNames;
  factory _NameRepository.fromJson(Map<String, dynamic> json) => _$NameRepositoryFromJson(json);

@override final  String country;
@override final  NameSet firstNames;
 final  List<String> _lastNames;
@override List<String> get lastNames {
  if (_lastNames is EqualUnmodifiableListView) return _lastNames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lastNames);
}


/// Create a copy of NameRepository
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameRepositoryCopyWith<_NameRepository> get copyWith => __$NameRepositoryCopyWithImpl<_NameRepository>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NameRepositoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NameRepository&&(identical(other.country, country) || other.country == country)&&(identical(other.firstNames, firstNames) || other.firstNames == firstNames)&&const DeepCollectionEquality().equals(other._lastNames, _lastNames));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,firstNames,const DeepCollectionEquality().hash(_lastNames));

@override
String toString() {
  return 'NameRepository(country: $country, firstNames: $firstNames, lastNames: $lastNames)';
}


}

/// @nodoc
abstract mixin class _$NameRepositoryCopyWith<$Res> implements $NameRepositoryCopyWith<$Res> {
  factory _$NameRepositoryCopyWith(_NameRepository value, $Res Function(_NameRepository) _then) = __$NameRepositoryCopyWithImpl;
@override @useResult
$Res call({
 String country, NameSet firstNames, List<String> lastNames
});


@override $NameSetCopyWith<$Res> get firstNames;

}
/// @nodoc
class __$NameRepositoryCopyWithImpl<$Res>
    implements _$NameRepositoryCopyWith<$Res> {
  __$NameRepositoryCopyWithImpl(this._self, this._then);

  final _NameRepository _self;
  final $Res Function(_NameRepository) _then;

/// Create a copy of NameRepository
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? country = null,Object? firstNames = null,Object? lastNames = null,}) {
  return _then(_NameRepository(
country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,firstNames: null == firstNames ? _self.firstNames : firstNames // ignore: cast_nullable_to_non_nullable
as NameSet,lastNames: null == lastNames ? _self._lastNames : lastNames // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of NameRepository
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameSetCopyWith<$Res> get firstNames {
  
  return $NameSetCopyWith<$Res>(_self.firstNames, (value) {
    return _then(_self.copyWith(firstNames: value));
  });
}
}


/// @nodoc
mixin _$NameSet {

 List<String> get male; List<String> get female;
/// Create a copy of NameSet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameSetCopyWith<NameSet> get copyWith => _$NameSetCopyWithImpl<NameSet>(this as NameSet, _$identity);

  /// Serializes this NameSet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NameSet&&const DeepCollectionEquality().equals(other.male, male)&&const DeepCollectionEquality().equals(other.female, female));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(male),const DeepCollectionEquality().hash(female));

@override
String toString() {
  return 'NameSet(male: $male, female: $female)';
}


}

/// @nodoc
abstract mixin class $NameSetCopyWith<$Res>  {
  factory $NameSetCopyWith(NameSet value, $Res Function(NameSet) _then) = _$NameSetCopyWithImpl;
@useResult
$Res call({
 List<String> male, List<String> female
});




}
/// @nodoc
class _$NameSetCopyWithImpl<$Res>
    implements $NameSetCopyWith<$Res> {
  _$NameSetCopyWithImpl(this._self, this._then);

  final NameSet _self;
  final $Res Function(NameSet) _then;

/// Create a copy of NameSet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? male = null,Object? female = null,}) {
  return _then(_self.copyWith(
male: null == male ? _self.male : male // ignore: cast_nullable_to_non_nullable
as List<String>,female: null == female ? _self.female : female // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [NameSet].
extension NameSetPatterns on NameSet {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NameSet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NameSet() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NameSet value)  $default,){
final _that = this;
switch (_that) {
case _NameSet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NameSet value)?  $default,){
final _that = this;
switch (_that) {
case _NameSet() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> male,  List<String> female)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NameSet() when $default != null:
return $default(_that.male,_that.female);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> male,  List<String> female)  $default,) {final _that = this;
switch (_that) {
case _NameSet():
return $default(_that.male,_that.female);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> male,  List<String> female)?  $default,) {final _that = this;
switch (_that) {
case _NameSet() when $default != null:
return $default(_that.male,_that.female);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NameSet implements NameSet {
  const _NameSet({required final  List<String> male, required final  List<String> female}): _male = male,_female = female;
  factory _NameSet.fromJson(Map<String, dynamic> json) => _$NameSetFromJson(json);

 final  List<String> _male;
@override List<String> get male {
  if (_male is EqualUnmodifiableListView) return _male;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_male);
}

 final  List<String> _female;
@override List<String> get female {
  if (_female is EqualUnmodifiableListView) return _female;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_female);
}


/// Create a copy of NameSet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameSetCopyWith<_NameSet> get copyWith => __$NameSetCopyWithImpl<_NameSet>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NameSetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NameSet&&const DeepCollectionEquality().equals(other._male, _male)&&const DeepCollectionEquality().equals(other._female, _female));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_male),const DeepCollectionEquality().hash(_female));

@override
String toString() {
  return 'NameSet(male: $male, female: $female)';
}


}

/// @nodoc
abstract mixin class _$NameSetCopyWith<$Res> implements $NameSetCopyWith<$Res> {
  factory _$NameSetCopyWith(_NameSet value, $Res Function(_NameSet) _then) = __$NameSetCopyWithImpl;
@override @useResult
$Res call({
 List<String> male, List<String> female
});




}
/// @nodoc
class __$NameSetCopyWithImpl<$Res>
    implements _$NameSetCopyWith<$Res> {
  __$NameSetCopyWithImpl(this._self, this._then);

  final _NameSet _self;
  final $Res Function(_NameSet) _then;

/// Create a copy of NameSet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? male = null,Object? female = null,}) {
  return _then(_NameSet(
male: null == male ? _self._male : male // ignore: cast_nullable_to_non_nullable
as List<String>,female: null == female ? _self._female : female // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
