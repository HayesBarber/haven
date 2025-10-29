//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'interface_device.g.dart';

/// InterfaceDevice
///
/// Properties:
/// * [name] 
/// * [ip] 
/// * [mac] 
/// * [lastUpdated] 
/// * [espFlag] 
@BuiltValue()
abstract class InterfaceDevice implements Built<InterfaceDevice, InterfaceDeviceBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'ip')
  String get ip;

  @BuiltValueField(wireName: r'mac')
  String get mac;

  @BuiltValueField(wireName: r'last_updated')
  DateTime? get lastUpdated;

  @BuiltValueField(wireName: r'esp_flag')
  bool? get espFlag;

  InterfaceDevice._();

  factory InterfaceDevice([void updates(InterfaceDeviceBuilder b)]) = _$InterfaceDevice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InterfaceDeviceBuilder b) => b
      ..espFlag = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<InterfaceDevice> get serializer => _$InterfaceDeviceSerializer();
}

class _$InterfaceDeviceSerializer implements PrimitiveSerializer<InterfaceDevice> {
  @override
  final Iterable<Type> types = const [InterfaceDevice, _$InterfaceDevice];

  @override
  final String wireName = r'InterfaceDevice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InterfaceDevice object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'ip';
    yield serializers.serialize(
      object.ip,
      specifiedType: const FullType(String),
    );
    yield r'mac';
    yield serializers.serialize(
      object.mac,
      specifiedType: const FullType(String),
    );
    if (object.lastUpdated != null) {
      yield r'last_updated';
      yield serializers.serialize(
        object.lastUpdated,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.espFlag != null) {
      yield r'esp_flag';
      yield serializers.serialize(
        object.espFlag,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InterfaceDevice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InterfaceDeviceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'ip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ip = valueDes;
          break;
        case r'mac':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mac = valueDes;
          break;
        case r'last_updated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastUpdated = valueDes;
          break;
        case r'esp_flag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.espFlag = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InterfaceDevice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InterfaceDeviceBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

