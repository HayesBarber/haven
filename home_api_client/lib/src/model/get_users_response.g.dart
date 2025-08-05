// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_users_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUsersResponse extends GetUsersResponse {
  @override
  final BuiltList<String> users;

  factory _$GetUsersResponse(
          [void Function(GetUsersResponseBuilder)? updates]) =>
      (GetUsersResponseBuilder()..update(updates))._build();

  _$GetUsersResponse._({required this.users}) : super._();
  @override
  GetUsersResponse rebuild(void Function(GetUsersResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsersResponseBuilder toBuilder() =>
      GetUsersResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsersResponse && users == other.users;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, users.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetUsersResponse')
          ..add('users', users))
        .toString();
  }
}

class GetUsersResponseBuilder
    implements Builder<GetUsersResponse, GetUsersResponseBuilder> {
  _$GetUsersResponse? _$v;

  ListBuilder<String>? _users;
  ListBuilder<String> get users => _$this._users ??= ListBuilder<String>();
  set users(ListBuilder<String>? users) => _$this._users = users;

  GetUsersResponseBuilder() {
    GetUsersResponse._defaults(this);
  }

  GetUsersResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _users = $v.users.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUsersResponse other) {
    _$v = other as _$GetUsersResponse;
  }

  @override
  void update(void Function(GetUsersResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUsersResponse build() => _build();

  _$GetUsersResponse _build() {
    _$GetUsersResponse _$result;
    try {
      _$result = _$v ??
          _$GetUsersResponse._(
            users: users.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetUsersResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
