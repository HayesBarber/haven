import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  LocalStorage._();
  static final LocalStorage _instance = LocalStorage._();
  static LocalStorage get I => _instance;

  final _storage = const FlutterSecureStorage();

  Future<void> write(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  Future<String?> read(String key) async {
    return await _storage.read(key: key);
  }

  Future<void> deleteAll() async {
    await _storage.deleteAll();
  }
}
