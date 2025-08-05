// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeviceType _$kasa = const DeviceType._('kasa');
const DeviceType _$lifx = const DeviceType._('lifx');
const DeviceType _$ledStrip = const DeviceType._('ledStrip');

DeviceType _$valueOf(String name) {
  switch (name) {
    case 'kasa':
      return _$kasa;
    case 'lifx':
      return _$lifx;
    case 'ledStrip':
      return _$ledStrip;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DeviceType> _$values = BuiltSet<DeviceType>(const <DeviceType>[
  _$kasa,
  _$lifx,
  _$ledStrip,
]);

class _$DeviceTypeMeta {
  const _$DeviceTypeMeta();
  DeviceType get kasa => _$kasa;
  DeviceType get lifx => _$lifx;
  DeviceType get ledStrip => _$ledStrip;
  DeviceType valueOf(String name) => _$valueOf(name);
  BuiltSet<DeviceType> get values => _$values;
}

abstract class _$DeviceTypeMixin {
  // ignore: non_constant_identifier_names
  _$DeviceTypeMeta get DeviceType => const _$DeviceTypeMeta();
}

Serializer<DeviceType> _$deviceTypeSerializer = _$DeviceTypeSerializer();

class _$DeviceTypeSerializer implements PrimitiveSerializer<DeviceType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'kasa': 'kasa',
    'lifx': 'lifx',
    'ledStrip': 'led_strip',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'kasa': 'kasa',
    'lifx': 'lifx',
    'led_strip': 'ledStrip',
  };

  @override
  final Iterable<Type> types = const <Type>[DeviceType];
  @override
  final String wireName = 'DeviceType';

  @override
  Object serialize(Serializers serializers, DeviceType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DeviceType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeviceType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
