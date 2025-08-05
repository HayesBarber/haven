//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'apply_theme_request.g.dart';

/// ApplyThemeRequest
///
/// Properties:
/// * [colors] 
@BuiltValue()
abstract class ApplyThemeRequest implements Built<ApplyThemeRequest, ApplyThemeRequestBuilder> {
  @BuiltValueField(wireName: r'colors')
  String get colors;

  ApplyThemeRequest._();

  factory ApplyThemeRequest([void updates(ApplyThemeRequestBuilder b)]) = _$ApplyThemeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApplyThemeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApplyThemeRequest> get serializer => _$ApplyThemeRequestSerializer();
}

class _$ApplyThemeRequestSerializer implements PrimitiveSerializer<ApplyThemeRequest> {
  @override
  final Iterable<Type> types = const [ApplyThemeRequest, _$ApplyThemeRequest];

  @override
  final String wireName = r'ApplyThemeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApplyThemeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'colors';
    yield serializers.serialize(
      object.colors,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApplyThemeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApplyThemeRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  ApplyThemeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApplyThemeRequestBuilder();
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

