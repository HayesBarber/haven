//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'health_state.g.dart';

class HealthState extends EnumClass {

  @BuiltValueEnumConst(wireName: r'healthy')
  static const HealthState healthy = _$healthy;
  @BuiltValueEnumConst(wireName: r'moderate')
  static const HealthState moderate = _$moderate;
  @BuiltValueEnumConst(wireName: r'unhealthy')
  static const HealthState unhealthy = _$unhealthy;

  static Serializer<HealthState> get serializer => _$healthStateSerializer;

  const HealthState._(String name): super(name);

  static BuiltSet<HealthState> get values => _$values;
  static HealthState valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class HealthStateMixin = Object with _$HealthStateMixin;

