import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/domain/value_objects.dart';
import '../value_objects.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required UniqueId id,
    required bool emailVerified,
    required EmailAddress email,
    DisplayName? displayName,
    String? photoUrl,
    bool? filled,
    bool? male,
    DateOfBirth? dateOfBirth,
  }) = _User;
}
