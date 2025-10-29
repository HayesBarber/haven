//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'health_request.g.dart';

/// HealthRequest
///
/// Properties:
/// * [passcode] 
/// * [port] 
@BuiltValue()
abstract class HealthRequest implements Built<HealthRequest, HealthRequestBuilder> {
  @BuiltValueField(wireName: r'passcode')
  String get passcode;

  @BuiltValueField(wireName: r'port')
  int get port;

  HealthRequest._();

  factory HealthRequest([void updates(HealthRequestBuilder b)]) = _$HealthRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HealthRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HealthRequest> get serializer => _$HealthRequestSerializer();
}

class _$HealthRequestSerializer implements PrimitiveSerializer<HealthRequest> {
  @override
  final Iterable<Type> types = const [HealthRequest, _$HealthRequest];

  @override
  final String wireName = r'HealthRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HealthRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'passcode';
    yield serializers.serialize(
      object.passcode,
      specifiedType: const FullType(String),
    );
    yield r'port';
    yield serializers.serialize(
      object.port,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HealthRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HealthRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'passcode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.passcode = valueDes;
          break;
        case r'port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.port = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HealthRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HealthRequestBuilder();
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

