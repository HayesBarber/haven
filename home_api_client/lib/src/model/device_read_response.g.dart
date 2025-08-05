// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_read_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceReadResponse extends DeviceReadResponse {
  @override
  final BuiltList<DeviceConfig> devices;

  factory _$DeviceReadResponse(
          [void Function(DeviceReadResponseBuilder)? updates]) =>
      (DeviceReadResponseBuilder()..update(updates))._build();

  _$DeviceReadResponse._({required this.devices}) : super._();
  @override
  DeviceReadResponse rebuild(
          void Function(DeviceReadResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceReadResponseBuilder toBuilder() =>
      DeviceReadResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceReadResponse && devices == other.devices;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, devices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceReadResponse')
          ..add('devices', devices))
        .toString();
  }
}

class DeviceReadResponseBuilder
    implements Builder<DeviceReadResponse, DeviceReadResponseBuilder> {
  _$DeviceReadResponse? _$v;

  ListBuilder<DeviceConfig>? _devices;
  ListBuilder<DeviceConfig> get devices =>
      _$this._devices ??= ListBuilder<DeviceConfig>();
  set devices(ListBuilder<DeviceConfig>? devices) => _$this._devices = devices;

  DeviceReadResponseBuilder() {
    DeviceReadResponse._defaults(this);
  }

  DeviceReadResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _devices = $v.devices.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceReadResponse other) {
    _$v = other as _$DeviceReadResponse;
  }

  @override
  void update(void Function(DeviceReadResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceReadResponse build() => _build();

  _$DeviceReadResponse _build() {
    _$DeviceReadResponse _$result;
    try {
      _$result = _$v ??
          _$DeviceReadResponse._(
            devices: devices.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'devices';
        devices.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeviceReadResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
