import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

abstract class IStorageRepository {
  Future<void> uploadByPath(String path, File file);
  Future<void> uploadByRef(Reference ref, File file);
  Future<String> downloadByPath(String path);
  Future<String> downloadByRef(Reference ref);
}
