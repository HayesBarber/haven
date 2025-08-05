// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_discovery_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceDiscoveryResponse extends DeviceDiscoveryResponse {
  @override
  final BuiltList<DeviceConfig> devices;

  factory _$DeviceDiscoveryResponse(
          [void Function(DeviceDiscoveryResponseBuilder)? updates]) =>
      (DeviceDiscoveryResponseBuilder()..update(updates))._build();

  _$DeviceDiscoveryResponse._({required this.devices}) : super._();
  @override
  DeviceDiscoveryResponse rebuild(
          void Function(DeviceDiscoveryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceDiscoveryResponseBuilder toBuilder() =>
      DeviceDiscoveryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceDiscoveryResponse && devices == other.devices;
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
    return (newBuiltValueToStringHelper(r'DeviceDiscoveryResponse')
          ..add('devices', devices))
        .toString();
  }
}

class DeviceDiscoveryResponseBuilder
    implements
        Builder<DeviceDiscoveryResponse, DeviceDiscoveryResponseBuilder> {
  _$DeviceDiscoveryResponse? _$v;

  ListBuilder<DeviceConfig>? _devices;
  ListBuilder<DeviceConfig> get devices =>
      _$this._devices ??= ListBuilder<DeviceConfig>();
  set devices(ListBuilder<DeviceConfig>? devices) => _$this._devices = devices;

  DeviceDiscoveryResponseBuilder() {
    DeviceDiscoveryResponse._defaults(this);
  }

  DeviceDiscoveryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _devices = $v.devices.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceDiscoveryResponse other) {
    _$v = other as _$DeviceDiscoveryResponse;
  }

  @override
  void update(void Function(DeviceDiscoveryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceDiscoveryResponse build() => _build();

  _$DeviceDiscoveryResponse _build() {
    _$DeviceDiscoveryResponse _$result;
    try {
      _$result = _$v ??
          _$DeviceDiscoveryResponse._(
            devices: devices.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'devices';
        devices.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeviceDiscoveryResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
