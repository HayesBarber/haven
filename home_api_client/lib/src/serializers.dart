//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:home_api_client/src/date_serializer.dart';
import 'package:home_api_client/src/model/date.dart';

import 'package:home_api_client/src/model/apply_theme_request.dart';
import 'package:home_api_client/src/model/checkin_request.dart';
import 'package:home_api_client/src/model/checkin_response.dart';
import 'package:home_api_client/src/model/controllable_device.dart';
import 'package:home_api_client/src/model/create_theme_request.dart';
import 'package:home_api_client/src/model/create_user_request.dart';
import 'package:home_api_client/src/model/delete_theme_request.dart';
import 'package:home_api_client/src/model/delete_user_request.dart';
import 'package:home_api_client/src/model/device_discovery_response.dart';
import 'package:home_api_client/src/model/device_read_response.dart';
import 'package:home_api_client/src/model/device_type.dart';
import 'package:home_api_client/src/model/effected_devices_response.dart';
import 'package:home_api_client/src/model/get_themes_response.dart';
import 'package:home_api_client/src/model/get_users_response.dart';
import 'package:home_api_client/src/model/http_validation_error.dart';
import 'package:home_api_client/src/model/health_request.dart';
import 'package:home_api_client/src/model/health_response.dart';
import 'package:home_api_client/src/model/health_state.dart';
import 'package:home_api_client/src/model/interface_device.dart';
import 'package:home_api_client/src/model/power_action.dart';
import 'package:home_api_client/src/model/power_state.dart';
import 'package:home_api_client/src/model/validation_error.dart';
import 'package:home_api_client/src/model/validation_error_loc_inner.dart';
import 'package:home_api_client/src/model/weather_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  ApplyThemeRequest,
  CheckinRequest,
  CheckinResponse,
  ControllableDevice,
  CreateThemeRequest,
  CreateUserRequest,
  DeleteThemeRequest,
  DeleteUserRequest,
  DeviceDiscoveryResponse,
  DeviceReadResponse,
  DeviceType,
  EffectedDevicesResponse,
  GetThemesResponse,
  GetUsersResponse,
  HTTPValidationError,
  HealthRequest,
  HealthResponse,
  HealthState,
  InterfaceDevice,
  PowerAction,
  PowerState,
  ValidationError,
  ValidationErrorLocInner,
  WeatherResponse,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
