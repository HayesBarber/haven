//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:home_api_client/src/model/power_state.dart';
import 'package:home_api_client/src/model/device_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'checkin_request.g.dart';

/// CheckinRequest
///
/// Properties:
/// * [name] 
/// * [ip] 
/// * [mac] 
/// * [type] 
/// * [powerState] 
/// * [room] 
/// * [returnResponse] 
@BuiltValue()
abstract class CheckinRequest implements Built<CheckinRequest, CheckinRequestBuilder> {
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
  PowerState? get powerState;
  // enum powerStateEnum {  on,  off,  };

  @BuiltValueField(wireName: r'room')
  String? get room;

  @BuiltValueField(wireName: r'return_response')
  bool? get returnResponse;

  CheckinRequest._();

  factory CheckinRequest([void updates(CheckinRequestBuilder b)]) = _$CheckinRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CheckinRequestBuilder b) => b
      ..room = 'Living Room'
      ..returnResponse = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<CheckinRequest> get serializer => _$CheckinRequestSerializer();
}

class _$CheckinRequestSerializer implements PrimitiveSerializer<CheckinRequest> {
  @override
  final Iterable<Type> types = const [CheckinRequest, _$CheckinRequest];

  @override
  final String wireName = r'CheckinRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CheckinRequest object, {
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
    if (object.powerState != null) {
      yield r'power_state';
      yield serializers.serialize(
        object.powerState,
        specifiedType: const FullType.nullable(PowerState),
      );
    }
    if (object.room != null) {
      yield r'room';
      yield serializers.serialize(
        object.room,
        specifiedType: const FullType(String),
      );
    }
    if (object.returnResponse != null) {
      yield r'return_response';
      yield serializers.serialize(
        object.returnResponse,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CheckinRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CheckinRequestBuilder result,
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
            specifiedType: const FullType.nullable(PowerState),
          ) as PowerState?;
          if (valueDes == null) continue;
          result.powerState = valueDes;
          break;
        case r'room':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.room = valueDes;
          break;
        case r'return_response':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.returnResponse = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CheckinRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CheckinRequestBuilder();
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

