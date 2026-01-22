import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:risovach/core/error/failure.dart';
import 'package:risovach/domain/entities/picture/picture_entity.dart';

abstract class FirebaseDB {
  Future<Either<FirebaseFailure, void>> uploadPicture({
    required PictureEntity entity,
  });

  Stream<DatabaseEvent> stream();
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
    } on FirebaseException catch (e) {
      // return _handleError(e.code);
    } catch (e) {
      print(e);
      return Left(Unknown());
    }
    return Right(null);
  }

  @override
  Stream<DatabaseEvent> stream() {
    final ref = instance.ref('gallery');
    return ref.onChildAdded;
  }
}
