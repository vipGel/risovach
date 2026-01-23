// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UploadState()';
}


}

/// @nodoc
class $UploadStateCopyWith<$Res>  {
$UploadStateCopyWith(UploadState _, $Res Function(UploadState) __);
}


/// Adds pattern-matching-related methods to [UploadState].
extension UploadStatePatterns on UploadState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UploadStateLoading value)?  loading,TResult Function( UploadStateError value)?  error,TResult Function( UploadStateInitial value)?  initial,TResult Function( UploadStateSuccess value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UploadStateLoading() when loading != null:
return loading(_that);case UploadStateError() when error != null:
return error(_that);case UploadStateInitial() when initial != null:
return initial(_that);case UploadStateSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UploadStateLoading value)  loading,required TResult Function( UploadStateError value)  error,required TResult Function( UploadStateInitial value)  initial,required TResult Function( UploadStateSuccess value)  success,}){
final _that = this;
switch (_that) {
case UploadStateLoading():
return loading(_that);case UploadStateError():
return error(_that);case UploadStateInitial():
return initial(_that);case UploadStateSuccess():
return success(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UploadStateLoading value)?  loading,TResult? Function( UploadStateError value)?  error,TResult? Function( UploadStateInitial value)?  initial,TResult? Function( UploadStateSuccess value)?  success,}){
final _that = this;
switch (_that) {
case UploadStateLoading() when loading != null:
return loading(_that);case UploadStateError() when error != null:
return error(_that);case UploadStateInitial() when initial != null:
return initial(_that);case UploadStateSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( String message)?  error,TResult Function()?  initial,TResult Function()?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UploadStateLoading() when loading != null:
return loading();case UploadStateError() when error != null:
return error(_that.message);case UploadStateInitial() when initial != null:
return initial();case UploadStateSuccess() when success != null:
return success();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function()  initial,required TResult Function()  success,}) {final _that = this;
switch (_that) {
case UploadStateLoading():
return loading();case UploadStateError():
return error(_that.message);case UploadStateInitial():
return initial();case UploadStateSuccess():
return success();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function()?  initial,TResult? Function()?  success,}) {final _that = this;
switch (_that) {
case UploadStateLoading() when loading != null:
return loading();case UploadStateError() when error != null:
return error(_that.message);case UploadStateInitial() when initial != null:
return initial();case UploadStateSuccess() when success != null:
return success();case _:
  return null;

}
}

}

/// @nodoc


class UploadStateLoading implements UploadState {
  const UploadStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UploadState.loading()';
}


}




/// @nodoc


class UploadStateError implements UploadState {
  const UploadStateError(this.message);
  

 final  String message;

/// Create a copy of UploadState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadStateErrorCopyWith<UploadStateError> get copyWith => _$UploadStateErrorCopyWithImpl<UploadStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UploadState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $UploadStateErrorCopyWith<$Res> implements $UploadStateCopyWith<$Res> {
  factory $UploadStateErrorCopyWith(UploadStateError value, $Res Function(UploadStateError) _then) = _$UploadStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UploadStateErrorCopyWithImpl<$Res>
    implements $UploadStateErrorCopyWith<$Res> {
  _$UploadStateErrorCopyWithImpl(this._self, this._then);

  final UploadStateError _self;
  final $Res Function(UploadStateError) _then;

/// Create a copy of UploadState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UploadStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UploadStateInitial implements UploadState {
  const UploadStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UploadState.initial()';
}


}




/// @nodoc


class UploadStateSuccess implements UploadState {
  const UploadStateSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadStateSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UploadState.success()';
}


}




// dart format on
