import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../domain/shared/failures/database_failure.dart';
import '../../domain/user/i_user_repository.dart';
import '../../domain/user/user.dart';
import '../shared/firestore_helpers.dart';
import 'user_dtos.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  UserRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<DatabaseFailure, User>> get(firebase_auth.User fUser) async {
    try {
      final userDoc = await _firestore.userDocument(fUser.uid);
      final doc = await userDoc.get();
      return right(UserDto.fromFirestore(doc).toDomain(fUser));
    } on Exception catch (e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DatabaseFailure.insufficientPermission());
      } else {
        return left(const DatabaseFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DatabaseFailure, Unit>> create(User user) async {
    try {
      final userDoc = await _firestore.userDocument(user.id.getOrCrash());
      final userDto = UserDto.fromDomain(user);

      await userDoc.set(userDto.toJson());

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
  Future<Either<DatabaseFailure, Unit>> update(User user) async {
    try {
      final userDoc = await _firestore.userDocument(user.id.getOrCrash());
      final userDto = UserDto.fromDomain(user);

      await userDoc.update(userDto.toJson());

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
  Future<Either<DatabaseFailure, Unit>> delete(User user) async {
    try {
      final userDoc = await _firestore.userDocument(user.id.getOrCrash());
      await userDoc.delete();
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
  Future<Stream<DocumentSnapshot<Object?>>> changes(String uid) async {
    final ref = await _firestore.userDocument(uid);
    return ref.snapshots();
  }
}
