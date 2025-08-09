import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/foundation.dart';

enum StorageKey { username, keyPair, apiKey }

class LocalStorage extends ValueNotifier<MapEntry<StorageKey, String?>?> {
  LocalStorage._() : super(null);
  static final LocalStorage _instance = LocalStorage._();
  static LocalStorage get I => _instance;

  final _storage = const FlutterSecureStorage();

  Future<void> write(StorageKey key, String content) async {
    await _storage.write(key: key.name, value: content);
    value = MapEntry<StorageKey, String?>(key, content);
  }

  Future<String?> read(StorageKey key) async {
    return await _storage.read(key: key.name);
  }

  Future<void> delete(StorageKey key) async {
    await _storage.delete(key: key.name);
    value = MapEntry<StorageKey, String?>(key, null);
  }

  Future<void> deleteAll() async {
    await _storage.deleteAll();
    value = null;
  }
}
