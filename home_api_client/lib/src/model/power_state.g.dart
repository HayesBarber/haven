// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'power_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PowerState _$on_ = const PowerState._('on_');
const PowerState _$off = const PowerState._('off');

PowerState _$valueOf(String name) {
  switch (name) {
    case 'on_':
      return _$on_;
    case 'off':
      return _$off;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PowerState> _$values = BuiltSet<PowerState>(const <PowerState>[
  _$on_,
  _$off,
]);

class _$PowerStateMeta {
  const _$PowerStateMeta();
  PowerState get on_ => _$on_;
  PowerState get off => _$off;
  PowerState valueOf(String name) => _$valueOf(name);
  BuiltSet<PowerState> get values => _$values;
}

abstract class _$PowerStateMixin {
  // ignore: non_constant_identifier_names
  _$PowerStateMeta get PowerState => const _$PowerStateMeta();
}

Serializer<PowerState> _$powerStateSerializer = _$PowerStateSerializer();

class _$PowerStateSerializer implements PrimitiveSerializer<PowerState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'on_': 'on',
    'off': 'off',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'on': 'on_',
    'off': 'off',
  };

  @override
  final Iterable<Type> types = const <Type>[PowerState];
  @override
  final String wireName = 'PowerState';

  @override
  Object serialize(Serializers serializers, PowerState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PowerState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PowerState.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
