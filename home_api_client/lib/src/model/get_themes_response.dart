//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_themes_response.g.dart';

/// GetThemesResponse
///
/// Properties:
/// * [themes] 
@BuiltValue()
abstract class GetThemesResponse implements Built<GetThemesResponse, GetThemesResponseBuilder> {
  @BuiltValueField(wireName: r'themes')
  BuiltMap<String, String> get themes;

  GetThemesResponse._();

  factory GetThemesResponse([void updates(GetThemesResponseBuilder b)]) = _$GetThemesResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetThemesResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetThemesResponse> get serializer => _$GetThemesResponseSerializer();
}

class _$GetThemesResponseSerializer implements PrimitiveSerializer<GetThemesResponse> {
  @override
  final Iterable<Type> types = const [GetThemesResponse, _$GetThemesResponse];

  @override
  final String wireName = r'GetThemesResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetThemesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'themes';
    yield serializers.serialize(
      object.themes,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetThemesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetThemesResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'themes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.themes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetThemesResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetThemesResponseBuilder();
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

