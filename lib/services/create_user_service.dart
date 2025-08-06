import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:haven/services/local_storage.dart';
import 'package:haven/utils/result.dart';
import 'package:home_api_client/home_api_client.dart';

class CreateUserService {
  Future<Result<void, Exception>> createUser(String username) async {
    try {
      final api = HomeApiClient(
        basePathOverride: dotenv.get("CREATE_USER_URL"),
        interceptors: [],
      ).getUsersApi();

      final req = CreateUserRequestBuilder()
        ..name = username
        ..publicKey = "";

      final response = await api.createUserUsersPost(
        createUserRequest: req.build(),
      );

      if (response.statusCode != 200) {
        return Failure(
          Exception('Unexpected status code: ${response.statusCode}'),
        );
      }

      await LocalStorage.I.write('username', username);

      return const Success(null);
    } catch (e) {
      return Failure(Exception('Failed to create user: $e'));
    }
  }
}
