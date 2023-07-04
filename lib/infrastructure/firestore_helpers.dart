import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';

import '../core/injection/injection.dart';
import '../domain/auth/i_auth_facade.dart';
import '../domain/shared/errors.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final user = getIt<IAuthFacade>()
        .getSignedInUser()
        .getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance.collection('users').doc(user.uid);
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get entryCollection => collection('entries');
}
