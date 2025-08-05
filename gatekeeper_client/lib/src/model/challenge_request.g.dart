// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChallengeRequest extends ChallengeRequest {
  @override
  final String clientId;

  factory _$ChallengeRequest(
          [void Function(ChallengeRequestBuilder)? updates]) =>
      (ChallengeRequestBuilder()..update(updates))._build();

  _$ChallengeRequest._({required this.clientId}) : super._();
  @override
  ChallengeRequest rebuild(void Function(ChallengeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChallengeRequestBuilder toBuilder() =>
      ChallengeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChallengeRequest && clientId == other.clientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChallengeRequest')
          ..add('clientId', clientId))
        .toString();
  }
}

class ChallengeRequestBuilder
    implements Builder<ChallengeRequest, ChallengeRequestBuilder> {
  _$ChallengeRequest? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  ChallengeRequestBuilder() {
    ChallengeRequest._defaults(this);
  }

  ChallengeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChallengeRequest other) {
    _$v = other as _$ChallengeRequest;
  }

  @override
  void update(void Function(ChallengeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChallengeRequest build() => _build();

  _$ChallengeRequest _build() {
    final _$result = _$v ??
        _$ChallengeRequest._(
          clientId: BuiltValueNullFieldError.checkNotNull(
              clientId, r'ChallengeRequest', 'clientId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
