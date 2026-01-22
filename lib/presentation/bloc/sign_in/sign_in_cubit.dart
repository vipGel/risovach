import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:risovach/domain/repository/repository.dart';

part 'sign_in_state.dart';

part 'sign_in_cubit.freezed.dart';

class SignInCubit extends Cubit<SignInState> {
  final Repository repo;

  SignInCubit(this.repo) : super(const SignInState.initial());

  void signUp(String email, String password) async {
    emit(SignInState.loading());
    final either = await repo.signIn(email, password);
    either.fold((l) {
      Fluttertoast.showToast(msg: l.message);
      emit(SignInState.error(l.message));
    }, (r) => emit(SignInState.success()));
  }
}
