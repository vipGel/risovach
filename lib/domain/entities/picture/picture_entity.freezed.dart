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
mixin _$PictureEntity implements DiagnosticableTreeMixin {

// required int id,
 String get username;@Uint8ListConverter() Uint8List get picture; DateTime get createdAt;
/// Create a copy of PictureEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PictureEntityCopyWith<PictureEntity> get copyWith => _$PictureEntityCopyWithImpl<PictureEntity>(this as PictureEntity, _$identity);

  /// Serializes this PictureEntity to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PictureEntity'))
    ..add(DiagnosticsProperty('username', username))..add(DiagnosticsProperty('picture', picture))..add(DiagnosticsProperty('createdAt', createdAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PictureEntity&&(identical(other.username, username) || other.username == username)&&const DeepCollectionEquality().equals(other.picture, picture)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,const DeepCollectionEquality().hash(picture),createdAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PictureEntity(username: $username, picture: $picture, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PictureEntityCopyWith<$Res>  {
  factory $PictureEntityCopyWith(PictureEntity value, $Res Function(PictureEntity) _then) = _$PictureEntityCopyWithImpl;
@useResult
$Res call({
 String username,@Uint8ListConverter() Uint8List picture, DateTime createdAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? picture = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,picture: null == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as Uint8List,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username, @Uint8ListConverter()  Uint8List picture,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PictureEntity() when $default != null:
return $default(_that.username,_that.picture,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username, @Uint8ListConverter()  Uint8List picture,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _PictureEntity():
return $default(_that.username,_that.picture,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username, @Uint8ListConverter()  Uint8List picture,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PictureEntity() when $default != null:
return $default(_that.username,_that.picture,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PictureEntity with DiagnosticableTreeMixin implements PictureEntity {
  const _PictureEntity({required this.username, @Uint8ListConverter() required this.picture, required this.createdAt});
  factory _PictureEntity.fromJson(Map<String, dynamic> json) => _$PictureEntityFromJson(json);

// required int id,
@override final  String username;
@override@Uint8ListConverter() final  Uint8List picture;
@override final  DateTime createdAt;

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
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PictureEntity'))
    ..add(DiagnosticsProperty('username', username))..add(DiagnosticsProperty('picture', picture))..add(DiagnosticsProperty('createdAt', createdAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PictureEntity&&(identical(other.username, username) || other.username == username)&&const DeepCollectionEquality().equals(other.picture, picture)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,const DeepCollectionEquality().hash(picture),createdAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PictureEntity(username: $username, picture: $picture, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PictureEntityCopyWith<$Res> implements $PictureEntityCopyWith<$Res> {
  factory _$PictureEntityCopyWith(_PictureEntity value, $Res Function(_PictureEntity) _then) = __$PictureEntityCopyWithImpl;
@override @useResult
$Res call({
 String username,@Uint8ListConverter() Uint8List picture, DateTime createdAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? picture = null,Object? createdAt = null,}) {
  return _then(_PictureEntity(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,picture: null == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as Uint8List,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
