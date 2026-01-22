import 'package:dartz/dartz.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:risovach/core/error/failure.dart';
import 'package:risovach/data/firebase_auth.dart';
import 'package:risovach/data/firebase_db.dart';
import 'package:risovach/domain/entities/picture/picture_entity.dart';
import 'package:risovach/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final FirebaseAuthentication firebaseAuth;
  final FirebaseDB firebaseDB;

  RepositoryImpl(this.firebaseAuth, this.firebaseDB);

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

  @override
  Future<Either<FirebaseFailure, void>> uploadPicture({
    required PictureEntity entity,
  }) {
    return firebaseDB.uploadPicture(entity: entity);
  }

  @override
  Stream<DatabaseEvent> stream() {
    return firebaseDB.stream();
  }
}
