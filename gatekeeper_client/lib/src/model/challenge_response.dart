//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'challenge_response.g.dart';

/// ChallengeResponse
///
/// Properties:
/// * [challengeId] - Unique identifier for the challenge
/// * [challenge] - Challenge string to be signed by the client
/// * [expiresAt] - UTC timestamp when the challenge expires
@BuiltValue()
abstract class ChallengeResponse implements Built<ChallengeResponse, ChallengeResponseBuilder> {
  /// Unique identifier for the challenge
  @BuiltValueField(wireName: r'challenge_id')
  String get challengeId;

  /// Challenge string to be signed by the client
  @BuiltValueField(wireName: r'challenge')
  String get challenge;

  /// UTC timestamp when the challenge expires
  @BuiltValueField(wireName: r'expires_at')
  DateTime get expiresAt;

  ChallengeResponse._();

  factory ChallengeResponse([void updates(ChallengeResponseBuilder b)]) = _$ChallengeResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChallengeResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChallengeResponse> get serializer => _$ChallengeResponseSerializer();
}

class _$ChallengeResponseSerializer implements PrimitiveSerializer<ChallengeResponse> {
  @override
  final Iterable<Type> types = const [ChallengeResponse, _$ChallengeResponse];

  @override
  final String wireName = r'ChallengeResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChallengeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'challenge_id';
    yield serializers.serialize(
      object.challengeId,
      specifiedType: const FullType(String),
    );
    yield r'challenge';
    yield serializers.serialize(
      object.challenge,
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
    ChallengeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChallengeResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'challenge_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.challengeId = valueDes;
          break;
        case r'challenge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.challenge = valueDes;
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
  ChallengeResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChallengeResponseBuilder();
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

