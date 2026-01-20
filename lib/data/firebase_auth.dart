import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:risovach/core/error/failure.dart';

abstract class FirebaseAuthentication {
  Future<Either<FirebaseFailure, void>> createUser(
    String emailAddress,
    String password,
  );
  Future<Either<FirebaseFailure, void>> signIn(
    String emailAddress,
    String password,
  );
}

class FirebaseAuthenticationImpl implements FirebaseAuthentication {
  final FirebaseAuth instance;

  FirebaseAuthenticationImpl(this.instance);

  @override
  Future<Either<FirebaseFailure, void>> createUser(
    String emailAddress,
    String password,
  ) async {
    final UserCredential credential;
    try {
      credential = await instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Left(WeakPassword());
      } else if (e.code == 'email-already-in-use') {
        return Left(EmailAlreadyInUse());
      }
    } catch (e) {
      return Left(Unknown());
    }
    return Right(null);
  }

  @override
  Future<Either<FirebaseFailure, void>> signIn(
    String emailAddress,
    String password,
  ) async {
    final UserCredential credential;

    try {
      credential = await instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return Left(UserNotFound());
      } else if (e.code == 'wrong-password') {
        return Left(WrongPassword());
      }
    } catch (e) {
      return Left(Unknown());
    }
    return Right(null);
  }
}
