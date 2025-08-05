//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'power_action.g.dart';

class PowerAction extends EnumClass {

  @BuiltValueEnumConst(wireName: r'on')
  static const PowerAction on_ = _$on_;
  @BuiltValueEnumConst(wireName: r'off')
  static const PowerAction off = _$off;
  @BuiltValueEnumConst(wireName: r'toggle')
  static const PowerAction toggle = _$toggle;

  static Serializer<PowerAction> get serializer => _$powerActionSerializer;

  const PowerAction._(String name): super(name);

  static BuiltSet<PowerAction> get values => _$values;
  static PowerAction valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PowerActionMixin = Object with _$PowerActionMixin;

