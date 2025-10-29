// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkin_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckinRequest extends CheckinRequest {
  @override
  final String name;
  @override
  final String ip;
  @override
  final String mac;
  @override
  final DeviceType type;
  @override
  final PowerState? powerState;
  @override
  final String? room;
  @override
  final bool? returnResponse;

  factory _$CheckinRequest([void Function(CheckinRequestBuilder)? updates]) =>
      (CheckinRequestBuilder()..update(updates))._build();

  _$CheckinRequest._(
      {required this.name,
      required this.ip,
      required this.mac,
      required this.type,
      this.powerState,
      this.room,
      this.returnResponse})
      : super._();
  @override
  CheckinRequest rebuild(void Function(CheckinRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckinRequestBuilder toBuilder() => CheckinRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckinRequest &&
        name == other.name &&
        ip == other.ip &&
        mac == other.mac &&
        type == other.type &&
        powerState == other.powerState &&
        room == other.room &&
        returnResponse == other.returnResponse;
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
    _$hash = $jc(_$hash, returnResponse.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CheckinRequest')
          ..add('name', name)
          ..add('ip', ip)
          ..add('mac', mac)
          ..add('type', type)
          ..add('powerState', powerState)
          ..add('room', room)
          ..add('returnResponse', returnResponse))
        .toString();
  }
}

class CheckinRequestBuilder
    implements Builder<CheckinRequest, CheckinRequestBuilder> {
  _$CheckinRequest? _$v;

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

  bool? _returnResponse;
  bool? get returnResponse => _$this._returnResponse;
  set returnResponse(bool? returnResponse) =>
      _$this._returnResponse = returnResponse;

  CheckinRequestBuilder() {
    CheckinRequest._defaults(this);
  }

  CheckinRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _ip = $v.ip;
      _mac = $v.mac;
      _type = $v.type;
      _powerState = $v.powerState;
      _room = $v.room;
      _returnResponse = $v.returnResponse;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckinRequest other) {
    _$v = other as _$CheckinRequest;
  }

  @override
  void update(void Function(CheckinRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckinRequest build() => _build();

  _$CheckinRequest _build() {
    final _$result = _$v ??
        _$CheckinRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'CheckinRequest', 'name'),
          ip: BuiltValueNullFieldError.checkNotNull(
              ip, r'CheckinRequest', 'ip'),
          mac: BuiltValueNullFieldError.checkNotNull(
              mac, r'CheckinRequest', 'mac'),
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'CheckinRequest', 'type'),
          powerState: powerState,
          room: room,
          returnResponse: returnResponse,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
