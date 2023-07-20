import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../domain/counter/i_counter_repository.dart';
import '../../domain/shared/failures/database_failure.dart';
import '../shared/firestore_helpers.dart';

@LazySingleton(as: ICounterRepository)
class CounterRepository implements ICounterRepository {
  CounterRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<DatabaseFailure, int>> get(String uid) async {
    try {
      final counterDoc = await _firestore.counterDocument(uid);
      var doc = await counterDoc.get();
      if (doc.data() == null) {
        await create(uid);
        doc = await counterDoc.get();
      }
      return right((doc.data() as Map<String, dynamic>)['counter'] as int);
    } on Exception catch (e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DatabaseFailure.insufficientPermission());
      } else {
        return left(const DatabaseFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DatabaseFailure, Unit>> create(String uid) async {
    try {
      final counterDoc = await _firestore.counterDocument(uid);

      await counterDoc.set({'counter': 0});

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DatabaseFailure.insufficientPermission());
      } else {
        return left(const DatabaseFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DatabaseFailure, Unit>> update(String uid, int newValue) async {
    try {
      final counterDoc = await _firestore.counterDocument(uid);

      await counterDoc.update({'counter': newValue});

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DatabaseFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DatabaseFailure.unableToUpdate());
      } else {
        return left(const DatabaseFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DatabaseFailure, Unit>> delete(String uid) async {
    try {
      final counterDoc = await _firestore.counterDocument(uid);
      await counterDoc.delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DatabaseFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const DatabaseFailure.unableToUpdate());
      } else {
        return left(const DatabaseFailure.unexpected());
      }
    }
  }
}
