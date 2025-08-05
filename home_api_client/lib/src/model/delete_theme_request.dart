//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_theme_request.g.dart';

/// DeleteThemeRequest
///
/// Properties:
/// * [name] 
@BuiltValue()
abstract class DeleteThemeRequest implements Built<DeleteThemeRequest, DeleteThemeRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  DeleteThemeRequest._();

  factory DeleteThemeRequest([void updates(DeleteThemeRequestBuilder b)]) = _$DeleteThemeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeleteThemeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeleteThemeRequest> get serializer => _$DeleteThemeRequestSerializer();
}

class _$DeleteThemeRequestSerializer implements PrimitiveSerializer<DeleteThemeRequest> {
  @override
  final Iterable<Type> types = const [DeleteThemeRequest, _$DeleteThemeRequest];

  @override
  final String wireName = r'DeleteThemeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeleteThemeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeleteThemeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeleteThemeRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeleteThemeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteThemeRequestBuilder();
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

