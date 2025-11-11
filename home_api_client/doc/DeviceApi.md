# home_api_client.api.DeviceApi

## Load the API package
```dart
import 'package:home_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteDeviceDeviceDeviceNameDelete**](DeviceApi.md#deletedevicedevicedevicenamedelete) | **DELETE** /device/{device_name} | Delete Device
[**deleteInterfaceDeviceDeviceInterfaceDeviceNameDelete**](DeviceApi.md#deleteinterfacedevicedeviceinterfacedevicenamedelete) | **DELETE** /device/interface/{device_name} | Delete Interface Device
[**readAllDevicesDeviceReadGet**](DeviceApi.md#readalldevicesdevicereadget) | **GET** /device/read | Read All Devices
[**readAllInterfaceDevicesDeviceReadInterfaceGet**](DeviceApi.md#readallinterfacedevicesdevicereadinterfaceget) | **GET** /device/read/interface | Read All Interface Devices
[**updateDeviceNameDeviceUpdateNamePatch**](DeviceApi.md#updatedevicenamedeviceupdatenamepatch) | **PATCH** /device/update-name | Update Device Name


# **deleteDeviceDeviceDeviceNameDelete**
> deleteDeviceDeviceDeviceNameDelete(deviceName)

Delete Device

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getDeviceApi();
final String deviceName = deviceName_example; // String | 

try {
    api.deleteDeviceDeviceDeviceNameDelete(deviceName);
} catch on DioException (e) {
    print('Exception when calling DeviceApi->deleteDeviceDeviceDeviceNameDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceName** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInterfaceDeviceDeviceInterfaceDeviceNameDelete**
> deleteInterfaceDeviceDeviceInterfaceDeviceNameDelete(deviceName)

Delete Interface Device

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getDeviceApi();
final String deviceName = deviceName_example; // String | 

try {
    api.deleteInterfaceDeviceDeviceInterfaceDeviceNameDelete(deviceName);
} catch on DioException (e) {
    print('Exception when calling DeviceApi->deleteInterfaceDeviceDeviceInterfaceDeviceNameDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceName** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readAllDevicesDeviceReadGet**
> DeviceReadResponse readAllDevicesDeviceReadGet()

Read All Devices

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getDeviceApi();

try {
    final response = api.readAllDevicesDeviceReadGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DeviceApi->readAllDevicesDeviceReadGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DeviceReadResponse**](DeviceReadResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readAllInterfaceDevicesDeviceReadInterfaceGet**
> InterfaceDeviceReadResponse readAllInterfaceDevicesDeviceReadInterfaceGet()

Read All Interface Devices

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getDeviceApi();

try {
    final response = api.readAllInterfaceDevicesDeviceReadInterfaceGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DeviceApi->readAllInterfaceDevicesDeviceReadInterfaceGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InterfaceDeviceReadResponse**](InterfaceDeviceReadResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDeviceNameDeviceUpdateNamePatch**
> updateDeviceNameDeviceUpdateNamePatch(oldName, newName)

Update Device Name

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getDeviceApi();
final String oldName = oldName_example; // String | 
final String newName = newName_example; // String | 

try {
    api.updateDeviceNameDeviceUpdateNamePatch(oldName, newName);
} catch on DioException (e) {
    print('Exception when calling DeviceApi->updateDeviceNameDeviceUpdateNamePatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oldName** | **String**|  | 
 **newName** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

