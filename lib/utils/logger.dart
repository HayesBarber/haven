import 'package:flutter/foundation.dart';

class LOGGER {
  static log(Object object) {
    if (kDebugMode) {
      print(object);
    }
  }

  static logWithTimestamp(Object object) {
    log('${DateTime.now()}: $object');
  }
}
