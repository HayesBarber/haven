// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChallengeResponse extends ChallengeResponse {
  @override
  final String challengeId;
  @override
  final String challenge;
  @override
  final DateTime expiresAt;

  factory _$ChallengeResponse(
          [void Function(ChallengeResponseBuilder)? updates]) =>
      (ChallengeResponseBuilder()..update(updates))._build();

  _$ChallengeResponse._(
      {required this.challengeId,
      required this.challenge,
      required this.expiresAt})
      : super._();
  @override
  ChallengeResponse rebuild(void Function(ChallengeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChallengeResponseBuilder toBuilder() =>
      ChallengeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChallengeResponse &&
        challengeId == other.challengeId &&
        challenge == other.challenge &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, challengeId.hashCode);
    _$hash = $jc(_$hash, challenge.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChallengeResponse')
          ..add('challengeId', challengeId)
          ..add('challenge', challenge)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class ChallengeResponseBuilder
    implements Builder<ChallengeResponse, ChallengeResponseBuilder> {
  _$ChallengeResponse? _$v;

  String? _challengeId;
  String? get challengeId => _$this._challengeId;
  set challengeId(String? challengeId) => _$this._challengeId = challengeId;

  String? _challenge;
  String? get challenge => _$this._challenge;
  set challenge(String? challenge) => _$this._challenge = challenge;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  ChallengeResponseBuilder() {
    ChallengeResponse._defaults(this);
  }

  ChallengeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _challengeId = $v.challengeId;
      _challenge = $v.challenge;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChallengeResponse other) {
    _$v = other as _$ChallengeResponse;
  }

  @override
  void update(void Function(ChallengeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChallengeResponse build() => _build();

  _$ChallengeResponse _build() {
    final _$result = _$v ??
        _$ChallengeResponse._(
          challengeId: BuiltValueNullFieldError.checkNotNull(
              challengeId, r'ChallengeResponse', 'challengeId'),
          challenge: BuiltValueNullFieldError.checkNotNull(
              challenge, r'ChallengeResponse', 'challenge'),
          expiresAt: BuiltValueNullFieldError.checkNotNull(
              expiresAt, r'ChallengeResponse', 'expiresAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
