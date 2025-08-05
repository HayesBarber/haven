//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'room.g.dart';

class Room extends EnumClass {

  @BuiltValueEnumConst(wireName: r'bedroom')
  static const Room bedroom = _$bedroom;
  @BuiltValueEnumConst(wireName: r'living_room')
  static const Room livingRoom = _$livingRoom;
  @BuiltValueEnumConst(wireName: r'upstairs')
  static const Room upstairs = _$upstairs;

  static Serializer<Room> get serializer => _$roomSerializer;

  const Room._(String name): super(name);

  static BuiltSet<Room> get values => _$values;
  static Room valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RoomMixin = Object with _$RoomMixin;

