import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:haven/utils/http_interceptors.dart';
import 'package:home_api_client/home_api_client.dart';

class DiscoveryService {
  final _client = HomeApiClient(
    basePathOverride: dotenv.get('HOME_API_URL'),
    interceptors: HttpInterceptors.getInterceptors(addApiKey: true),
  );
}
