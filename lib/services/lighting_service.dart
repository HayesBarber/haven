import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:haven/utils/extensions.dart';
import 'package:haven/utils/http_interceptors.dart';
import 'package:haven/utils/result.dart';
import 'package:home_api_client/home_api_client.dart';

class LightingService {
  LightingService._();
  static final LightingService _instance = LightingService._();
  static LightingService get I => _instance;

  Future<Result<List<DeviceConfig>, Exception>> readDevices() async {
    try {
      final api = HomeApiClient(
        basePathOverride: dotenv.get('HOME_API_URL'),
        interceptors: HttpInterceptors.getInterceptors(),
      ).getDeviceApi();

      final response = await api.readAllDevicesDeviceReadGet();
      response.assertValid();

      final data = response.data!;

      return Success(data.devices.toList());
    } catch (e) {
      return Failure(Exception('Failed to read devices: $e'));
    }
  }
}
