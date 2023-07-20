import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument(String uid) async =>
      FirebaseFirestore.instance.collection('users').doc(uid);

  Future<DocumentReference> counterDocument(String uid) async =>
      FirebaseFirestore.instance.collection('counters').doc(uid);
}

// extension DocumentReferenceX on DocumentReference {
//   CollectionReference get entryCollection => collection('entries');
// }
