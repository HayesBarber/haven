// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeatherResponse extends WeatherResponse {
  @override
  final String temperature;

  factory _$WeatherResponse([void Function(WeatherResponseBuilder)? updates]) =>
      (WeatherResponseBuilder()..update(updates))._build();

  _$WeatherResponse._({required this.temperature}) : super._();
  @override
  WeatherResponse rebuild(void Function(WeatherResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherResponseBuilder toBuilder() => WeatherResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherResponse && temperature == other.temperature;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, temperature.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherResponse')
          ..add('temperature', temperature))
        .toString();
  }
}

class WeatherResponseBuilder
    implements Builder<WeatherResponse, WeatherResponseBuilder> {
  _$WeatherResponse? _$v;

  String? _temperature;
  String? get temperature => _$this._temperature;
  set temperature(String? temperature) => _$this._temperature = temperature;

  WeatherResponseBuilder() {
    WeatherResponse._defaults(this);
  }

  WeatherResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _temperature = $v.temperature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherResponse other) {
    _$v = other as _$WeatherResponse;
  }

  @override
  void update(void Function(WeatherResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherResponse build() => _build();

  _$WeatherResponse _build() {
    final _$result = _$v ??
        _$WeatherResponse._(
          temperature: BuiltValueNullFieldError.checkNotNull(
              temperature, r'WeatherResponse', 'temperature'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
