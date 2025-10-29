// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_discovery_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceDiscoveryResponse extends DeviceDiscoveryResponse {
  @override
  final BuiltList<ControllableDevice>? controllableDevices;
  @override
  final BuiltList<InterfaceDevice>? interfaceDevices;

  factory _$DeviceDiscoveryResponse(
          [void Function(DeviceDiscoveryResponseBuilder)? updates]) =>
      (DeviceDiscoveryResponseBuilder()..update(updates))._build();

  _$DeviceDiscoveryResponse._({this.controllableDevices, this.interfaceDevices})
      : super._();
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
    return other is DeviceDiscoveryResponse &&
        controllableDevices == other.controllableDevices &&
        interfaceDevices == other.interfaceDevices;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, controllableDevices.hashCode);
    _$hash = $jc(_$hash, interfaceDevices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceDiscoveryResponse')
          ..add('controllableDevices', controllableDevices)
          ..add('interfaceDevices', interfaceDevices))
        .toString();
  }
}

class DeviceDiscoveryResponseBuilder
    implements
        Builder<DeviceDiscoveryResponse, DeviceDiscoveryResponseBuilder> {
  _$DeviceDiscoveryResponse? _$v;

  ListBuilder<ControllableDevice>? _controllableDevices;
  ListBuilder<ControllableDevice> get controllableDevices =>
      _$this._controllableDevices ??= ListBuilder<ControllableDevice>();
  set controllableDevices(
          ListBuilder<ControllableDevice>? controllableDevices) =>
      _$this._controllableDevices = controllableDevices;

  ListBuilder<InterfaceDevice>? _interfaceDevices;
  ListBuilder<InterfaceDevice> get interfaceDevices =>
      _$this._interfaceDevices ??= ListBuilder<InterfaceDevice>();
  set interfaceDevices(ListBuilder<InterfaceDevice>? interfaceDevices) =>
      _$this._interfaceDevices = interfaceDevices;

  DeviceDiscoveryResponseBuilder() {
    DeviceDiscoveryResponse._defaults(this);
  }

  DeviceDiscoveryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _controllableDevices = $v.controllableDevices?.toBuilder();
      _interfaceDevices = $v.interfaceDevices?.toBuilder();
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
            controllableDevices: _controllableDevices?.build(),
            interfaceDevices: _interfaceDevices?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'controllableDevices';
        _controllableDevices?.build();
        _$failedField = 'interfaceDevices';
        _interfaceDevices?.build();
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
