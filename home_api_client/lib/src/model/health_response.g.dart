// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HealthResponse extends HealthResponse {
  @override
  final HealthState state;
  @override
  final BuiltSet<String>? missingDevices;
  @override
  final String? reason;

  factory _$HealthResponse([void Function(HealthResponseBuilder)? updates]) =>
      (HealthResponseBuilder()..update(updates))._build();

  _$HealthResponse._({required this.state, this.missingDevices, this.reason})
      : super._();
  @override
  HealthResponse rebuild(void Function(HealthResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HealthResponseBuilder toBuilder() => HealthResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthResponse &&
        state == other.state &&
        missingDevices == other.missingDevices &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, missingDevices.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HealthResponse')
          ..add('state', state)
          ..add('missingDevices', missingDevices)
          ..add('reason', reason))
        .toString();
  }
}

class HealthResponseBuilder
    implements Builder<HealthResponse, HealthResponseBuilder> {
  _$HealthResponse? _$v;

  HealthState? _state;
  HealthState? get state => _$this._state;
  set state(HealthState? state) => _$this._state = state;

  SetBuilder<String>? _missingDevices;
  SetBuilder<String> get missingDevices =>
      _$this._missingDevices ??= SetBuilder<String>();
  set missingDevices(SetBuilder<String>? missingDevices) =>
      _$this._missingDevices = missingDevices;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  HealthResponseBuilder() {
    HealthResponse._defaults(this);
  }

  HealthResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _missingDevices = $v.missingDevices?.toBuilder();
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HealthResponse other) {
    _$v = other as _$HealthResponse;
  }

  @override
  void update(void Function(HealthResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HealthResponse build() => _build();

  _$HealthResponse _build() {
    _$HealthResponse _$result;
    try {
      _$result = _$v ??
          _$HealthResponse._(
            state: BuiltValueNullFieldError.checkNotNull(
                state, r'HealthResponse', 'state'),
            missingDevices: _missingDevices?.build(),
            reason: reason,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'missingDevices';
        _missingDevices?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'HealthResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
