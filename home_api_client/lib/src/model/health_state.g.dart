// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HealthState _$healthy = const HealthState._('healthy');
const HealthState _$moderate = const HealthState._('moderate');
const HealthState _$unhealthy = const HealthState._('unhealthy');

HealthState _$valueOf(String name) {
  switch (name) {
    case 'healthy':
      return _$healthy;
    case 'moderate':
      return _$moderate;
    case 'unhealthy':
      return _$unhealthy;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HealthState> _$values =
    BuiltSet<HealthState>(const <HealthState>[
  _$healthy,
  _$moderate,
  _$unhealthy,
]);

class _$HealthStateMeta {
  const _$HealthStateMeta();
  HealthState get healthy => _$healthy;
  HealthState get moderate => _$moderate;
  HealthState get unhealthy => _$unhealthy;
  HealthState valueOf(String name) => _$valueOf(name);
  BuiltSet<HealthState> get values => _$values;
}

abstract class _$HealthStateMixin {
  // ignore: non_constant_identifier_names
  _$HealthStateMeta get HealthState => const _$HealthStateMeta();
}

Serializer<HealthState> _$healthStateSerializer = _$HealthStateSerializer();

class _$HealthStateSerializer implements PrimitiveSerializer<HealthState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'healthy': 'healthy',
    'moderate': 'moderate',
    'unhealthy': 'unhealthy',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'healthy': 'healthy',
    'moderate': 'moderate',
    'unhealthy': 'unhealthy',
  };

  @override
  final Iterable<Type> types = const <Type>[HealthState];
  @override
  final String wireName = 'HealthState';

  @override
  Object serialize(Serializers serializers, HealthState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HealthState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HealthState.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
