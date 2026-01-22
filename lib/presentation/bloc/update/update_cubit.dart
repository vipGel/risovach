import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:risovach/domain/entities/picture/picture_entity.dart';
import 'package:risovach/domain/repository/repository.dart';

part 'update_state.dart';

part 'update_cubit.freezed.dart';

class UpdateCubit extends Cubit<UpdateState> {
  final Repository repo;

  UpdateCubit(this.repo) : super(const UpdateState.initial());

  void update({
    required PictureEntity entity,
    required String id,
    required VoidCallback callback,
  }) async {
    emit(UpdateState.loading());
    final either = await repo.updatePicture(entity: entity, id: id);
    either.fold((l) {
      Fluttertoast.showToast(msg: l.message);
      emit(UpdateState.error(l.message));
    }, (r) {
      emit(UpdateState.success());
      callback();
    });
  }
}
