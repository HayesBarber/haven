import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:haven/utils/extensions.dart';
import 'package:haven/utils/http_interceptors.dart';
import 'package:haven/utils/result.dart';
import 'package:home_api_client/home_api_client.dart';

class DeviceService {
  final _client = HomeApiClient(
    basePathOverride: dotenv.get('HOME_API_URL'),
    interceptors: HttpInterceptors.getInterceptors(addApiKey: true),
  );
  DeviceService._();
  static final DeviceService _instance = DeviceService._();
  static DeviceService get I => _instance;

  Future<Result<List<ControllableDevice>, Exception>>
  readControllableDevices() async {
    try {
      final api = _client.getDeviceApi();

      final response = await api.readAllDevicesDeviceReadGet();
      response.assertValid();

      final data = response.data!;

      return Success(data.devices.toList());
    } catch (e) {
      return Failure(Exception('Failed to read devices: $e'));
    }
  }
}
