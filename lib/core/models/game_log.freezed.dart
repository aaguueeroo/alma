// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameLog {

 int get age; String get message; LogCategory get category; List<String> get tags;
/// Create a copy of GameLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameLogCopyWith<GameLog> get copyWith => _$GameLogCopyWithImpl<GameLog>(this as GameLog, _$identity);

  /// Serializes this GameLog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameLog&&(identical(other.age, age) || other.age == age)&&(identical(other.message, message) || other.message == message)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,age,message,category,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'GameLog(age: $age, message: $message, category: $category, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $GameLogCopyWith<$Res>  {
  factory $GameLogCopyWith(GameLog value, $Res Function(GameLog) _then) = _$GameLogCopyWithImpl;
@useResult
$Res call({
 int age, String message, LogCategory category, List<String> tags
});




}
/// @nodoc
class _$GameLogCopyWithImpl<$Res>
    implements $GameLogCopyWith<$Res> {
  _$GameLogCopyWithImpl(this._self, this._then);

  final GameLog _self;
  final $Res Function(GameLog) _then;

/// Create a copy of GameLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? age = null,Object? message = null,Object? category = null,Object? tags = null,}) {
  return _then(_self.copyWith(
age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as LogCategory,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [GameLog].
extension GameLogPatterns on GameLog {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameLog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameLog() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameLog value)  $default,){
final _that = this;
switch (_that) {
case _GameLog():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameLog value)?  $default,){
final _that = this;
switch (_that) {
case _GameLog() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int age,  String message,  LogCategory category,  List<String> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameLog() when $default != null:
return $default(_that.age,_that.message,_that.category,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int age,  String message,  LogCategory category,  List<String> tags)  $default,) {final _that = this;
switch (_that) {
case _GameLog():
return $default(_that.age,_that.message,_that.category,_that.tags);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int age,  String message,  LogCategory category,  List<String> tags)?  $default,) {final _that = this;
switch (_that) {
case _GameLog() when $default != null:
return $default(_that.age,_that.message,_that.category,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameLog implements GameLog {
  const _GameLog({required this.age, required this.message, required this.category, final  List<String> tags = const []}): _tags = tags;
  factory _GameLog.fromJson(Map<String, dynamic> json) => _$GameLogFromJson(json);

@override final  int age;
@override final  String message;
@override final  LogCategory category;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of GameLog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameLogCopyWith<_GameLog> get copyWith => __$GameLogCopyWithImpl<_GameLog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameLogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameLog&&(identical(other.age, age) || other.age == age)&&(identical(other.message, message) || other.message == message)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,age,message,category,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'GameLog(age: $age, message: $message, category: $category, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$GameLogCopyWith<$Res> implements $GameLogCopyWith<$Res> {
  factory _$GameLogCopyWith(_GameLog value, $Res Function(_GameLog) _then) = __$GameLogCopyWithImpl;
@override @useResult
$Res call({
 int age, String message, LogCategory category, List<String> tags
});




}
/// @nodoc
class __$GameLogCopyWithImpl<$Res>
    implements _$GameLogCopyWith<$Res> {
  __$GameLogCopyWithImpl(this._self, this._then);

  final _GameLog _self;
  final $Res Function(_GameLog) _then;

/// Create a copy of GameLog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? age = null,Object? message = null,Object? category = null,Object? tags = null,}) {
  return _then(_GameLog(
age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as LogCategory,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
