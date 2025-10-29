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

  Future<Result<List<ControllableDevice>, Exception>> applyTheme(
    String theme,
  ) async {
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

  Future<Result<Map<String, String>, Exception>> createTheme(
    String name,
    String theme,
  ) async {
    try {
      final api = _client.getThemesApi();

      final req = CreateThemeRequestBuilder()
        ..name = name
        ..colors = theme;

      final response = await api.createThemeThemesPost(
        createThemeRequest: req.build(),
      );
      response.assertValid();

      final data = response.data!;

      return Success(data.themes.toMap());
    } catch (e) {
      return Failure(Exception('Failed to create theme: $e'));
    }
  }

  Future<Result<Map<String, String>, Exception>> deleteTheme(
    String name,
  ) async {
    try {
      final api = _client.getThemesApi();

      final req = DeleteThemeRequestBuilder()..name = name;

      final response = await api.deleteThemeThemesDelete(
        deleteThemeRequest: req.build(),
      );
      response.assertValid();

      final data = response.data!;

      return Success(data.themes.toMap());
    } catch (e) {
      return Failure(Exception('Failed to delete theme: $e'));
    }
  }
}
