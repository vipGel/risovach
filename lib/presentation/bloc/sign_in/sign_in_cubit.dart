import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:risovach/domain/repository/repository.dart';

part 'sign_in_state.dart';

part 'sign_in_cubit.freezed.dart';

/// State manager for sign in post request
class SignInCubit extends Cubit<SignInState> {
  final Repository repo;

  // sets initial state
  SignInCubit(this.repo) : super(const SignInState.initial());

  void signUp(String email, String password) async {
    // every time before request i set loading state
    emit(SignInState.loading());
    final either = await repo.signIn(email, password);

    // climax
    either.fold((l) {
      Fluttertoast.showToast(msg: l.message);
      emit(SignInState.error(l.message));
    }, (r) => emit(SignInState.success()));
  }
}
