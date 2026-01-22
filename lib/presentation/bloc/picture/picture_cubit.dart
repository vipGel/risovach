import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:risovach/domain/entities/picture/picture_entity.dart';
import 'package:risovach/domain/repository/repository.dart';

part 'picture_state.dart';

part 'picture_cubit.freezed.dart';

class PictureCubit extends Cubit<PictureState> {
  final Repository repo;

  PictureCubit(this.repo) : super(const PictureState.initial());

  void picture({
    required String id,
    required void Function(PictureEntity entity) callback,
  }) async {
    emit(PictureState.loading());
    final either = await repo.picture(id);
    either.fold(
      (l) {
        Fluttertoast.showToast(msg: l.message);
        emit(PictureState.error(l.message));
      },
      (r) {
        emit(PictureState.loaded(r));
        callback(r);
      },
    );
  }
}
