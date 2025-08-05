// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Room _$bedroom = const Room._('bedroom');
const Room _$livingRoom = const Room._('livingRoom');
const Room _$upstairs = const Room._('upstairs');

Room _$valueOf(String name) {
  switch (name) {
    case 'bedroom':
      return _$bedroom;
    case 'livingRoom':
      return _$livingRoom;
    case 'upstairs':
      return _$upstairs;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Room> _$values = BuiltSet<Room>(const <Room>[
  _$bedroom,
  _$livingRoom,
  _$upstairs,
]);

class _$RoomMeta {
  const _$RoomMeta();
  Room get bedroom => _$bedroom;
  Room get livingRoom => _$livingRoom;
  Room get upstairs => _$upstairs;
  Room valueOf(String name) => _$valueOf(name);
  BuiltSet<Room> get values => _$values;
}

abstract class _$RoomMixin {
  // ignore: non_constant_identifier_names
  _$RoomMeta get Room => const _$RoomMeta();
}

Serializer<Room> _$roomSerializer = _$RoomSerializer();

class _$RoomSerializer implements PrimitiveSerializer<Room> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'bedroom': 'bedroom',
    'livingRoom': 'living_room',
    'upstairs': 'upstairs',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'bedroom': 'bedroom',
    'living_room': 'livingRoom',
    'upstairs': 'upstairs',
  };

  @override
  final Iterable<Type> types = const <Type>[Room];
  @override
  final String wireName = 'Room';

  @override
  Object serialize(Serializers serializers, Room object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Room deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Room.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
