part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.loading() = SignUpStateLoading;

  const factory SignUpState.error(String message) = SignUpStateError;

  const factory SignUpState.initial() = SignUpStateInitial;

  const factory SignUpState.success() = SignUpStateSector;
}
