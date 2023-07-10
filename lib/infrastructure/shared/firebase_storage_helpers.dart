import 'package:firebase_storage/firebase_storage.dart';

extension FirebaseStorageX on FirebaseStorage {
  Future<Reference> userAvatar(String uid) async =>
      FirebaseStorage.instance.ref().child('avatars/$uid.png');
}

// extension DocumentReferenceX on DocumentReference {
//   CollectionReference get entryCollection => collection('entries');
// }
