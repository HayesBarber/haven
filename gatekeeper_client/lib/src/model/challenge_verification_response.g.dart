// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_verification_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChallengeVerificationResponse extends ChallengeVerificationResponse {
  @override
  final String apiKey;
  @override
  final DateTime expiresAt;

  factory _$ChallengeVerificationResponse(
          [void Function(ChallengeVerificationResponseBuilder)? updates]) =>
      (ChallengeVerificationResponseBuilder()..update(updates))._build();

  _$ChallengeVerificationResponse._(
      {required this.apiKey, required this.expiresAt})
      : super._();
  @override
  ChallengeVerificationResponse rebuild(
          void Function(ChallengeVerificationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChallengeVerificationResponseBuilder toBuilder() =>
      ChallengeVerificationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChallengeVerificationResponse &&
        apiKey == other.apiKey &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, apiKey.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChallengeVerificationResponse')
          ..add('apiKey', apiKey)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class ChallengeVerificationResponseBuilder
    implements
        Builder<ChallengeVerificationResponse,
            ChallengeVerificationResponseBuilder> {
  _$ChallengeVerificationResponse? _$v;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  ChallengeVerificationResponseBuilder() {
    ChallengeVerificationResponse._defaults(this);
  }

  ChallengeVerificationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiKey = $v.apiKey;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChallengeVerificationResponse other) {
    _$v = other as _$ChallengeVerificationResponse;
  }

  @override
  void update(void Function(ChallengeVerificationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChallengeVerificationResponse build() => _build();

  _$ChallengeVerificationResponse _build() {
    final _$result = _$v ??
        _$ChallengeVerificationResponse._(
          apiKey: BuiltValueNullFieldError.checkNotNull(
              apiKey, r'ChallengeVerificationResponse', 'apiKey'),
          expiresAt: BuiltValueNullFieldError.checkNotNull(
              expiresAt, r'ChallengeVerificationResponse', 'expiresAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
