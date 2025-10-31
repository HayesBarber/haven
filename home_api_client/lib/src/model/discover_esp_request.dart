//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'discover_esp_request.g.dart';

/// DiscoverEspRequest
///
/// Properties:
/// * [passcode] 
/// * [port] 
@BuiltValue()
abstract class DiscoverEspRequest implements Built<DiscoverEspRequest, DiscoverEspRequestBuilder> {
  @BuiltValueField(wireName: r'passcode')
  String get passcode;

  @BuiltValueField(wireName: r'port')
  int get port;

  DiscoverEspRequest._();

  factory DiscoverEspRequest([void updates(DiscoverEspRequestBuilder b)]) = _$DiscoverEspRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DiscoverEspRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DiscoverEspRequest> get serializer => _$DiscoverEspRequestSerializer();
}

class _$DiscoverEspRequestSerializer implements PrimitiveSerializer<DiscoverEspRequest> {
  @override
  final Iterable<Type> types = const [DiscoverEspRequest, _$DiscoverEspRequest];

  @override
  final String wireName = r'DiscoverEspRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DiscoverEspRequest object, {
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
    DiscoverEspRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DiscoverEspRequestBuilder result,
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
  DiscoverEspRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DiscoverEspRequestBuilder();
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

