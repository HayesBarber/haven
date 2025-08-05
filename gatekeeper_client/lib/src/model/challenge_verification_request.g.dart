// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_verification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChallengeVerificationRequest extends ChallengeVerificationRequest {
  @override
  final String challengeId;
  @override
  final String clientId;
  @override
  final String signature;

  factory _$ChallengeVerificationRequest(
          [void Function(ChallengeVerificationRequestBuilder)? updates]) =>
      (ChallengeVerificationRequestBuilder()..update(updates))._build();

  _$ChallengeVerificationRequest._(
      {required this.challengeId,
      required this.clientId,
      required this.signature})
      : super._();
  @override
  ChallengeVerificationRequest rebuild(
          void Function(ChallengeVerificationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChallengeVerificationRequestBuilder toBuilder() =>
      ChallengeVerificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChallengeVerificationRequest &&
        challengeId == other.challengeId &&
        clientId == other.clientId &&
        signature == other.signature;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, challengeId.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, signature.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChallengeVerificationRequest')
          ..add('challengeId', challengeId)
          ..add('clientId', clientId)
          ..add('signature', signature))
        .toString();
  }
}

class ChallengeVerificationRequestBuilder
    implements
        Builder<ChallengeVerificationRequest,
            ChallengeVerificationRequestBuilder> {
  _$ChallengeVerificationRequest? _$v;

  String? _challengeId;
  String? get challengeId => _$this._challengeId;
  set challengeId(String? challengeId) => _$this._challengeId = challengeId;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _signature;
  String? get signature => _$this._signature;
  set signature(String? signature) => _$this._signature = signature;

  ChallengeVerificationRequestBuilder() {
    ChallengeVerificationRequest._defaults(this);
  }

  ChallengeVerificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _challengeId = $v.challengeId;
      _clientId = $v.clientId;
      _signature = $v.signature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChallengeVerificationRequest other) {
    _$v = other as _$ChallengeVerificationRequest;
  }

  @override
  void update(void Function(ChallengeVerificationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChallengeVerificationRequest build() => _build();

  _$ChallengeVerificationRequest _build() {
    final _$result = _$v ??
        _$ChallengeVerificationRequest._(
          challengeId: BuiltValueNullFieldError.checkNotNull(
              challengeId, r'ChallengeVerificationRequest', 'challengeId'),
          clientId: BuiltValueNullFieldError.checkNotNull(
              clientId, r'ChallengeVerificationRequest', 'clientId'),
          signature: BuiltValueNullFieldError.checkNotNull(
              signature, r'ChallengeVerificationRequest', 'signature'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
