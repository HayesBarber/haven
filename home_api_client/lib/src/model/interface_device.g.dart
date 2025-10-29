// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interface_device.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InterfaceDevice extends InterfaceDevice {
  @override
  final String name;
  @override
  final String ip;
  @override
  final String mac;
  @override
  final DateTime? lastUpdated;
  @override
  final bool? espFlag;

  factory _$InterfaceDevice([void Function(InterfaceDeviceBuilder)? updates]) =>
      (InterfaceDeviceBuilder()..update(updates))._build();

  _$InterfaceDevice._(
      {required this.name,
      required this.ip,
      required this.mac,
      this.lastUpdated,
      this.espFlag})
      : super._();
  @override
  InterfaceDevice rebuild(void Function(InterfaceDeviceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InterfaceDeviceBuilder toBuilder() => InterfaceDeviceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InterfaceDevice &&
        name == other.name &&
        ip == other.ip &&
        mac == other.mac &&
        lastUpdated == other.lastUpdated &&
        espFlag == other.espFlag;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, ip.hashCode);
    _$hash = $jc(_$hash, mac.hashCode);
    _$hash = $jc(_$hash, lastUpdated.hashCode);
    _$hash = $jc(_$hash, espFlag.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InterfaceDevice')
          ..add('name', name)
          ..add('ip', ip)
          ..add('mac', mac)
          ..add('lastUpdated', lastUpdated)
          ..add('espFlag', espFlag))
        .toString();
  }
}

class InterfaceDeviceBuilder
    implements Builder<InterfaceDevice, InterfaceDeviceBuilder> {
  _$InterfaceDevice? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _ip;
  String? get ip => _$this._ip;
  set ip(String? ip) => _$this._ip = ip;

  String? _mac;
  String? get mac => _$this._mac;
  set mac(String? mac) => _$this._mac = mac;

  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(DateTime? lastUpdated) => _$this._lastUpdated = lastUpdated;

  bool? _espFlag;
  bool? get espFlag => _$this._espFlag;
  set espFlag(bool? espFlag) => _$this._espFlag = espFlag;

  InterfaceDeviceBuilder() {
    InterfaceDevice._defaults(this);
  }

  InterfaceDeviceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _ip = $v.ip;
      _mac = $v.mac;
      _lastUpdated = $v.lastUpdated;
      _espFlag = $v.espFlag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InterfaceDevice other) {
    _$v = other as _$InterfaceDevice;
  }

  @override
  void update(void Function(InterfaceDeviceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InterfaceDevice build() => _build();

  _$InterfaceDevice _build() {
    final _$result = _$v ??
        _$InterfaceDevice._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'InterfaceDevice', 'name'),
          ip: BuiltValueNullFieldError.checkNotNull(
              ip, r'InterfaceDevice', 'ip'),
          mac: BuiltValueNullFieldError.checkNotNull(
              mac, r'InterfaceDevice', 'mac'),
          lastUpdated: lastUpdated,
          espFlag: espFlag,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
