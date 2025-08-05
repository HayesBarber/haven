// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_themes_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetThemesResponse extends GetThemesResponse {
  @override
  final BuiltMap<String, String> themes;

  factory _$GetThemesResponse(
          [void Function(GetThemesResponseBuilder)? updates]) =>
      (GetThemesResponseBuilder()..update(updates))._build();

  _$GetThemesResponse._({required this.themes}) : super._();
  @override
  GetThemesResponse rebuild(void Function(GetThemesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetThemesResponseBuilder toBuilder() =>
      GetThemesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetThemesResponse && themes == other.themes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, themes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetThemesResponse')
          ..add('themes', themes))
        .toString();
  }
}

class GetThemesResponseBuilder
    implements Builder<GetThemesResponse, GetThemesResponseBuilder> {
  _$GetThemesResponse? _$v;

  MapBuilder<String, String>? _themes;
  MapBuilder<String, String> get themes =>
      _$this._themes ??= MapBuilder<String, String>();
  set themes(MapBuilder<String, String>? themes) => _$this._themes = themes;

  GetThemesResponseBuilder() {
    GetThemesResponse._defaults(this);
  }

  GetThemesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _themes = $v.themes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetThemesResponse other) {
    _$v = other as _$GetThemesResponse;
  }

  @override
  void update(void Function(GetThemesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetThemesResponse build() => _build();

  _$GetThemesResponse _build() {
    _$GetThemesResponse _$result;
    try {
      _$result = _$v ??
          _$GetThemesResponse._(
            themes: themes.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'themes';
        themes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetThemesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
