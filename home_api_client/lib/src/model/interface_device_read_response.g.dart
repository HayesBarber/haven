// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interface_device_read_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InterfaceDeviceReadResponse extends InterfaceDeviceReadResponse {
  @override
  final BuiltList<InterfaceDevice> devices;

  factory _$InterfaceDeviceReadResponse(
          [void Function(InterfaceDeviceReadResponseBuilder)? updates]) =>
      (InterfaceDeviceReadResponseBuilder()..update(updates))._build();

  _$InterfaceDeviceReadResponse._({required this.devices}) : super._();
  @override
  InterfaceDeviceReadResponse rebuild(
          void Function(InterfaceDeviceReadResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InterfaceDeviceReadResponseBuilder toBuilder() =>
      InterfaceDeviceReadResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InterfaceDeviceReadResponse && devices == other.devices;
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
    return (newBuiltValueToStringHelper(r'InterfaceDeviceReadResponse')
          ..add('devices', devices))
        .toString();
  }
}

class InterfaceDeviceReadResponseBuilder
    implements
        Builder<InterfaceDeviceReadResponse,
            InterfaceDeviceReadResponseBuilder> {
  _$InterfaceDeviceReadResponse? _$v;

  ListBuilder<InterfaceDevice>? _devices;
  ListBuilder<InterfaceDevice> get devices =>
      _$this._devices ??= ListBuilder<InterfaceDevice>();
  set devices(ListBuilder<InterfaceDevice>? devices) =>
      _$this._devices = devices;

  InterfaceDeviceReadResponseBuilder() {
    InterfaceDeviceReadResponse._defaults(this);
  }

  InterfaceDeviceReadResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _devices = $v.devices.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InterfaceDeviceReadResponse other) {
    _$v = other as _$InterfaceDeviceReadResponse;
  }

  @override
  void update(void Function(InterfaceDeviceReadResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InterfaceDeviceReadResponse build() => _build();

  _$InterfaceDeviceReadResponse _build() {
    _$InterfaceDeviceReadResponse _$result;
    try {
      _$result = _$v ??
          _$InterfaceDeviceReadResponse._(
            devices: devices.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'devices';
        devices.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InterfaceDeviceReadResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
