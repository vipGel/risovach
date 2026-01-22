import 'package:dartz/dartz.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:risovach/core/error/failure.dart';
import 'package:risovach/domain/entities/picture/picture_entity.dart';

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

  Future<Either<FirebaseFailure, void>> uploadPicture({
    required PictureEntity entity,
  });

  Stream<DatabaseEvent> stream();
}
