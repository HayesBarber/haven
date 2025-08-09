import 'dart:convert';

import 'package:curveauth_dart/curveauth_dart.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gatekeeper_client/gatekeeper_client.dart';
import 'package:haven/services/local_storage.dart';
import 'package:haven/utils/http_interceptors.dart';
import 'package:haven/utils/logger.dart';
import 'package:haven/utils/result.dart';

class ApiKeyService {
  ChallengeVerificationResponse? _apiKey;

  ApiKeyService._();
  static final ApiKeyService _instance = ApiKeyService._();
  static ApiKeyService get I => _instance;

  Future<Result<void, Exception>> _initAsync() async {
    try {
      final stored = await LocalStorage.I.read(StorageKey.apiKey);

      if (stored == null) {
        LOGGER.log('No API key stored');
        return const Success(null);
      }

      final mapFromStorage = jsonDecode(stored) as Map<String, dynamic>;

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

  Future<Result<String, Exception>> _getApiKey() async {
    try {
      if (_isKeyValid()) {
        return Success(_apiKey!.apiKey);
      }

      LOGGER.log('API key is null or expired, fetching a new one');

      final api = GatekeeperClient(
        basePathOverride: dotenv.get('GATEKEEPER_URL'),
        interceptors: HttpInterceptors.getInterceptors(),
      ).getChallengeApi();

      final challengeReq = ChallengeRequestBuilder()..clientId = "TODO";

      final challengeResponse = await api.generateChallengeChallengePost(
        challengeRequest: challengeReq.build(),
      );

      if (challengeResponse.statusCode != 200 ||
          challengeResponse.data == null) {
        throw Exception('Failed to retrieve a challenge');
      }

      final challenge = challengeResponse.data!;

      final keyPairJson = await LocalStorage.I.read(StorageKey.keyPair);
      if (keyPairJson == null) {
        throw ArgumentError('No key pair stored');
      }
      final keyPair = ECCKeyPair.fromJson(
        Map<String, String>.from(jsonDecode(keyPairJson)),
      );

      final signature = await keyPair.createSignature(challenge.challenge);

      final verifyReq = ChallengeVerificationRequestBuilder()
        ..clientId = "TODO"
        ..challengeId = challenge.challengeId
        ..signature = signature;
    } catch (e) {
      return Failure(Exception('Failed to get API key: $e'));
    }
  }
}
