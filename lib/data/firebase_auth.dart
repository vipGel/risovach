import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:risovach/core/error/failure.dart';

abstract class FirebaseAuthentication {
  Future<Either<FirebaseFailure, void>> createUser({
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

class FirebaseAuthenticationImpl implements FirebaseAuthentication {
  final FirebaseAuth instance;

  FirebaseAuthenticationImpl(this.instance);

  @override
  Future<Either<FirebaseFailure, void>> createUser({
    required String emailAddress,
    required String password,
    required String name,
  }) async {
    final UserCredential credential;
    try {
      credential = await instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      final user = credential.user;
      if (user == null) {
        return Left(Unknown());
      }
      await user.updateDisplayName(name);
    } on FirebaseAuthException catch (e) {
      return _handleError(e.code);
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
    try {
      await instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      return _handleError(e.code);
    } catch (e) {
      return Left(Unknown());
    }
    return Right(null);
  }

  @override
  Future<void> signOut() {
    return instance.signOut();
  }

  Left<FirebaseFailure, void> _handleError(String code) {
    print(code);
    if (code == 'user-not-found') {
      return Left(UserNotFound());
    } else if (code == 'wrong-password') {
      return Left(WrongPassword());
    } else if (code == 'weak-password') {
      return Left(WeakPassword());
    } else if (code == 'email-already-in-use') {
      return Left(EmailAlreadyInUse());
    }
    return Left(Unknown());
  }
}
