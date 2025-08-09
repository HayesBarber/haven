import 'package:gatekeeper_client/gatekeeper_client.dart';
import 'package:haven/services/local_storage.dart';

class ApiKeyService {
  ChallengeVerificationResponse? _apiKey;

  Future<void> _initAsync() async {
    final stored = await LocalStorage.I.read(StorageKey.apiKey);

    if (stored == null) return;
  }

  void _getApiKey() async {}
}
