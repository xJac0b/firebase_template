import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';

import '../../app/domain/errors.dart';
import '../../injection.dart';
import '../domain/i_auth_facade.dart';

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
