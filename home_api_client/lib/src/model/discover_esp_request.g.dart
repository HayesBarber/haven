// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_esp_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DiscoverEspRequest extends DiscoverEspRequest {
  @override
  final String passcode;
  @override
  final int port;

  factory _$DiscoverEspRequest(
          [void Function(DiscoverEspRequestBuilder)? updates]) =>
      (DiscoverEspRequestBuilder()..update(updates))._build();

  _$DiscoverEspRequest._({required this.passcode, required this.port})
      : super._();
  @override
  DiscoverEspRequest rebuild(
          void Function(DiscoverEspRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiscoverEspRequestBuilder toBuilder() =>
      DiscoverEspRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiscoverEspRequest &&
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
    return (newBuiltValueToStringHelper(r'DiscoverEspRequest')
          ..add('passcode', passcode)
          ..add('port', port))
        .toString();
  }
}

class DiscoverEspRequestBuilder
    implements Builder<DiscoverEspRequest, DiscoverEspRequestBuilder> {
  _$DiscoverEspRequest? _$v;

  String? _passcode;
  String? get passcode => _$this._passcode;
  set passcode(String? passcode) => _$this._passcode = passcode;

  int? _port;
  int? get port => _$this._port;
  set port(int? port) => _$this._port = port;

  DiscoverEspRequestBuilder() {
    DiscoverEspRequest._defaults(this);
  }

  DiscoverEspRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passcode = $v.passcode;
      _port = $v.port;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiscoverEspRequest other) {
    _$v = other as _$DiscoverEspRequest;
  }

  @override
  void update(void Function(DiscoverEspRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DiscoverEspRequest build() => _build();

  _$DiscoverEspRequest _build() {
    final _$result = _$v ??
        _$DiscoverEspRequest._(
          passcode: BuiltValueNullFieldError.checkNotNull(
              passcode, r'DiscoverEspRequest', 'passcode'),
          port: BuiltValueNullFieldError.checkNotNull(
              port, r'DiscoverEspRequest', 'port'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
