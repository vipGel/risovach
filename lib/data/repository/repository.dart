import 'package:dartz/dartz.dart';
import 'package:risovach/core/error/failure.dart';
import 'package:risovach/data/firebase_auth.dart';
import 'package:risovach/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final FirebaseAuthentication firebaseAuth;

  RepositoryImpl(this.firebaseAuth);

  @override
  Future<Either<FirebaseFailure, void>> signUp({
    required String emailAddress,
    required String password,
    required String name,
  }) {
    return firebaseAuth.createUser(
      emailAddress: emailAddress,
      password: password,
      name: name,
    );
  }

  @override
  Future<Either<FirebaseFailure, void>> signIn(
    String emailAddress,
    String password,
  ) {
    return firebaseAuth.signIn(emailAddress, password);
  }

  @override
  Future<void> signOut() {
    return firebaseAuth.signOut();
  }
}
