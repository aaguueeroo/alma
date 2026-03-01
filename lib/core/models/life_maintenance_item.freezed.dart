// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'life_maintenance_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LifeMaintenanceItem {

 String get id; String get name;/// Default hours per day for this activity. Yearly days = (hoursPerDay * 365) / 24.
 double get hoursPerDay;
/// Create a copy of LifeMaintenanceItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LifeMaintenanceItemCopyWith<LifeMaintenanceItem> get copyWith => _$LifeMaintenanceItemCopyWithImpl<LifeMaintenanceItem>(this as LifeMaintenanceItem, _$identity);

  /// Serializes this LifeMaintenanceItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LifeMaintenanceItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.hoursPerDay, hoursPerDay) || other.hoursPerDay == hoursPerDay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,hoursPerDay);

@override
String toString() {
  return 'LifeMaintenanceItem(id: $id, name: $name, hoursPerDay: $hoursPerDay)';
}


}

/// @nodoc
abstract mixin class $LifeMaintenanceItemCopyWith<$Res>  {
  factory $LifeMaintenanceItemCopyWith(LifeMaintenanceItem value, $Res Function(LifeMaintenanceItem) _then) = _$LifeMaintenanceItemCopyWithImpl;
@useResult
$Res call({
 String id, String name, double hoursPerDay
});




}
/// @nodoc
class _$LifeMaintenanceItemCopyWithImpl<$Res>
    implements $LifeMaintenanceItemCopyWith<$Res> {
  _$LifeMaintenanceItemCopyWithImpl(this._self, this._then);

  final LifeMaintenanceItem _self;
  final $Res Function(LifeMaintenanceItem) _then;

/// Create a copy of LifeMaintenanceItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? hoursPerDay = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,hoursPerDay: null == hoursPerDay ? _self.hoursPerDay : hoursPerDay // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [LifeMaintenanceItem].
extension LifeMaintenanceItemPatterns on LifeMaintenanceItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LifeMaintenanceItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LifeMaintenanceItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LifeMaintenanceItem value)  $default,){
final _that = this;
switch (_that) {
case _LifeMaintenanceItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LifeMaintenanceItem value)?  $default,){
final _that = this;
switch (_that) {
case _LifeMaintenanceItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  double hoursPerDay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LifeMaintenanceItem() when $default != null:
return $default(_that.id,_that.name,_that.hoursPerDay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  double hoursPerDay)  $default,) {final _that = this;
switch (_that) {
case _LifeMaintenanceItem():
return $default(_that.id,_that.name,_that.hoursPerDay);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  double hoursPerDay)?  $default,) {final _that = this;
switch (_that) {
case _LifeMaintenanceItem() when $default != null:
return $default(_that.id,_that.name,_that.hoursPerDay);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LifeMaintenanceItem implements LifeMaintenanceItem {
  const _LifeMaintenanceItem({required this.id, required this.name, required this.hoursPerDay});
  factory _LifeMaintenanceItem.fromJson(Map<String, dynamic> json) => _$LifeMaintenanceItemFromJson(json);

@override final  String id;
@override final  String name;
/// Default hours per day for this activity. Yearly days = (hoursPerDay * 365) / 24.
@override final  double hoursPerDay;

/// Create a copy of LifeMaintenanceItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LifeMaintenanceItemCopyWith<_LifeMaintenanceItem> get copyWith => __$LifeMaintenanceItemCopyWithImpl<_LifeMaintenanceItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LifeMaintenanceItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LifeMaintenanceItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.hoursPerDay, hoursPerDay) || other.hoursPerDay == hoursPerDay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,hoursPerDay);

@override
String toString() {
  return 'LifeMaintenanceItem(id: $id, name: $name, hoursPerDay: $hoursPerDay)';
}


}

/// @nodoc
abstract mixin class _$LifeMaintenanceItemCopyWith<$Res> implements $LifeMaintenanceItemCopyWith<$Res> {
  factory _$LifeMaintenanceItemCopyWith(_LifeMaintenanceItem value, $Res Function(_LifeMaintenanceItem) _then) = __$LifeMaintenanceItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, double hoursPerDay
});




}
/// @nodoc
class __$LifeMaintenanceItemCopyWithImpl<$Res>
    implements _$LifeMaintenanceItemCopyWith<$Res> {
  __$LifeMaintenanceItemCopyWithImpl(this._self, this._then);

  final _LifeMaintenanceItem _self;
  final $Res Function(_LifeMaintenanceItem) _then;

/// Create a copy of LifeMaintenanceItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? hoursPerDay = null,}) {
  return _then(_LifeMaintenanceItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,hoursPerDay: null == hoursPerDay ? _self.hoursPerDay : hoursPerDay // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
