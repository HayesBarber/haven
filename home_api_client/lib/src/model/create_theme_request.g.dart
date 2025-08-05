// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_theme_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateThemeRequest extends CreateThemeRequest {
  @override
  final String name;
  @override
  final String colors;

  factory _$CreateThemeRequest(
          [void Function(CreateThemeRequestBuilder)? updates]) =>
      (CreateThemeRequestBuilder()..update(updates))._build();

  _$CreateThemeRequest._({required this.name, required this.colors})
      : super._();
  @override
  CreateThemeRequest rebuild(
          void Function(CreateThemeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateThemeRequestBuilder toBuilder() =>
      CreateThemeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateThemeRequest &&
        name == other.name &&
        colors == other.colors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, colors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateThemeRequest')
          ..add('name', name)
          ..add('colors', colors))
        .toString();
  }
}

class CreateThemeRequestBuilder
    implements Builder<CreateThemeRequest, CreateThemeRequestBuilder> {
  _$CreateThemeRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _colors;
  String? get colors => _$this._colors;
  set colors(String? colors) => _$this._colors = colors;

  CreateThemeRequestBuilder() {
    CreateThemeRequest._defaults(this);
  }

  CreateThemeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _colors = $v.colors;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateThemeRequest other) {
    _$v = other as _$CreateThemeRequest;
  }

  @override
  void update(void Function(CreateThemeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateThemeRequest build() => _build();

  _$CreateThemeRequest _build() {
    final _$result = _$v ??
        _$CreateThemeRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'CreateThemeRequest', 'name'),
          colors: BuiltValueNullFieldError.checkNotNull(
              colors, r'CreateThemeRequest', 'colors'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
