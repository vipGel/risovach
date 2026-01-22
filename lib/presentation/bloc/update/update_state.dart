part of 'update_cubit.dart';

@freezed
class UpdateState with _$UpdateState {
  const factory UpdateState.loading() = UpdateStateLoading;

  const factory UpdateState.error(String message) = UpdateStateError;

  const factory UpdateState.initial() = UpdateStateInitial;

  const factory UpdateState.success() = UpdateStateSuccess;
}
