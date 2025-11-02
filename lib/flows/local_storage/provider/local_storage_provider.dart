import 'package:flowkit/flowkit.dart';
import 'package:haven/services/local_storage.dart';
import 'package:haven/utils/result.dart';

class LocalStorageProvider extends NestedNavigatorProvider {
  LocalStorageProvider({required super.navKey}) {
    _init();
  }

  Map<String, String>? _storageData;
  Map<String, String>? get storageData => _storageData;
  bool _loading = false;
  bool get loading => _loading;

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
}
