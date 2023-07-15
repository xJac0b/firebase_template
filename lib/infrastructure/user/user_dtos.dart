import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/auth/value_objects.dart';
import '../../domain/shared/value_objects.dart';
import '../../domain/user/user.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required bool filled,
    DateTime? dateOfBirth,
    bool? male,
    String? displayName,
    String? photoUrl,
    required String email,
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
      displayName: user.displayName?.getOrCrash(),
      photoUrl: user.photoUrl,
      email: user.email.getOrCrash(),
    );
  }

  User toDomain(firebase_auth.User fUser) {
    return User(
      id: UniqueId.fromUniqueString(fUser.uid),
      email: EmailAddress(email),
      displayName: displayName == null ? null : DisplayName(displayName!),
      photoUrl: photoUrl,
      filled: filled,
      male: male,
      dateOfBirth: dateOfBirth == null ? null : DateOfBirth(dateOfBirth!),
    );
  }
}
