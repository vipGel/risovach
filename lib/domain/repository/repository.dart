import 'package:dartz/dartz.dart';
import 'package:risovach/core/error/failure.dart';

abstract class Repository {
  Future<Either<FirebaseFailure, void>> signUp({
    required String emailAddress,
    required String password,
    required String name,
  });

  Future<Either<FirebaseFailure, void>> signIn(
    String emailAddress,
    String password,
  );

  Future<void> signOut();
}
