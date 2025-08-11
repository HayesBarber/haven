import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:haven/utils/extensions.dart';
import 'package:haven/utils/http_interceptors.dart';
import 'package:haven/utils/result.dart';
import 'package:home_api_client/home_api_client.dart';

class ThemeService {
  final _client = HomeApiClient(
    basePathOverride: dotenv.get('HOME_API_URL'),
    interceptors: HttpInterceptors.getInterceptors(addApiKey: true),
  );
  ThemeService._();
  static final ThemeService _instance = ThemeService._();
  static ThemeService get I => _instance;

  Future<Result<Map<String, String>, Exception>> readThemes() async {
    try {
      final api = _client.getThemesApi();

      final response = await api.getThemesThemesGet();
      response.assertValid();

      final data = response.data!;

      return Success(data.themes.toMap());
    } catch (e) {
      return Failure(Exception('Failed to read themes: $e'));
    }
  }

  Future<Result<List<DeviceConfig>, Exception>> applyTheme(String theme) async {
    try {
      final api = _client.getThemesApi();

      final req = ApplyThemeRequestBuilder()..colors = theme;

      final response = await api.applyThemeThemesApplyPost(
        applyThemeRequest: req.build(),
      );
      response.assertValid();

      final data = response.data!;

      return Success(data.devices.toList());
    } catch (e) {
      return Failure(Exception('Failed to apply theme: $e'));
    }
  }
}
