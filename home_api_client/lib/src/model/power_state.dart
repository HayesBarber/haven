//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'power_state.g.dart';

class PowerState extends EnumClass {

  @BuiltValueEnumConst(wireName: r'on')
  static const PowerState on_ = _$on_;
  @BuiltValueEnumConst(wireName: r'off')
  static const PowerState off = _$off;

  static Serializer<PowerState> get serializer => _$powerStateSerializer;

  const PowerState._(String name): super(name);

  static BuiltSet<PowerState> get values => _$values;
  static PowerState valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PowerStateMixin = Object with _$PowerStateMixin;

