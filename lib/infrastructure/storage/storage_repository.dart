import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

import '../../domain/storage/i_storage_repository.dart';
import '../shared/firebase_storage_helpers.dart';

@LazySingleton(as: IStorageRepository)
class StorageRepository implements IStorageRepository {
  StorageRepository(this._firebaseStorage);

  final FirebaseStorage _firebaseStorage;

  @override
  Future<String> download(String path) async =>
      _firebaseStorage.ref().child(path).getDownloadURL();

  @override
  Future<String> downloadAvatar(String uid) =>
      _firebaseStorage.userAvatar(uid).then((ref) => ref.getDownloadURL());

  @override
  Future<void> upload(String path, File file) async =>
      await _firebaseStorage.ref().child(path).putFile(file);

  @override
  Future<void> uploadAvatar(String uid, File file) async =>
      _firebaseStorage.userAvatar(uid).then((ref) => ref.putFile(file));
}
