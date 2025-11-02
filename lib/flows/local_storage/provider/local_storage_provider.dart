import 'dart:io';

import 'package:flowkit/flowkit.dart';
import 'package:flutter/foundation.dart';
import 'package:haven/services/local_storage.dart';
import 'package:haven/utils/extensions.dart';
import 'package:haven/utils/result.dart';

class LocalStorageProvider extends NestedNavigatorProvider {
  LocalStorageProvider({required super.navKey}) {
    _init();
  }

  Map<String, String>? _storageData;
  Map<String, String>? get storageData => _storageData;
  bool _loading = false;
  bool get loading => _loading;
  String? _justCopiedKey;
  String? get justCopiedKey => _justCopiedKey;

  Future<void> _init() async {
    _loading = true;
    notifyListeners();

    final result = await LocalStorage.I.readAll();
    switch (result) {
      case Success(value: final data):
        _storageData = data;
      case Failure():
        _storageData = null;
    }

    _loading = false;
    notifyListeners();
  }

  void markCopied(String key) {
    _justCopiedKey = key;
    notifyListeners();
    Future.delayed(3.seconds, () {
      if (_justCopiedKey == key) {
        _justCopiedKey = null;
        notifyListeners();
      }
    });
  }

  Future<void> clearStorage() async {
    await LocalStorage.I.deleteAll().pace(2000);
    if (!kDebugMode) exit(0);
  }
}
