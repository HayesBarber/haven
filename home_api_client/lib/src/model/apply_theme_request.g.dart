// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_theme_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApplyThemeRequest extends ApplyThemeRequest {
  @override
  final String colors;

  factory _$ApplyThemeRequest(
          [void Function(ApplyThemeRequestBuilder)? updates]) =>
      (ApplyThemeRequestBuilder()..update(updates))._build();

  _$ApplyThemeRequest._({required this.colors}) : super._();
  @override
  ApplyThemeRequest rebuild(void Function(ApplyThemeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplyThemeRequestBuilder toBuilder() =>
      ApplyThemeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplyThemeRequest && colors == other.colors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, colors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApplyThemeRequest')
          ..add('colors', colors))
        .toString();
  }
}

class ApplyThemeRequestBuilder
    implements Builder<ApplyThemeRequest, ApplyThemeRequestBuilder> {
  _$ApplyThemeRequest? _$v;

  String? _colors;
  String? get colors => _$this._colors;
  set colors(String? colors) => _$this._colors = colors;

  ApplyThemeRequestBuilder() {
    ApplyThemeRequest._defaults(this);
  }

  ApplyThemeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _colors = $v.colors;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplyThemeRequest other) {
    _$v = other as _$ApplyThemeRequest;
  }

  @override
  void update(void Function(ApplyThemeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplyThemeRequest build() => _build();

  _$ApplyThemeRequest _build() {
    final _$result = _$v ??
        _$ApplyThemeRequest._(
          colors: BuiltValueNullFieldError.checkNotNull(
              colors, r'ApplyThemeRequest', 'colors'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
