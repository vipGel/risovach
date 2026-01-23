// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picture_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PictureState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PictureState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PictureState()';
}


}

/// @nodoc
class $PictureStateCopyWith<$Res>  {
$PictureStateCopyWith(PictureState _, $Res Function(PictureState) __);
}


/// Adds pattern-matching-related methods to [PictureState].
extension PictureStatePatterns on PictureState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PictureStateLoading value)?  loading,TResult Function( PictureStateError value)?  error,TResult Function( PictureStateInitial value)?  initial,TResult Function( PictureStateLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PictureStateLoading() when loading != null:
return loading(_that);case PictureStateError() when error != null:
return error(_that);case PictureStateInitial() when initial != null:
return initial(_that);case PictureStateLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PictureStateLoading value)  loading,required TResult Function( PictureStateError value)  error,required TResult Function( PictureStateInitial value)  initial,required TResult Function( PictureStateLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case PictureStateLoading():
return loading(_that);case PictureStateError():
return error(_that);case PictureStateInitial():
return initial(_that);case PictureStateLoaded():
return loaded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PictureStateLoading value)?  loading,TResult? Function( PictureStateError value)?  error,TResult? Function( PictureStateInitial value)?  initial,TResult? Function( PictureStateLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case PictureStateLoading() when loading != null:
return loading(_that);case PictureStateError() when error != null:
return error(_that);case PictureStateInitial() when initial != null:
return initial(_that);case PictureStateLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( String message)?  error,TResult Function()?  initial,TResult Function( PictureEntity entity)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PictureStateLoading() when loading != null:
return loading();case PictureStateError() when error != null:
return error(_that.message);case PictureStateInitial() when initial != null:
return initial();case PictureStateLoaded() when loaded != null:
return loaded(_that.entity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function()  initial,required TResult Function( PictureEntity entity)  loaded,}) {final _that = this;
switch (_that) {
case PictureStateLoading():
return loading();case PictureStateError():
return error(_that.message);case PictureStateInitial():
return initial();case PictureStateLoaded():
return loaded(_that.entity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function()?  initial,TResult? Function( PictureEntity entity)?  loaded,}) {final _that = this;
switch (_that) {
case PictureStateLoading() when loading != null:
return loading();case PictureStateError() when error != null:
return error(_that.message);case PictureStateInitial() when initial != null:
return initial();case PictureStateLoaded() when loaded != null:
return loaded(_that.entity);case _:
  return null;

}
}

}

/// @nodoc


class PictureStateLoading implements PictureState {
  const PictureStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PictureStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PictureState.loading()';
}


}




/// @nodoc


class PictureStateError implements PictureState {
  const PictureStateError(this.message);
  

 final  String message;

/// Create a copy of PictureState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PictureStateErrorCopyWith<PictureStateError> get copyWith => _$PictureStateErrorCopyWithImpl<PictureStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PictureStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PictureState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $PictureStateErrorCopyWith<$Res> implements $PictureStateCopyWith<$Res> {
  factory $PictureStateErrorCopyWith(PictureStateError value, $Res Function(PictureStateError) _then) = _$PictureStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PictureStateErrorCopyWithImpl<$Res>
    implements $PictureStateErrorCopyWith<$Res> {
  _$PictureStateErrorCopyWithImpl(this._self, this._then);

  final PictureStateError _self;
  final $Res Function(PictureStateError) _then;

/// Create a copy of PictureState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(PictureStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PictureStateInitial implements PictureState {
  const PictureStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PictureStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PictureState.initial()';
}


}




/// @nodoc


class PictureStateLoaded implements PictureState {
  const PictureStateLoaded(this.entity);
  

 final  PictureEntity entity;

/// Create a copy of PictureState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PictureStateLoadedCopyWith<PictureStateLoaded> get copyWith => _$PictureStateLoadedCopyWithImpl<PictureStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PictureStateLoaded&&(identical(other.entity, entity) || other.entity == entity));
}


@override
int get hashCode => Object.hash(runtimeType,entity);

@override
String toString() {
  return 'PictureState.loaded(entity: $entity)';
}


}

/// @nodoc
abstract mixin class $PictureStateLoadedCopyWith<$Res> implements $PictureStateCopyWith<$Res> {
  factory $PictureStateLoadedCopyWith(PictureStateLoaded value, $Res Function(PictureStateLoaded) _then) = _$PictureStateLoadedCopyWithImpl;
@useResult
$Res call({
 PictureEntity entity
});


$PictureEntityCopyWith<$Res> get entity;

}
/// @nodoc
class _$PictureStateLoadedCopyWithImpl<$Res>
    implements $PictureStateLoadedCopyWith<$Res> {
  _$PictureStateLoadedCopyWithImpl(this._self, this._then);

  final PictureStateLoaded _self;
  final $Res Function(PictureStateLoaded) _then;

/// Create a copy of PictureState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? entity = null,}) {
  return _then(PictureStateLoaded(
null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as PictureEntity,
  ));
}

/// Create a copy of PictureState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PictureEntityCopyWith<$Res> get entity {
  
  return $PictureEntityCopyWith<$Res>(_self.entity, (value) {
    return _then(_self.copyWith(entity: value));
  });
}
}

// dart format on
