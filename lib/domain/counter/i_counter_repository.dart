import 'package:fpdart/fpdart.dart';

import '../shared/failures/database_failure.dart';

abstract class ICounterRepository {
  Future<Either<DatabaseFailure, Unit>> create(String userId);
  Future<Either<DatabaseFailure, Unit>> delete(String userId);
  Future<Either<DatabaseFailure, int>> get(String userId);
  Future<Either<DatabaseFailure, Unit>> update(String userId, int newValue);
}
