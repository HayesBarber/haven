//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'challenge_verification_request.g.dart';

/// ChallengeVerificationRequest
///
/// Properties:
/// * [challengeId] - ID of the challenge to verify against
/// * [clientId] - ID of the client submitting the response
/// * [signature] - Base64-encoded signature over the challenge using client's private key
@BuiltValue()
abstract class ChallengeVerificationRequest implements Built<ChallengeVerificationRequest, ChallengeVerificationRequestBuilder> {
  /// ID of the challenge to verify against
  @BuiltValueField(wireName: r'challenge_id')
  String get challengeId;

  /// ID of the client submitting the response
  @BuiltValueField(wireName: r'client_id')
  String get clientId;

  /// Base64-encoded signature over the challenge using client's private key
  @BuiltValueField(wireName: r'signature')
  String get signature;

  ChallengeVerificationRequest._();

  factory ChallengeVerificationRequest([void updates(ChallengeVerificationRequestBuilder b)]) = _$ChallengeVerificationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChallengeVerificationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChallengeVerificationRequest> get serializer => _$ChallengeVerificationRequestSerializer();
}

class _$ChallengeVerificationRequestSerializer implements PrimitiveSerializer<ChallengeVerificationRequest> {
  @override
  final Iterable<Type> types = const [ChallengeVerificationRequest, _$ChallengeVerificationRequest];

  @override
  final String wireName = r'ChallengeVerificationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChallengeVerificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'challenge_id';
    yield serializers.serialize(
      object.challengeId,
      specifiedType: const FullType(String),
    );
    yield r'client_id';
    yield serializers.serialize(
      object.clientId,
      specifiedType: const FullType(String),
    );
    yield r'signature';
    yield serializers.serialize(
      object.signature,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChallengeVerificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChallengeVerificationRequestBuilder result,
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
        case r'client_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientId = valueDes;
          break;
        case r'signature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.signature = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChallengeVerificationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChallengeVerificationRequestBuilder();
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

