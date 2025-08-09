import 'dart:convert';

import 'package:gatekeeper_client/gatekeeper_client.dart';
import 'package:haven/services/local_storage.dart';
import 'package:haven/utils/logger.dart';
import 'package:haven/utils/result.dart';

class ApiKeyService {
  ChallengeVerificationResponse? _apiKey;

  Future<Result<void, Exception>> _initAsync() async {
    try {
      final stored = await LocalStorage.I.read(StorageKey.apiKey);

      if (stored == null) {
        LOGGER.log('No API key stored');
        return const Success(null);
      }

      final mapFromStorage = json.decode(stored) as Map<String, dynamic>;

      _apiKey = serializers.deserializeWith(
        ChallengeVerificationResponse.serializer,
        mapFromStorage,
      );
      LOGGER.log('Loaded API key');
      return const Success(null);
    } catch (e) {
      return Failure(Exception('Failed to load API key: $e'));
    }
  }

  bool _isKeyValid() {
    int now = DateTime.now().millisecondsSinceEpoch;
    final connectTimeoutMs = 5000;
    return _apiKey != null &&
        _apiKey!.expiresAt.millisecondsSinceEpoch > now + connectTimeoutMs;
  }

  void _getApiKey() async {}
}
