// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignInState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInState()';
}


}

/// @nodoc
class $SignInStateCopyWith<$Res>  {
$SignInStateCopyWith(SignInState _, $Res Function(SignInState) __);
}


/// Adds pattern-matching-related methods to [SignInState].
extension SignInStatePatterns on SignInState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignInStateLoading value)?  loading,TResult Function( SignInStateError value)?  error,TResult Function( SignInStateInitial value)?  initial,TResult Function( SignInStateSector value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignInStateLoading() when loading != null:
return loading(_that);case SignInStateError() when error != null:
return error(_that);case SignInStateInitial() when initial != null:
return initial(_that);case SignInStateSector() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignInStateLoading value)  loading,required TResult Function( SignInStateError value)  error,required TResult Function( SignInStateInitial value)  initial,required TResult Function( SignInStateSector value)  success,}){
final _that = this;
switch (_that) {
case SignInStateLoading():
return loading(_that);case SignInStateError():
return error(_that);case SignInStateInitial():
return initial(_that);case SignInStateSector():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignInStateLoading value)?  loading,TResult? Function( SignInStateError value)?  error,TResult? Function( SignInStateInitial value)?  initial,TResult? Function( SignInStateSector value)?  success,}){
final _that = this;
switch (_that) {
case SignInStateLoading() when loading != null:
return loading(_that);case SignInStateError() when error != null:
return error(_that);case SignInStateInitial() when initial != null:
return initial(_that);case SignInStateSector() when success != null:
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
case SignInStateLoading() when loading != null:
return loading();case SignInStateError() when error != null:
return error(_that.message);case SignInStateInitial() when initial != null:
return initial();case SignInStateSector() when success != null:
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
case SignInStateLoading():
return loading();case SignInStateError():
return error(_that.message);case SignInStateInitial():
return initial();case SignInStateSector():
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
case SignInStateLoading() when loading != null:
return loading();case SignInStateError() when error != null:
return error(_that.message);case SignInStateInitial() when initial != null:
return initial();case SignInStateSector() when success != null:
return success();case _:
  return null;

}
}

}

/// @nodoc


class SignInStateLoading implements SignInState {
  const SignInStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInState.loading()';
}


}




/// @nodoc


class SignInStateError implements SignInState {
  const SignInStateError(this.message);
  

 final  String message;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInStateErrorCopyWith<SignInStateError> get copyWith => _$SignInStateErrorCopyWithImpl<SignInStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SignInState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $SignInStateErrorCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory $SignInStateErrorCopyWith(SignInStateError value, $Res Function(SignInStateError) _then) = _$SignInStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SignInStateErrorCopyWithImpl<$Res>
    implements $SignInStateErrorCopyWith<$Res> {
  _$SignInStateErrorCopyWithImpl(this._self, this._then);

  final SignInStateError _self;
  final $Res Function(SignInStateError) _then;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SignInStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignInStateInitial implements SignInState {
  const SignInStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInState.initial()';
}


}




/// @nodoc


class SignInStateSector implements SignInState {
  const SignInStateSector();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInStateSector);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInState.success()';
}


}




// dart format on
