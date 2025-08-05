//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'challenge_request.g.dart';

/// ChallengeRequest
///
/// Properties:
/// * [clientId] - ID of the requesting client
@BuiltValue()
abstract class ChallengeRequest implements Built<ChallengeRequest, ChallengeRequestBuilder> {
  /// ID of the requesting client
  @BuiltValueField(wireName: r'client_id')
  String get clientId;

  ChallengeRequest._();

  factory ChallengeRequest([void updates(ChallengeRequestBuilder b)]) = _$ChallengeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChallengeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChallengeRequest> get serializer => _$ChallengeRequestSerializer();
}

class _$ChallengeRequestSerializer implements PrimitiveSerializer<ChallengeRequest> {
  @override
  final Iterable<Type> types = const [ChallengeRequest, _$ChallengeRequest];

  @override
  final String wireName = r'ChallengeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChallengeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'client_id';
    yield serializers.serialize(
      object.clientId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChallengeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChallengeRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'client_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChallengeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChallengeRequestBuilder();
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

