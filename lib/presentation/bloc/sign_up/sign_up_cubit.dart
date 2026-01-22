import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:risovach/domain/repository/repository.dart';

part 'sign_up_state.dart';

part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final Repository repo;

  SignUpCubit(this.repo) : super(const SignUpState.initial());

  void signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    emit(SignUpState.loading());
    final either = await repo.signUp(
      emailAddress: email,
      password: password,
      name: name,
    );
    either.fold((l) {
      Fluttertoast.showToast(msg: l.message);
      emit(SignUpState.error(l.message));
    }, (r) => emit(SignUpState.success()));
  }
}
