import 'package:fpdart/fpdart.dart';

import '../shared/failures/failures.dart';
import '../shared/value_objects.dart';
import '../shared/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;
}

class Password extends ValueObject<String> {
  factory Password(String input) {
    return Password._(
      validatePassword(input, minLength),
    );
  }

  const Password._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;
  static const minLength = 6;
}

class DisplayName extends ValueObject<String> {
  factory DisplayName(String input) {
    return DisplayName._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const DisplayName._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 20;
}

class DateOfBirth extends ValueObject<DateTime> {
  factory DateOfBirth(DateTime date) {
    return DateOfBirth._(validateDateNotInFuture(date));
  }

  const DateOfBirth._(this.value);
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;
}
