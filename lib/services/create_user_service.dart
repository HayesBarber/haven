import 'dart:convert';
import 'package:curveauth_dart/curveauth_dart.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:haven/services/local_storage.dart';
import 'package:haven/utils/extensions.dart';
import 'package:haven/utils/http_interceptors.dart';
import 'package:haven/utils/result.dart';
import 'package:home_api_client/home_api_client.dart';

class CreateUserService {
  Future<Result<void, Exception>> createUser(String username) async {
    try {
      if (username.isEmpty) {
        throw ArgumentError("Username can not be empty");
      }

      final api = HomeApiClient(
        basePathOverride: dotenv.get("CREATE_USER_URL"),
        interceptors: HttpInterceptors.getInterceptors(),
      ).getUsersApi();

      final keyPair = ECCKeyPair.generate();

      final req = CreateUserRequestBuilder()
        ..name = username
        ..publicKey = keyPair.exportPublicKeyRawBase64();

      final response = await api.createUserUsersPost(
        createUserRequest: req.build(),
      );

      response.assertValid(assertDataNonNull: false);

      await LocalStorage.I.write(StorageKey.username, username);
      final json = jsonEncode(keyPair.toJson());
      await LocalStorage.I.write(StorageKey.keyPair, json);

      return const Success(null);
    } catch (e) {
      return Failure(Exception('Failed to create user: $e'));
    }
  }
}
