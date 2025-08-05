//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:home_api_client/src/model/device_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_discovery_response.g.dart';

/// DeviceDiscoveryResponse
///
/// Properties:
/// * [devices] 
@BuiltValue()
abstract class DeviceDiscoveryResponse implements Built<DeviceDiscoveryResponse, DeviceDiscoveryResponseBuilder> {
  @BuiltValueField(wireName: r'devices')
  BuiltList<DeviceConfig> get devices;

  DeviceDiscoveryResponse._();

  factory DeviceDiscoveryResponse([void updates(DeviceDiscoveryResponseBuilder b)]) = _$DeviceDiscoveryResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceDiscoveryResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceDiscoveryResponse> get serializer => _$DeviceDiscoveryResponseSerializer();
}

class _$DeviceDiscoveryResponseSerializer implements PrimitiveSerializer<DeviceDiscoveryResponse> {
  @override
  final Iterable<Type> types = const [DeviceDiscoveryResponse, _$DeviceDiscoveryResponse];

  @override
  final String wireName = r'DeviceDiscoveryResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceDiscoveryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'devices';
    yield serializers.serialize(
      object.devices,
      specifiedType: const FullType(BuiltList, [FullType(DeviceConfig)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceDiscoveryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviceDiscoveryResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'devices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DeviceConfig)]),
          ) as BuiltList<DeviceConfig>;
          result.devices.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviceDiscoveryResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceDiscoveryResponseBuilder();
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

