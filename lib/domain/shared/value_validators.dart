import 'package:fpdart/fpdart.dart';

import 'failures/failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<String>, String> validateMinStringLength(
  String input,
  int minLength,
) {
  if (input.length >= minLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.insufficientLength(failedValue: input, min: minLength),
    );
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<DateTime>, DateTime> validateDateNotInFuture(
  DateTime date,
) {
  if (date.isAfter(DateTime.now())) {
    return left(ValueFailure.invalidDate(failedValue: date));
  } else {
    return right(date);
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (input.contains('@')) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(
    String input, int minLength,) {
  if (input.length >= minLength) {
    if (RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{' +
          minLength.toString() +
          r',}$',
    ).hasMatch(input)) {
      return right(input);
    } else {
      return left(ValueFailure.weakPassword(failedValue: input));
    }
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}
