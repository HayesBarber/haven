// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_theme_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteThemeRequest extends DeleteThemeRequest {
  @override
  final String name;

  factory _$DeleteThemeRequest(
          [void Function(DeleteThemeRequestBuilder)? updates]) =>
      (DeleteThemeRequestBuilder()..update(updates))._build();

  _$DeleteThemeRequest._({required this.name}) : super._();
  @override
  DeleteThemeRequest rebuild(
          void Function(DeleteThemeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteThemeRequestBuilder toBuilder() =>
      DeleteThemeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteThemeRequest && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteThemeRequest')
          ..add('name', name))
        .toString();
  }
}

class DeleteThemeRequestBuilder
    implements Builder<DeleteThemeRequest, DeleteThemeRequestBuilder> {
  _$DeleteThemeRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DeleteThemeRequestBuilder() {
    DeleteThemeRequest._defaults(this);
  }

  DeleteThemeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteThemeRequest other) {
    _$v = other as _$DeleteThemeRequest;
  }

  @override
  void update(void Function(DeleteThemeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteThemeRequest build() => _build();

  _$DeleteThemeRequest _build() {
    final _$result = _$v ??
        _$DeleteThemeRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'DeleteThemeRequest', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
