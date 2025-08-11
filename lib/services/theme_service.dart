import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:haven/utils/http_interceptors.dart';
import 'package:home_api_client/home_api_client.dart';

class ThemeService {
  final _client = HomeApiClient(
    basePathOverride: dotenv.get('HOME_API_URL'),
    interceptors: HttpInterceptors.getInterceptors(addApiKey: true),
  );
  ThemeService._();
  static final ThemeService _instance = ThemeService._();
  static ThemeService get I => _instance;
}
