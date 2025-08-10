// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceConfig extends DeviceConfig {
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
  final String? lastUpdated;
  @override
  final bool? isOffline;
  @override
  final String? room;

  factory _$DeviceConfig([void Function(DeviceConfigBuilder)? updates]) =>
      (DeviceConfigBuilder()..update(updates))._build();

  _$DeviceConfig._(
      {required this.name,
      required this.ip,
      required this.mac,
      required this.type,
      required this.powerState,
      this.lastUpdated,
      this.isOffline,
      this.room})
      : super._();
  @override
  DeviceConfig rebuild(void Function(DeviceConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceConfigBuilder toBuilder() => DeviceConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceConfig &&
        name == other.name &&
        ip == other.ip &&
        mac == other.mac &&
        type == other.type &&
        powerState == other.powerState &&
        lastUpdated == other.lastUpdated &&
        isOffline == other.isOffline &&
        room == other.room;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, ip.hashCode);
    _$hash = $jc(_$hash, mac.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, powerState.hashCode);
    _$hash = $jc(_$hash, lastUpdated.hashCode);
    _$hash = $jc(_$hash, isOffline.hashCode);
    _$hash = $jc(_$hash, room.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceConfig')
          ..add('name', name)
          ..add('ip', ip)
          ..add('mac', mac)
          ..add('type', type)
          ..add('powerState', powerState)
          ..add('lastUpdated', lastUpdated)
          ..add('isOffline', isOffline)
          ..add('room', room))
        .toString();
  }
}

class DeviceConfigBuilder
    implements Builder<DeviceConfig, DeviceConfigBuilder> {
  _$DeviceConfig? _$v;

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

  String? _lastUpdated;
  String? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(String? lastUpdated) => _$this._lastUpdated = lastUpdated;

  bool? _isOffline;
  bool? get isOffline => _$this._isOffline;
  set isOffline(bool? isOffline) => _$this._isOffline = isOffline;

  String? _room;
  String? get room => _$this._room;
  set room(String? room) => _$this._room = room;

  DeviceConfigBuilder() {
    DeviceConfig._defaults(this);
  }

  DeviceConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _ip = $v.ip;
      _mac = $v.mac;
      _type = $v.type;
      _powerState = $v.powerState;
      _lastUpdated = $v.lastUpdated;
      _isOffline = $v.isOffline;
      _room = $v.room;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceConfig other) {
    _$v = other as _$DeviceConfig;
  }

  @override
  void update(void Function(DeviceConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceConfig build() => _build();

  _$DeviceConfig _build() {
    final _$result = _$v ??
        _$DeviceConfig._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'DeviceConfig', 'name'),
          ip: BuiltValueNullFieldError.checkNotNull(ip, r'DeviceConfig', 'ip'),
          mac: BuiltValueNullFieldError.checkNotNull(
              mac, r'DeviceConfig', 'mac'),
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'DeviceConfig', 'type'),
          powerState: BuiltValueNullFieldError.checkNotNull(
              powerState, r'DeviceConfig', 'powerState'),
          lastUpdated: lastUpdated,
          isOffline: isOffline,
          room: room,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
