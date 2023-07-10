import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/auth/user/user.dart';
import '../../domain/auth/value_objects.dart';
import '../../domain/shared/value_objects.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    bool? filled,
    DateTime? dateOfBirth,
    bool? male,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    return UserDto.fromJson(doc.data()! as Map<String, dynamic>);
  }

  const UserDto._();

  factory UserDto.fromDomain(User user) {
    return UserDto(
      filled: user.filled,
      dateOfBirth: user.dateOfBirth?.getOrCrash(),
      male: user.male,
    );
  }

  User toDomain(firebase_auth.User fUser) {
    return User(
      id: UniqueId.fromUniqueString(fUser.uid),
      emailVerified: fUser.emailVerified,
      email: EmailAddress(fUser.email!),
      displayName:
          fUser.displayName == null ? null : DisplayName(fUser.displayName!),
      photoUrl: fUser.photoURL,
      filled: filled,
      male: male,
      dateOfBirth: dateOfBirth == null ? null : DateOfBirth(dateOfBirth!),
    );
  }
}
