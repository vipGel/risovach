import 'dart:typed_data';
import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:risovach/domain/entities/picture/picture_entity.dart';
import 'package:risovach/domain/repository/repository.dart';
import 'package:risovach/sl.dart';

part 'upload_state.dart';

part 'upload_cubit.freezed.dart';

class UploadCubit extends Cubit<UploadState> {
  final Repository repo;

  UploadCubit(this.repo) : super(const UploadState.initial());

  void upload({
    required DrawingController controller,
    required VoidCallback callback,
  }) async {
    emit(UploadState.loading());
    final imageData = await controller.getImageData();
    final Uint8List? data = imageData?.buffer.asUint8List();
    if (data == null) return;

    final displayName = sl<FirebaseAuth>().currentUser?.displayName;
    if (displayName == null) return;

    final entity = PictureEntity(
      username: displayName,
      picture: data,
      createdAt: DateTime.now(),
    );

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
