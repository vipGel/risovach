import 'package:dartz/dartz.dart';
import 'package:risovach/core/error/failure.dart';

abstract class Repository {
  Future<Either<FirebaseFailure, void>> signUp(
    String emailAddress,
    String password,
  );

  Future<Either<FirebaseFailure, void>> signIn(
    String emailAddress,
    String password,
  );
}
