import 'package:haven/services/local_storage.dart';
import 'package:haven/utils/logger.dart';
import 'package:haven/utils/result.dart';

class AppConfig {
  String _username = '';

  AppConfig._();
  static final AppConfig _instance = AppConfig._();
  static AppConfig get I => _instance;

  String get username => _username;
  bool get isNewUser => _username.isEmpty;

  Future<Result<void, Exception>> initAsync() async {
    try {
      _username = await LocalStorage.I.read(StorageKey.username) ?? '';

      if (_username.isEmpty) {
        LOGGER.log('No username found');
      } else {
        LOGGER.log('Found username: $_username');
      }

      return Success(null);
    } catch (e) {
      return Failure(Exception('Failed to initialize app config: $e'));
    }
  }
}
