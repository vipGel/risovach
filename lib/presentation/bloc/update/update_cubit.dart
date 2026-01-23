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

part 'update_state.dart';

part 'update_cubit.freezed.dart';

class UpdateCubit extends Cubit<UpdateState> {
  final Repository repo;

  UpdateCubit(this.repo) : super(const UpdateState.initial());

  void update({
    required DrawingController controller,
    required String id,
    required VoidCallback callback,
  }) async {
    emit(UpdateState.loading());

    // get image
    final imageData = await controller.getImageData();
    final Uint8List? data = imageData?.buffer.asUint8List();
    if (data == null) return;

    // get user
    final displayName = sl<FirebaseAuth>().currentUser?.displayName;
    if (displayName == null) return;

    // make an entity
    final entity = PictureEntity(
      username: displayName,
      picture: data,
      createdAt: DateTime.now(),
    );

    // update
    final either = await repo.updatePicture(entity: entity, id: id);

    // climax
    either.fold(
      (l) {
        // toast message on error
        Fluttertoast.showToast(msg: l.message);
        emit(UpdateState.error(l.message));
      },
      (r) {
        emit(UpdateState.success());
        // callback to pop screen
        callback();
      },
    );
  }
}
