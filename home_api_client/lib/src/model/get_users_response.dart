//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_users_response.g.dart';

/// GetUsersResponse
///
/// Properties:
/// * [users] 
@BuiltValue()
abstract class GetUsersResponse implements Built<GetUsersResponse, GetUsersResponseBuilder> {
  @BuiltValueField(wireName: r'users')
  BuiltList<String> get users;

  GetUsersResponse._();

  factory GetUsersResponse([void updates(GetUsersResponseBuilder b)]) = _$GetUsersResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetUsersResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetUsersResponse> get serializer => _$GetUsersResponseSerializer();
}

class _$GetUsersResponseSerializer implements PrimitiveSerializer<GetUsersResponse> {
  @override
  final Iterable<Type> types = const [GetUsersResponse, _$GetUsersResponse];

  @override
  final String wireName = r'GetUsersResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetUsersResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'users';
    yield serializers.serialize(
      object.users,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetUsersResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetUsersResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'users':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.users.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetUsersResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetUsersResponseBuilder();
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

