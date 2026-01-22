// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picture_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PictureEntity {

 int get id; String get username; String get url;
/// Create a copy of PictureEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PictureEntityCopyWith<PictureEntity> get copyWith => _$PictureEntityCopyWithImpl<PictureEntity>(this as PictureEntity, _$identity);

  /// Serializes this PictureEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PictureEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,url);

@override
String toString() {
  return 'PictureEntity(id: $id, username: $username, url: $url)';
}


}

/// @nodoc
abstract mixin class $PictureEntityCopyWith<$Res>  {
  factory $PictureEntityCopyWith(PictureEntity value, $Res Function(PictureEntity) _then) = _$PictureEntityCopyWithImpl;
@useResult
$Res call({
 int id, String username, String url
});




}
/// @nodoc
class _$PictureEntityCopyWithImpl<$Res>
    implements $PictureEntityCopyWith<$Res> {
  _$PictureEntityCopyWithImpl(this._self, this._then);

  final PictureEntity _self;
  final $Res Function(PictureEntity) _then;

/// Create a copy of PictureEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? url = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PictureEntity].
extension PictureEntityPatterns on PictureEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PictureEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PictureEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PictureEntity value)  $default,){
final _that = this;
switch (_that) {
case _PictureEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PictureEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PictureEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String username,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PictureEntity() when $default != null:
return $default(_that.id,_that.username,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String username,  String url)  $default,) {final _that = this;
switch (_that) {
case _PictureEntity():
return $default(_that.id,_that.username,_that.url);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String username,  String url)?  $default,) {final _that = this;
switch (_that) {
case _PictureEntity() when $default != null:
return $default(_that.id,_that.username,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PictureEntity implements PictureEntity {
  const _PictureEntity({required this.id, required this.username, required this.url});
  factory _PictureEntity.fromJson(Map<String, dynamic> json) => _$PictureEntityFromJson(json);

@override final  int id;
@override final  String username;
@override final  String url;

/// Create a copy of PictureEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PictureEntityCopyWith<_PictureEntity> get copyWith => __$PictureEntityCopyWithImpl<_PictureEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PictureEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PictureEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,url);

@override
String toString() {
  return 'PictureEntity(id: $id, username: $username, url: $url)';
}


}

/// @nodoc
abstract mixin class _$PictureEntityCopyWith<$Res> implements $PictureEntityCopyWith<$Res> {
  factory _$PictureEntityCopyWith(_PictureEntity value, $Res Function(_PictureEntity) _then) = __$PictureEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String username, String url
});




}
/// @nodoc
class __$PictureEntityCopyWithImpl<$Res>
    implements _$PictureEntityCopyWith<$Res> {
  __$PictureEntityCopyWithImpl(this._self, this._then);

  final _PictureEntity _self;
  final $Res Function(_PictureEntity) _then;

/// Create a copy of PictureEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? url = null,}) {
  return _then(_PictureEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
