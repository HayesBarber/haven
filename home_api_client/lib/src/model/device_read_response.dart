//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:home_api_client/src/model/device_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_read_response.g.dart';

/// DeviceReadResponse
///
/// Properties:
/// * [devices] 
@BuiltValue()
abstract class DeviceReadResponse implements Built<DeviceReadResponse, DeviceReadResponseBuilder> {
  @BuiltValueField(wireName: r'devices')
  BuiltList<DeviceConfig> get devices;

  DeviceReadResponse._();

  factory DeviceReadResponse([void updates(DeviceReadResponseBuilder b)]) = _$DeviceReadResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceReadResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceReadResponse> get serializer => _$DeviceReadResponseSerializer();
}

class _$DeviceReadResponseSerializer implements PrimitiveSerializer<DeviceReadResponse> {
  @override
  final Iterable<Type> types = const [DeviceReadResponse, _$DeviceReadResponse];

  @override
  final String wireName = r'DeviceReadResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceReadResponse object, {
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
    DeviceReadResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviceReadResponseBuilder result,
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
  DeviceReadResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceReadResponseBuilder();
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

