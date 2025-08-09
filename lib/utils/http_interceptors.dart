import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:haven/services/api_key_service.dart';
import 'package:haven/services/app_config.dart';
import 'package:haven/utils/logger.dart';
import 'package:dio/dio.dart';
import 'package:haven/utils/result.dart';

class HttpInterceptors {
  static final String _userAgent =
      dotenv.maybeGet('HTTP_USER_AGENT') ?? 'Haven-User-Agent';

  static List<Interceptor> getInterceptors({bool addApiKey = false}) {
    return [
      commonHeadersInterceptor(),
      if (addApiKey) apiKeyInterceptor(),
      if (kDebugMode) loggingInterceptor(),
    ];
  }

  static Interceptor apiKeyInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        final apiKey = await ApiKeyService.I.getApiKey().unwrapOr('invalid');
        options.headers['x-api-key'] = apiKey;
        handler.next(options);
      },
    );
  }

  static Interceptor commonHeadersInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        options.headers['User-Agent'] = _userAgent;
        options.headers['x-requestor-id'] = AppConfig.I.username;
        handler.next(options);
      },
    );
  }

  static Interceptor loggingInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        LOGGER.log('REQUEST[${options.method}] => URL: ${options.uri}');
        LOGGER.log('Body: ${options.data}');

        handler.next(options);
      },
      onResponse: (response, handler) {
        LOGGER.log(
          'RESPONSE[${response.statusCode}] => URL: ${response.requestOptions.uri}',
        );
        LOGGER.log('Response Body: ${response.data}');

        handler.next(response);
      },
      onError: (err, handler) {
        LOGGER.log(
          'ERROR[${err.response?.statusCode}] => URL: ${err.requestOptions.uri}',
        );
        LOGGER.log('Error Message: ${err.message}');
        if (err.response != null) {
          LOGGER.log('Error Body: ${err.response?.data}');
        }
        handler.next(err);
      },
    );
  }
}
