import 'dart:io';

abstract class IStorageRepository {
  Future<void> upload(String path, File file);
  Future<void> uploadAvatar(String uid, File file);
  Future<String> download(String path);
  Future<String> downloadAvatar(String uid);
}
