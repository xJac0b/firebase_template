import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:fpdart/fpdart.dart';

import 'user.dart';
import 'user_failure.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, User>> get(firebase_auth.User fUser);
  Future<Either<UserFailure, Unit>> create(User user);
  Future<Either<UserFailure, Unit>> update(User user);
  Future<Either<UserFailure, Unit>> delete(User user);
  Future<Stream<DocumentSnapshot<Object?>>> changes(String uid);
}
