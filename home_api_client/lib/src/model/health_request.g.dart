// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HealthRequest extends HealthRequest {
  @override
  final String passcode;
  @override
  final int port;

  factory _$HealthRequest([void Function(HealthRequestBuilder)? updates]) =>
      (HealthRequestBuilder()..update(updates))._build();

  _$HealthRequest._({required this.passcode, required this.port}) : super._();
  @override
  HealthRequest rebuild(void Function(HealthRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HealthRequestBuilder toBuilder() => HealthRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthRequest &&
        passcode == other.passcode &&
        port == other.port;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, passcode.hashCode);
    _$hash = $jc(_$hash, port.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HealthRequest')
          ..add('passcode', passcode)
          ..add('port', port))
        .toString();
  }
}

class HealthRequestBuilder
    implements Builder<HealthRequest, HealthRequestBuilder> {
  _$HealthRequest? _$v;

  String? _passcode;
  String? get passcode => _$this._passcode;
  set passcode(String? passcode) => _$this._passcode = passcode;

  int? _port;
  int? get port => _$this._port;
  set port(int? port) => _$this._port = port;

  HealthRequestBuilder() {
    HealthRequest._defaults(this);
  }

  HealthRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passcode = $v.passcode;
      _port = $v.port;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HealthRequest other) {
    _$v = other as _$HealthRequest;
  }

  @override
  void update(void Function(HealthRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HealthRequest build() => _build();

  _$HealthRequest _build() {
    final _$result = _$v ??
        _$HealthRequest._(
          passcode: BuiltValueNullFieldError.checkNotNull(
              passcode, r'HealthRequest', 'passcode'),
          port: BuiltValueNullFieldError.checkNotNull(
              port, r'HealthRequest', 'port'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
