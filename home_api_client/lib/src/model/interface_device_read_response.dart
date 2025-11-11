//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:home_api_client/src/model/interface_device.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'interface_device_read_response.g.dart';

/// InterfaceDeviceReadResponse
///
/// Properties:
/// * [devices] 
@BuiltValue()
abstract class InterfaceDeviceReadResponse implements Built<InterfaceDeviceReadResponse, InterfaceDeviceReadResponseBuilder> {
  @BuiltValueField(wireName: r'devices')
  BuiltList<InterfaceDevice> get devices;

  InterfaceDeviceReadResponse._();

  factory InterfaceDeviceReadResponse([void updates(InterfaceDeviceReadResponseBuilder b)]) = _$InterfaceDeviceReadResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InterfaceDeviceReadResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InterfaceDeviceReadResponse> get serializer => _$InterfaceDeviceReadResponseSerializer();
}

class _$InterfaceDeviceReadResponseSerializer implements PrimitiveSerializer<InterfaceDeviceReadResponse> {
  @override
  final Iterable<Type> types = const [InterfaceDeviceReadResponse, _$InterfaceDeviceReadResponse];

  @override
  final String wireName = r'InterfaceDeviceReadResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InterfaceDeviceReadResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'devices';
    yield serializers.serialize(
      object.devices,
      specifiedType: const FullType(BuiltList, [FullType(InterfaceDevice)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InterfaceDeviceReadResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InterfaceDeviceReadResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'devices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(InterfaceDevice)]),
          ) as BuiltList<InterfaceDevice>;
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
  InterfaceDeviceReadResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InterfaceDeviceReadResponseBuilder();
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

