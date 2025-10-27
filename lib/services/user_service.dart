import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:haven/utils/extensions.dart';
import 'package:haven/utils/http_interceptors.dart';
import 'package:haven/utils/result.dart';
import 'package:home_api_client/home_api_client.dart';

class UserService {
  final _client = HomeApiClient(
    basePathOverride: dotenv.get('HOME_API_URL'),
    interceptors: HttpInterceptors.getInterceptors(addApiKey: true),
  );
  UserService._();
  static final UserService _instance = UserService._();
  static UserService get I => _instance;

  Future<Result<List<String>, Exception>> getUsers() async {
    try {
      final api = _client.getUsersApi();

      final response = await api.getUsersUsersGet();
      response.assertValid();

      final data = response.data!;

      return Success(data.users.toList());
    } catch (e) {
      return Failure(Exception('Failed to get users: $e'));
    }
  }
}
