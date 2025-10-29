import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:haven/utils/extensions.dart';
import 'package:haven/utils/http_interceptors.dart';
import 'package:haven/utils/result.dart';
import 'package:home_api_client/home_api_client.dart';

class DiscoveryService {
  final _client = HomeApiClient(
    basePathOverride: dotenv.get('HOME_API_URL'),
    interceptors: HttpInterceptors.getInterceptors(addApiKey: true),
  );

  Future<Result<List<DeviceConfig>, Exception>> discoverLifx(
    DeviceType deviceType,
  ) async {
    try {
      final api = _client.getDiscoveryApi();

      final Response<DeviceDiscoveryResponse> response;
      if (deviceType == DeviceType.kasa) {
        response = await api.discoverKasaDiscoveryDiscoverKasaPost();
      } else if (deviceType == DeviceType.lifx) {
        response = await api.discoverLifxDiscoveryDiscoverLifxPost();
      } else {
        response = await api.discoverEspDiscoveryDiscoverEspPost(
          passcode: "",
          port: 0,
        );
      }
      response.assertValid();

      final data = response.data!;

      return Success(data.devices.toList());
    } catch (e) {
      return Failure(Exception('Failed to discover Lifx: $e'));
    }
  }
}
