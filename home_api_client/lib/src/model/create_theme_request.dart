//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_theme_request.g.dart';

/// CreateThemeRequest
///
/// Properties:
/// * [name] 
/// * [colors] 
@BuiltValue()
abstract class CreateThemeRequest implements Built<CreateThemeRequest, CreateThemeRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'colors')
  String get colors;

  CreateThemeRequest._();

  factory CreateThemeRequest([void updates(CreateThemeRequestBuilder b)]) = _$CreateThemeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateThemeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateThemeRequest> get serializer => _$CreateThemeRequestSerializer();
}

class _$CreateThemeRequestSerializer implements PrimitiveSerializer<CreateThemeRequest> {
  @override
  final Iterable<Type> types = const [CreateThemeRequest, _$CreateThemeRequest];

  @override
  final String wireName = r'CreateThemeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateThemeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'colors';
    yield serializers.serialize(
      object.colors,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateThemeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateThemeRequestBuilder result,
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
        case r'colors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.colors = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateThemeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateThemeRequestBuilder();
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

