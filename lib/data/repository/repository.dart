import 'package:dartz/dartz.dart';
import 'package:risovach/core/error/failure.dart';
import 'package:risovach/data/firebase_auth.dart';
import 'package:risovach/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final FirebaseAuthentication firebaseAuth;

  RepositoryImpl(this.firebaseAuth);

  @override
  Future<Either<FirebaseFailure, void>> signUp(
    String emailAddress,
    String password,
  ) {
    return firebaseAuth.createUser(emailAddress, password);
  }

  @override
  Future<Either<FirebaseFailure, void>> signIn(
    String emailAddress,
    String password,
  ) {
    return firebaseAuth.createUser(emailAddress, password);
  }
}
