import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

extension NumDurationExtensions on num {
  Duration get microseconds => Duration(microseconds: round());
  Duration get ms => (this * 1000).microseconds;
  Duration get milliseconds => (this * 1000).microseconds;
  Duration get seconds => (this * 1000 * 1000).microseconds;
  Duration get minutes => (this * 1000 * 1000 * 60).microseconds;
  Duration get hours => (this * 1000 * 1000 * 60 * 60).microseconds;
  Duration get days => (this * 1000 * 1000 * 60 * 60 * 24).microseconds;
}

extension FuturePace<T> on Future<T> {
  Future<T> pace(int ms) {
    return Future.wait([
      this,
      Future.delayed(ms.milliseconds),
    ]).then((results) => results[0] as T);
  }
}

extension BuildContextExtension on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// screen width
  double get sw => MediaQuery.of(this).size.width;

  /// screen height
  double get sh => MediaQuery.of(this).size.height;
}

extension ResponseExtension<T> on Response<T?> {
  void assertValid({
    int expectedStatusCode = 200,
    bool assertDataNonNull = true,
  }) {
    final statusOk = statusCode == expectedStatusCode;
    final dataOk = !assertDataNonNull || data != null;

    if (!statusOk || !dataOk) {
      throw Exception(
        'Invalid response: expected HTTP $expectedStatusCode'
        '${assertDataNonNull ? " with non-null data" : ""}, '
        'but got statusCode=$statusCode, data=$data',
      );
    }
  }
}

extension DefaultMap<K, V extends Object> on Map<K, V> {
  V getOrDefault(K key, V defaultValue) {
    return this[key] ?? defaultValue;
  }
}
