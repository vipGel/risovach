part of 'upload_cubit.dart';

@freezed
class UploadState with _$UploadState {
  const factory UploadState.loading() = UploadStateLoading;

  const factory UploadState.error(String message) = UploadStateError;

  const factory UploadState.initial() = UploadStateInitial;

  const factory UploadState.success() = UploadStateSuccess;
}
