import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/domain/value_objects.dart';
import '../../domain/user/user.dart';
import '../../domain/value_objects.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto(
      {String? id, bool? filled, DateTime? dateOfBirth, bool? male}) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    return UserDto.fromJson(doc.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

  const UserDto._();

  factory UserDto.fromDomain(User user) {
    return UserDto(
        filled: user.filled,
        dateOfBirth: user.dateOfBirth?.getOrCrash(),
        male: user.male);
  }


  User toDomain(firebase_auth.User fUser) {
    return User(
      id: UniqueId.fromUniqueString(id!),
      emailVerified: fUser.emailVerified,
      email: EmailAddress(fUser.email!),
      displayName: DisplayName(fUser.displayName ?? ''),
      photoUrl: fUser.photoURL,
      filled: filled,
      male: male,
      dateOfBirth: dateOfBirth == null ? null : DateOfBirth(dateOfBirth!),
    );
  }
}
