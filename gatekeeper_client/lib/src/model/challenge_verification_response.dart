//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'challenge_verification_response.g.dart';

/// ChallengeVerificationResponse
///
/// Properties:
/// * [apiKey] - Issued API key tied to this client
/// * [expiresAt] - UTC timestamp when this API key expires
@BuiltValue()
abstract class ChallengeVerificationResponse implements Built<ChallengeVerificationResponse, ChallengeVerificationResponseBuilder> {
  /// Issued API key tied to this client
  @BuiltValueField(wireName: r'api_key')
  String get apiKey;

  /// UTC timestamp when this API key expires
  @BuiltValueField(wireName: r'expires_at')
  DateTime get expiresAt;

  ChallengeVerificationResponse._();

  factory ChallengeVerificationResponse([void updates(ChallengeVerificationResponseBuilder b)]) = _$ChallengeVerificationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChallengeVerificationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChallengeVerificationResponse> get serializer => _$ChallengeVerificationResponseSerializer();
}

class _$ChallengeVerificationResponseSerializer implements PrimitiveSerializer<ChallengeVerificationResponse> {
  @override
  final Iterable<Type> types = const [ChallengeVerificationResponse, _$ChallengeVerificationResponse];

  @override
  final String wireName = r'ChallengeVerificationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChallengeVerificationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'api_key';
    yield serializers.serialize(
      object.apiKey,
      specifiedType: const FullType(String),
    );
    yield r'expires_at';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChallengeVerificationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChallengeVerificationResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'api_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apiKey = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChallengeVerificationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChallengeVerificationResponseBuilder();
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

