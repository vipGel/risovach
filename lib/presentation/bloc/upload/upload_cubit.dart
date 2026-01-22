import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:risovach/domain/entities/picture/picture_entity.dart';
import 'package:risovach/domain/repository/repository.dart';

part 'upload_state.dart';

part 'upload_cubit.freezed.dart';

class UploadCubit extends Cubit<UploadState> {
  final Repository repo;

  UploadCubit(this.repo) : super(const UploadState.initial());

  void upload({
    required PictureEntity entity,
    required VoidCallback callback,
  }) async {
    emit(UploadState.loading());
    final either = await repo.uploadPicture(entity: entity);
    either.fold((l) {
      Fluttertoast.showToast(msg: l.message);
      emit(UploadState.error(l.message));
    }, (r) {
      emit(UploadState.success());
      callback();
    });
  }
}
