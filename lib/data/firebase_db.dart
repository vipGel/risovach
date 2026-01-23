import 'package:dartz/dartz.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:risovach/core/error/failure.dart';
import 'package:risovach/domain/entities/picture/picture_entity.dart';

abstract class FirebaseDB {
  Future<Either<FirebaseFailure, void>> uploadPicture({
    required PictureEntity entity,
  });

  Future<Either<FirebaseFailure, void>> updatePicture({
    required PictureEntity entity,
    required String id,
  });

  Stream<DatabaseEvent> stream();

  Future<Either<FirebaseFailure, PictureEntity>> picture(String id);
}

class FirebaseDBImpl implements FirebaseDB {
  final FirebaseDatabase instance;

  FirebaseDBImpl(this.instance);

  @override
  Future<Either<FirebaseFailure, void>> uploadPicture({
    required PictureEntity entity,
  }) async {
    try {
      final ref = instance.ref('gallery');
      final newPictureRef = ref.push();
      await newPictureRef.set(entity.toJson());
    } catch (e) {
      return Left(Unknown());
    }
    return Right(null);
  }

  @override
  Future<Either<FirebaseFailure, void>> updatePicture({
    required PictureEntity entity,
    required String id,
  }) async {
    try {
      final ref = instance.ref('gallery/$id');
      final json = entity.toJson();
      await ref.update(json);
    } catch (e) {
      // sometimes there is an firebase error that i cannot fix
      return Left(Unknown());
    }
    return Right(null);
  }

  @override
  Stream<DatabaseEvent> stream() {
    final ref = instance.ref('gallery');
    return ref.onValue;
  }

  @override
  Future<Either<FirebaseFailure, PictureEntity>> picture(String id) async {
    try {
      final ref = instance.ref('gallery');
      final snapshot = await ref.child(id).get();
      if (snapshot.exists) {
        // fucking abomination, help me
        final values = snapshot.value as Map<dynamic, dynamic>;
        final entry = values[id].map(
          (key, value) => MapEntry(key as String, value),
        );
        final json = Map<String, dynamic>.from(entry as Map);

        final entity = PictureEntity.fromJson(json);
        return Right(entity);
      } else {
        return Left(NotFound());
      }
    } on Exception catch (e) {
      return Left(Unknown());
    }
  }
}
