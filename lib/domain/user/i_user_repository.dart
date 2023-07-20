import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:fpdart/fpdart.dart';

import '../shared/failures/database_failure.dart';
import 'user.dart';

abstract class IUserRepository {
  Future<Either<DatabaseFailure, User>> get(firebase_auth.User fUser);
  Future<Either<DatabaseFailure, Unit>> create(User user);
  Future<Either<DatabaseFailure, Unit>> update(User user);
  Future<Either<DatabaseFailure, Unit>> delete(User user);
  Future<Stream<DocumentSnapshot<Object?>>> changes(String uid);
}
