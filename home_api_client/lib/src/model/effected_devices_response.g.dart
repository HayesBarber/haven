// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'effected_devices_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EffectedDevicesResponse extends EffectedDevicesResponse {
  @override
  final BuiltList<DeviceConfig> devices;

  factory _$EffectedDevicesResponse(
          [void Function(EffectedDevicesResponseBuilder)? updates]) =>
      (EffectedDevicesResponseBuilder()..update(updates))._build();

  _$EffectedDevicesResponse._({required this.devices}) : super._();
  @override
  EffectedDevicesResponse rebuild(
          void Function(EffectedDevicesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EffectedDevicesResponseBuilder toBuilder() =>
      EffectedDevicesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EffectedDevicesResponse && devices == other.devices;
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
    return (newBuiltValueToStringHelper(r'EffectedDevicesResponse')
          ..add('devices', devices))
        .toString();
  }
}

class EffectedDevicesResponseBuilder
    implements
        Builder<EffectedDevicesResponse, EffectedDevicesResponseBuilder> {
  _$EffectedDevicesResponse? _$v;

  ListBuilder<DeviceConfig>? _devices;
  ListBuilder<DeviceConfig> get devices =>
      _$this._devices ??= ListBuilder<DeviceConfig>();
  set devices(ListBuilder<DeviceConfig>? devices) => _$this._devices = devices;

  EffectedDevicesResponseBuilder() {
    EffectedDevicesResponse._defaults(this);
  }

  EffectedDevicesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _devices = $v.devices.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EffectedDevicesResponse other) {
    _$v = other as _$EffectedDevicesResponse;
  }

  @override
  void update(void Function(EffectedDevicesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EffectedDevicesResponse build() => _build();

  _$EffectedDevicesResponse _build() {
    _$EffectedDevicesResponse _$result;
    try {
      _$result = _$v ??
          _$EffectedDevicesResponse._(
            devices: devices.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'devices';
        devices.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EffectedDevicesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
