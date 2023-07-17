import 'package:firebase_storage/firebase_storage.dart';

extension FirebaseStorageX on FirebaseStorage {
  static Future<Reference> userAvatar(String uid) async =>
      FirebaseStorage.instance.ref().child('avatars/$uid.png');
}
