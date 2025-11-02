import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:haven/utils/extensions.dart';
import 'package:haven/utils/result.dart';

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

  Future<Result<Map<String, String>, Exception>> readAll() async {
    try {
      final all = (await _storage.readAll())
        ..[StorageKey.keyPair.name] =
            "\u00B7\u00B7\u00B7\u00B7\u00B7\u00B7\u00B7\u00B7\u00B7\u00B7";
      return Success(all.sortedByKey());
    } catch (e) {
      return Failure(Exception('Failed to read from local storage: $e'));
    }
  }
}
