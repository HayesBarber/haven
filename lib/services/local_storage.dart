import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum StorageKey { username, keyPair }

class LocalStorage {
  LocalStorage._();
  static final LocalStorage _instance = LocalStorage._();
  static LocalStorage get I => _instance;

  final _storage = const FlutterSecureStorage();

  Future<void> write(StorageKey key, String value) async {
    await _storage.write(key: key.name, value: value);
  }

  Future<String?> read(StorageKey key) async {
    return await _storage.read(key: key.name);
  }

  Future<void> deleteAll() async {
    await _storage.deleteAll();
  }
}
