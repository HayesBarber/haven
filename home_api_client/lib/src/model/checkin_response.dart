//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'checkin_response.g.dart';

/// CheckinResponse
///
/// Properties:
/// * [deviceNames] 
/// * [themeNames] 
/// * [themeColors] 
/// * [epochTimeSeconds] 
/// * [extras] 
/// * [extrasFontSizes] 
@BuiltValue()
abstract class CheckinResponse implements Built<CheckinResponse, CheckinResponseBuilder> {
  @BuiltValueField(wireName: r'device_names')
  BuiltList<String> get deviceNames;

  @BuiltValueField(wireName: r'theme_names')
  BuiltList<String> get themeNames;

  @BuiltValueField(wireName: r'theme_colors')
  BuiltList<String> get themeColors;

  @BuiltValueField(wireName: r'epoch_time_seconds')
  String get epochTimeSeconds;

  @BuiltValueField(wireName: r'extras')
  BuiltList<String> get extras;

  @BuiltValueField(wireName: r'extras_font_sizes')
  BuiltList<String> get extrasFontSizes;

  CheckinResponse._();

  factory CheckinResponse([void updates(CheckinResponseBuilder b)]) = _$CheckinResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CheckinResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CheckinResponse> get serializer => _$CheckinResponseSerializer();
}

class _$CheckinResponseSerializer implements PrimitiveSerializer<CheckinResponse> {
  @override
  final Iterable<Type> types = const [CheckinResponse, _$CheckinResponse];

  @override
  final String wireName = r'CheckinResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CheckinResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'device_names';
    yield serializers.serialize(
      object.deviceNames,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'theme_names';
    yield serializers.serialize(
      object.themeNames,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'theme_colors';
    yield serializers.serialize(
      object.themeColors,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'epoch_time_seconds';
    yield serializers.serialize(
      object.epochTimeSeconds,
      specifiedType: const FullType(String),
    );
    yield r'extras';
    yield serializers.serialize(
      object.extras,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'extras_font_sizes';
    yield serializers.serialize(
      object.extrasFontSizes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CheckinResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CheckinResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'device_names':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.deviceNames.replace(valueDes);
          break;
        case r'theme_names':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.themeNames.replace(valueDes);
          break;
        case r'theme_colors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.themeColors.replace(valueDes);
          break;
        case r'epoch_time_seconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.epochTimeSeconds = valueDes;
          break;
        case r'extras':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.extras.replace(valueDes);
          break;
        case r'extras_font_sizes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.extrasFontSizes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CheckinResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CheckinResponseBuilder();
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

