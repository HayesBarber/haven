// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controllable_device.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ControllableDevice extends ControllableDevice {
  @override
  final String name;
  @override
  final String ip;
  @override
  final String mac;
  @override
  final DeviceType type;
  @override
  final PowerState powerState;
  @override
  final String? room;
  @override
  final DateTime? lastUpdated;
  @override
  final bool? espFlag;

  factory _$ControllableDevice(
          [void Function(ControllableDeviceBuilder)? updates]) =>
      (ControllableDeviceBuilder()..update(updates))._build();

  _$ControllableDevice._(
      {required this.name,
      required this.ip,
      required this.mac,
      required this.type,
      required this.powerState,
      this.room,
      this.lastUpdated,
      this.espFlag})
      : super._();
  @override
  ControllableDevice rebuild(
          void Function(ControllableDeviceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ControllableDeviceBuilder toBuilder() =>
      ControllableDeviceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ControllableDevice &&
        name == other.name &&
        ip == other.ip &&
        mac == other.mac &&
        type == other.type &&
        powerState == other.powerState &&
        room == other.room &&
        lastUpdated == other.lastUpdated &&
        espFlag == other.espFlag;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, ip.hashCode);
    _$hash = $jc(_$hash, mac.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, powerState.hashCode);
    _$hash = $jc(_$hash, room.hashCode);
    _$hash = $jc(_$hash, lastUpdated.hashCode);
    _$hash = $jc(_$hash, espFlag.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ControllableDevice')
          ..add('name', name)
          ..add('ip', ip)
          ..add('mac', mac)
          ..add('type', type)
          ..add('powerState', powerState)
          ..add('room', room)
          ..add('lastUpdated', lastUpdated)
          ..add('espFlag', espFlag))
        .toString();
  }
}

class ControllableDeviceBuilder
    implements Builder<ControllableDevice, ControllableDeviceBuilder> {
  _$ControllableDevice? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _ip;
  String? get ip => _$this._ip;
  set ip(String? ip) => _$this._ip = ip;

  String? _mac;
  String? get mac => _$this._mac;
  set mac(String? mac) => _$this._mac = mac;

  DeviceType? _type;
  DeviceType? get type => _$this._type;
  set type(DeviceType? type) => _$this._type = type;

  PowerState? _powerState;
  PowerState? get powerState => _$this._powerState;
  set powerState(PowerState? powerState) => _$this._powerState = powerState;

  String? _room;
  String? get room => _$this._room;
  set room(String? room) => _$this._room = room;

  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(DateTime? lastUpdated) => _$this._lastUpdated = lastUpdated;

  bool? _espFlag;
  bool? get espFlag => _$this._espFlag;
  set espFlag(bool? espFlag) => _$this._espFlag = espFlag;

  ControllableDeviceBuilder() {
    ControllableDevice._defaults(this);
  }

  ControllableDeviceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _ip = $v.ip;
      _mac = $v.mac;
      _type = $v.type;
      _powerState = $v.powerState;
      _room = $v.room;
      _lastUpdated = $v.lastUpdated;
      _espFlag = $v.espFlag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ControllableDevice other) {
    _$v = other as _$ControllableDevice;
  }

  @override
  void update(void Function(ControllableDeviceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ControllableDevice build() => _build();

  _$ControllableDevice _build() {
    final _$result = _$v ??
        _$ControllableDevice._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ControllableDevice', 'name'),
          ip: BuiltValueNullFieldError.checkNotNull(
              ip, r'ControllableDevice', 'ip'),
          mac: BuiltValueNullFieldError.checkNotNull(
              mac, r'ControllableDevice', 'mac'),
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'ControllableDevice', 'type'),
          powerState: BuiltValueNullFieldError.checkNotNull(
              powerState, r'ControllableDevice', 'powerState'),
          room: room,
          lastUpdated: lastUpdated,
          espFlag: espFlag,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
