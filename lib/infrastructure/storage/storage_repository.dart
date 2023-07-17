import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

import '../../domain/storage/i_storage_repository.dart';

@LazySingleton(as: IStorageRepository)
class StorageRepository implements IStorageRepository {
  StorageRepository(this._firebaseStorage);

  final FirebaseStorage _firebaseStorage;

  @override
  Future<String> downloadByPath(String path) async =>
      _firebaseStorage.ref().child(path).getDownloadURL();

  @override
  Future<String> downloadByRef(Reference ref) async => ref.getDownloadURL();
  @override
  Future<void> uploadByPath(String path, File file) async =>
      await _firebaseStorage.ref().child(path).putFile(file);
  @override
  Future<void> uploadByRef(Reference ref, File file) async => ref.putFile(file);
}
