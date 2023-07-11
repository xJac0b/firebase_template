import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

import '../../domain/auth/value_objects.dart';
import '../../domain/shared/value_objects.dart';
import '../../domain/user/user.dart';

extension FirebaseUserDomainX on firebase_auth.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      emailVerified: emailVerified,
      displayName: displayName == null ? null : DisplayName(displayName!),
      photoUrl: photoURL,
      email: EmailAddress(email!),
    );
  }
}
