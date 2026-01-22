part of 'picture_cubit.dart';

@freezed
class PictureState with _$PictureState {
  const factory PictureState.loading() = PictureStateLoading;

  const factory PictureState.error(String message) = PictureStateError;

  const factory PictureState.initial() = PictureStateInitial;

  const factory PictureState.loaded(PictureEntity entity) = PictureStateLoaded;
}
