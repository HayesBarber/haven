//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:home_api_client/src/model/power_state.dart';
import 'package:home_api_client/src/model/device_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllable_device.g.dart';

/// ControllableDevice
///
/// Properties:
/// * [name] 
/// * [ip] 
/// * [mac] 
/// * [type] 
/// * [powerState] 
/// * [room] 
/// * [lastUpdated] 
/// * [espFlag] 
@BuiltValue()
abstract class ControllableDevice implements Built<ControllableDevice, ControllableDeviceBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'ip')
  String get ip;

  @BuiltValueField(wireName: r'mac')
  String get mac;

  @BuiltValueField(wireName: r'type')
  DeviceType get type;
  // enum typeEnum {  kasa,  lifx,  led_strip,  interface,  };

  @BuiltValueField(wireName: r'power_state')
  PowerState get powerState;
  // enum powerStateEnum {  on,  off,  };

  @BuiltValueField(wireName: r'room')
  String? get room;

  @BuiltValueField(wireName: r'last_updated')
  DateTime? get lastUpdated;

  @BuiltValueField(wireName: r'esp_flag')
  bool? get espFlag;

  ControllableDevice._();

  factory ControllableDevice([void updates(ControllableDeviceBuilder b)]) = _$ControllableDevice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllableDeviceBuilder b) => b
      ..room = 'Living Room'
      ..espFlag = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllableDevice> get serializer => _$ControllableDeviceSerializer();
}

class _$ControllableDeviceSerializer implements PrimitiveSerializer<ControllableDevice> {
  @override
  final Iterable<Type> types = const [ControllableDevice, _$ControllableDevice];

  @override
  final String wireName = r'ControllableDevice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllableDevice object, {
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
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(DeviceType),
    );
    yield r'power_state';
    yield serializers.serialize(
      object.powerState,
      specifiedType: const FullType(PowerState),
    );
    if (object.room != null) {
      yield r'room';
      yield serializers.serialize(
        object.room,
        specifiedType: const FullType(String),
      );
    }
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
    ControllableDevice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllableDeviceBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeviceType),
          ) as DeviceType;
          result.type = valueDes;
          break;
        case r'power_state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PowerState),
          ) as PowerState;
          result.powerState = valueDes;
          break;
        case r'room':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.room = valueDes;
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
  ControllableDevice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllableDeviceBuilder();
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

