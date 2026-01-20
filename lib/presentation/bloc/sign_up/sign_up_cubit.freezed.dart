// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState()';
}


}

/// @nodoc
class $SignUpStateCopyWith<$Res>  {
$SignUpStateCopyWith(SignUpState _, $Res Function(SignUpState) __);
}


/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns on SignUpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignUpStateLoading value)?  loading,TResult Function( SignUpStateError value)?  error,TResult Function( SignUpStateInitial value)?  initial,TResult Function( SignUpStateSector value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignUpStateLoading() when loading != null:
return loading(_that);case SignUpStateError() when error != null:
return error(_that);case SignUpStateInitial() when initial != null:
return initial(_that);case SignUpStateSector() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignUpStateLoading value)  loading,required TResult Function( SignUpStateError value)  error,required TResult Function( SignUpStateInitial value)  initial,required TResult Function( SignUpStateSector value)  success,}){
final _that = this;
switch (_that) {
case SignUpStateLoading():
return loading(_that);case SignUpStateError():
return error(_that);case SignUpStateInitial():
return initial(_that);case SignUpStateSector():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignUpStateLoading value)?  loading,TResult? Function( SignUpStateError value)?  error,TResult? Function( SignUpStateInitial value)?  initial,TResult? Function( SignUpStateSector value)?  success,}){
final _that = this;
switch (_that) {
case SignUpStateLoading() when loading != null:
return loading(_that);case SignUpStateError() when error != null:
return error(_that);case SignUpStateInitial() when initial != null:
return initial(_that);case SignUpStateSector() when success != null:
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
case SignUpStateLoading() when loading != null:
return loading();case SignUpStateError() when error != null:
return error(_that.message);case SignUpStateInitial() when initial != null:
return initial();case SignUpStateSector() when success != null:
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
case SignUpStateLoading():
return loading();case SignUpStateError():
return error(_that.message);case SignUpStateInitial():
return initial();case SignUpStateSector():
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
case SignUpStateLoading() when loading != null:
return loading();case SignUpStateError() when error != null:
return error(_that.message);case SignUpStateInitial() when initial != null:
return initial();case SignUpStateSector() when success != null:
return success();case _:
  return null;

}
}

}

/// @nodoc


class SignUpStateLoading implements SignUpState {
  const SignUpStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState.loading()';
}


}




/// @nodoc


class SignUpStateError implements SignUpState {
  const SignUpStateError(this.message);
  

 final  String message;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpStateErrorCopyWith<SignUpStateError> get copyWith => _$SignUpStateErrorCopyWithImpl<SignUpStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SignUpState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $SignUpStateErrorCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $SignUpStateErrorCopyWith(SignUpStateError value, $Res Function(SignUpStateError) _then) = _$SignUpStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SignUpStateErrorCopyWithImpl<$Res>
    implements $SignUpStateErrorCopyWith<$Res> {
  _$SignUpStateErrorCopyWithImpl(this._self, this._then);

  final SignUpStateError _self;
  final $Res Function(SignUpStateError) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SignUpStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignUpStateInitial implements SignUpState {
  const SignUpStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState.initial()';
}


}




/// @nodoc


class SignUpStateSector implements SignUpState {
  const SignUpStateSector();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpStateSector);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState.success()';
}


}




// dart format on
