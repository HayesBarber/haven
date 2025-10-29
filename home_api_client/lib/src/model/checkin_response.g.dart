// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkin_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckinResponse extends CheckinResponse {
  @override
  final BuiltList<String> deviceNames;
  @override
  final BuiltList<String> themeNames;
  @override
  final BuiltList<String> themeColors;
  @override
  final String epochTimeSeconds;
  @override
  final BuiltList<String> extras;
  @override
  final BuiltList<String> extrasFontSizes;

  factory _$CheckinResponse([void Function(CheckinResponseBuilder)? updates]) =>
      (CheckinResponseBuilder()..update(updates))._build();

  _$CheckinResponse._(
      {required this.deviceNames,
      required this.themeNames,
      required this.themeColors,
      required this.epochTimeSeconds,
      required this.extras,
      required this.extrasFontSizes})
      : super._();
  @override
  CheckinResponse rebuild(void Function(CheckinResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckinResponseBuilder toBuilder() => CheckinResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckinResponse &&
        deviceNames == other.deviceNames &&
        themeNames == other.themeNames &&
        themeColors == other.themeColors &&
        epochTimeSeconds == other.epochTimeSeconds &&
        extras == other.extras &&
        extrasFontSizes == other.extrasFontSizes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceNames.hashCode);
    _$hash = $jc(_$hash, themeNames.hashCode);
    _$hash = $jc(_$hash, themeColors.hashCode);
    _$hash = $jc(_$hash, epochTimeSeconds.hashCode);
    _$hash = $jc(_$hash, extras.hashCode);
    _$hash = $jc(_$hash, extrasFontSizes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CheckinResponse')
          ..add('deviceNames', deviceNames)
          ..add('themeNames', themeNames)
          ..add('themeColors', themeColors)
          ..add('epochTimeSeconds', epochTimeSeconds)
          ..add('extras', extras)
          ..add('extrasFontSizes', extrasFontSizes))
        .toString();
  }
}

class CheckinResponseBuilder
    implements Builder<CheckinResponse, CheckinResponseBuilder> {
  _$CheckinResponse? _$v;

  ListBuilder<String>? _deviceNames;
  ListBuilder<String> get deviceNames =>
      _$this._deviceNames ??= ListBuilder<String>();
  set deviceNames(ListBuilder<String>? deviceNames) =>
      _$this._deviceNames = deviceNames;

  ListBuilder<String>? _themeNames;
  ListBuilder<String> get themeNames =>
      _$this._themeNames ??= ListBuilder<String>();
  set themeNames(ListBuilder<String>? themeNames) =>
      _$this._themeNames = themeNames;

  ListBuilder<String>? _themeColors;
  ListBuilder<String> get themeColors =>
      _$this._themeColors ??= ListBuilder<String>();
  set themeColors(ListBuilder<String>? themeColors) =>
      _$this._themeColors = themeColors;

  String? _epochTimeSeconds;
  String? get epochTimeSeconds => _$this._epochTimeSeconds;
  set epochTimeSeconds(String? epochTimeSeconds) =>
      _$this._epochTimeSeconds = epochTimeSeconds;

  ListBuilder<String>? _extras;
  ListBuilder<String> get extras => _$this._extras ??= ListBuilder<String>();
  set extras(ListBuilder<String>? extras) => _$this._extras = extras;

  ListBuilder<String>? _extrasFontSizes;
  ListBuilder<String> get extrasFontSizes =>
      _$this._extrasFontSizes ??= ListBuilder<String>();
  set extrasFontSizes(ListBuilder<String>? extrasFontSizes) =>
      _$this._extrasFontSizes = extrasFontSizes;

  CheckinResponseBuilder() {
    CheckinResponse._defaults(this);
  }

  CheckinResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceNames = $v.deviceNames.toBuilder();
      _themeNames = $v.themeNames.toBuilder();
      _themeColors = $v.themeColors.toBuilder();
      _epochTimeSeconds = $v.epochTimeSeconds;
      _extras = $v.extras.toBuilder();
      _extrasFontSizes = $v.extrasFontSizes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckinResponse other) {
    _$v = other as _$CheckinResponse;
  }

  @override
  void update(void Function(CheckinResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckinResponse build() => _build();

  _$CheckinResponse _build() {
    _$CheckinResponse _$result;
    try {
      _$result = _$v ??
          _$CheckinResponse._(
            deviceNames: deviceNames.build(),
            themeNames: themeNames.build(),
            themeColors: themeColors.build(),
            epochTimeSeconds: BuiltValueNullFieldError.checkNotNull(
                epochTimeSeconds, r'CheckinResponse', 'epochTimeSeconds'),
            extras: extras.build(),
            extrasFontSizes: extrasFontSizes.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deviceNames';
        deviceNames.build();
        _$failedField = 'themeNames';
        themeNames.build();
        _$failedField = 'themeColors';
        themeColors.build();

        _$failedField = 'extras';
        extras.build();
        _$failedField = 'extrasFontSizes';
        extrasFontSizes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CheckinResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
