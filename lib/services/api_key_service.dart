import 'dart:convert';

import 'package:curveauth_dart/curveauth_dart.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gatekeeper_client/gatekeeper_client.dart';
import 'package:haven/services/local_storage.dart';
import 'package:haven/utils/app_config.dart';
import 'package:haven/utils/http_interceptors.dart';
import 'package:haven/utils/logger.dart';
import 'package:haven/utils/result.dart';

class ApiKeyService {
  ChallengeVerificationResponse? _apiKey;
  Future<Result<String, Exception>>? _inProgress;
  bool _initialized = false;

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
    } finally {
      _initialized = true;
    }
  }

  bool _isKeyValid() {
    int now = DateTime.now().millisecondsSinceEpoch;
    final connectTimeoutMs = 5000;
    return _apiKey != null &&
        _apiKey!.expiresAt.millisecondsSinceEpoch > now + connectTimeoutMs;
  }

  Future<Result<String, Exception>> getApiKey() async {
    if (!_initialized) {
      await _initAsync();
    }

    if (_inProgress != null) {
      LOGGER.log('getApiKey already in progress, returning existing future');
      return _inProgress!;
    }

    _inProgress = _getApiKey();

    try {
      return await _inProgress!;
    } finally {
      _inProgress = null;
    }
  }

  Future<Result<String, Exception>> _getApiKey() async {
    try {
      if (_isKeyValid()) {
        return Success(_apiKey!.apiKey);
      }
      LOGGER.log('API key is null or expired, fetching a new one');
      return await _fetchNewApiKey();
    } catch (e) {
      return Failure(Exception('Failed to get API key: $e'));
    }
  }

  Future<Result<String, Exception>> _fetchNewApiKey() async {
    try {
      final api = GatekeeperClient(
        basePathOverride: dotenv.get('GATEKEEPER_URL'),
        interceptors: HttpInterceptors.getInterceptors(),
      ).getChallengeApi();

      final challenge = await _generateChallenge(api);
      final signature = await _signChallenge(challenge);
      final verification = await _verifyChallenge(api, challenge, signature);

      _apiKey = verification;
      final serialized = serializers.serializeWith(
        ChallengeVerificationResponse.serializer,
        _apiKey,
      );
      final json = jsonEncode(serialized);
      await LocalStorage.I.write(StorageKey.apiKey, json);

      return Success(_apiKey!.apiKey);
    } catch (e) {
      return Failure(Exception('Failed to fetch new API key: $e'));
    }
  }

  Future<ChallengeResponse> _generateChallenge(ChallengeApi api) async {
    final challengeReq = ChallengeRequestBuilder()
      ..clientId = AppConfig.I.username;
    final challengeResponse = await api.generateChallengeChallengePost(
      challengeRequest: challengeReq.build(),
    );
    if (challengeResponse.statusCode != 200 || challengeResponse.data == null) {
      throw Exception('Failed to retrieve a challenge');
    }
    return challengeResponse.data!;
  }

  Future<String> _signChallenge(ChallengeResponse challenge) async {
    final keyPairJson = await LocalStorage.I.read(StorageKey.keyPair);
    if (keyPairJson == null) {
      throw ArgumentError('No key pair stored');
    }
    final keyPair = ECCKeyPair.fromJson(
      Map<String, String>.from(jsonDecode(keyPairJson)),
    );
    final signature = await keyPair.createSignature(challenge.challenge);
    return signature;
  }

  Future<ChallengeVerificationResponse> _verifyChallenge(
    ChallengeApi api,
    ChallengeResponse challenge,
    String signature,
  ) async {
    final verifyReq = ChallengeVerificationRequestBuilder()
      ..clientId = AppConfig.I.username
      ..challengeId = challenge.challengeId
      ..signature = signature;
    final verifyResponse = await api.verifyChallengeChallengeVerifyPost(
      challengeVerificationRequest: verifyReq.build(),
    );
    if (verifyResponse.statusCode != 200 || verifyResponse.data == null) {
      throw Exception('Failed to verify challenge');
    }
    return verifyResponse.data!;
  }
}
