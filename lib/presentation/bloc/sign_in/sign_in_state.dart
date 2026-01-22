part of 'sign_in_cubit.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.loading() = SignInStateLoading;

  const factory SignInState.error(String message) = SignInStateError;

  const factory SignInState.initial() = SignInStateInitial;

  const factory SignInState.success() = SignInStateSector;
}
