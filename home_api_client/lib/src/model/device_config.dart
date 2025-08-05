//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:home_api_client/src/model/power_state.dart';
import 'package:home_api_client/src/model/room.dart';
import 'package:home_api_client/src/model/device_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_config.g.dart';

/// DeviceConfig
///
/// Properties:
/// * [name] 
/// * [ip] 
/// * [mac] 
/// * [type] 
/// * [powerState] 
/// * [lastUpdated] 
/// * [isOffline] 
/// * [room] 
@BuiltValue()
abstract class DeviceConfig implements Built<DeviceConfig, DeviceConfigBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'ip')
  String get ip;

  @BuiltValueField(wireName: r'mac')
  String get mac;

  @BuiltValueField(wireName: r'type')
  DeviceType get type;
  // enum typeEnum {  kasa,  lifx,  led_strip,  };

  @BuiltValueField(wireName: r'power_state')
  PowerState get powerState;
  // enum powerStateEnum {  on,  off,  };

  @BuiltValueField(wireName: r'last_updated')
  String? get lastUpdated;

  @BuiltValueField(wireName: r'is_offline')
  bool? get isOffline;

  @BuiltValueField(wireName: r'room')
  Room? get room;
  // enum roomEnum {  bedroom,  living_room,  upstairs,  };

  DeviceConfig._();

  factory DeviceConfig([void updates(DeviceConfigBuilder b)]) = _$DeviceConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceConfigBuilder b) => b
      ..isOffline = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceConfig> get serializer => _$DeviceConfigSerializer();
}

class _$DeviceConfigSerializer implements PrimitiveSerializer<DeviceConfig> {
  @override
  final Iterable<Type> types = const [DeviceConfig, _$DeviceConfig];

  @override
  final String wireName = r'DeviceConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceConfig object, {
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
    if (object.lastUpdated != null) {
      yield r'last_updated';
      yield serializers.serialize(
        object.lastUpdated,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isOffline != null) {
      yield r'is_offline';
      yield serializers.serialize(
        object.isOffline,
        specifiedType: const FullType(bool),
      );
    }
    if (object.room != null) {
      yield r'room';
      yield serializers.serialize(
        object.room,
        specifiedType: const FullType.nullable(Room),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviceConfigBuilder result,
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
        case r'last_updated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastUpdated = valueDes;
          break;
        case r'is_offline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isOffline = valueDes;
          break;
        case r'room':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Room),
          ) as Room?;
          if (valueDes == null) continue;
          result.room = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviceConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceConfigBuilder();
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

