// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'power_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PowerAction _$on_ = const PowerAction._('on_');
const PowerAction _$off = const PowerAction._('off');
const PowerAction _$toggle = const PowerAction._('toggle');

PowerAction _$valueOf(String name) {
  switch (name) {
    case 'on_':
      return _$on_;
    case 'off':
      return _$off;
    case 'toggle':
      return _$toggle;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PowerAction> _$values =
    BuiltSet<PowerAction>(const <PowerAction>[
  _$on_,
  _$off,
  _$toggle,
]);

class _$PowerActionMeta {
  const _$PowerActionMeta();
  PowerAction get on_ => _$on_;
  PowerAction get off => _$off;
  PowerAction get toggle => _$toggle;
  PowerAction valueOf(String name) => _$valueOf(name);
  BuiltSet<PowerAction> get values => _$values;
}

abstract class _$PowerActionMixin {
  // ignore: non_constant_identifier_names
  _$PowerActionMeta get PowerAction => const _$PowerActionMeta();
}

Serializer<PowerAction> _$powerActionSerializer = _$PowerActionSerializer();

class _$PowerActionSerializer implements PrimitiveSerializer<PowerAction> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'on_': 'on',
    'off': 'off',
    'toggle': 'toggle',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'on': 'on_',
    'off': 'off',
    'toggle': 'toggle',
  };

  @override
  final Iterable<Type> types = const <Type>[PowerAction];
  @override
  final String wireName = 'PowerAction';

  @override
  Object serialize(Serializers serializers, PowerAction object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PowerAction deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PowerAction.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
