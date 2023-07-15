import 'package:freezed_annotation/freezed_annotation.dart';

import '../auth/value_objects.dart';
import '../shared/value_objects.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required UniqueId id,
    required EmailAddress email,
    required bool filled,
    DisplayName? displayName,
    String? photoUrl,
    bool? male,
    DateOfBirth? dateOfBirth,
  }) = _User;
}
