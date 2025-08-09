import 'package:haven/utils/logger.dart';
import 'package:dio/dio.dart';

class HttpInterceptors {
  static InterceptorsWrapper loggingInterceptor() {
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
