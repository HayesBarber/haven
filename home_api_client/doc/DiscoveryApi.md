# home_api_client.api.DiscoveryApi

## Load the API package
```dart
import 'package:home_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkInDeviceDiscoveryCheckInPost**](DiscoveryApi.md#checkindevicediscoverycheckinpost) | **POST** /discovery/check-in | Check In Device
[**discoverEspDiscoveryDiscoverEspPost**](DiscoveryApi.md#discoverespdiscoverydiscoveresppost) | **POST** /discovery/discover/esp | Discover Esp
[**discoverKasaDiscoveryDiscoverKasaPost**](DiscoveryApi.md#discoverkasadiscoverydiscoverkasapost) | **POST** /discovery/discover/kasa | Discover Kasa
[**discoverLifxDiscoveryDiscoverLifxPost**](DiscoveryApi.md#discoverlifxdiscoverydiscoverlifxpost) | **POST** /discovery/discover/lifx | Discover Lifx


# **checkInDeviceDiscoveryCheckInPost**
> checkInDeviceDiscoveryCheckInPost(deviceConfig)

Check In Device

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getDiscoveryApi();
final DeviceConfig deviceConfig = ; // DeviceConfig | 

try {
    api.checkInDeviceDiscoveryCheckInPost(deviceConfig);
} catch on DioException (e) {
    print('Exception when calling DiscoveryApi->checkInDeviceDiscoveryCheckInPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceConfig** | [**DeviceConfig**](DeviceConfig.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **discoverEspDiscoveryDiscoverEspPost**
> discoverEspDiscoveryDiscoverEspPost(passcode, port)

Discover Esp

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getDiscoveryApi();
final String passcode = passcode_example; // String | 
final int port = 56; // int | 

try {
    api.discoverEspDiscoveryDiscoverEspPost(passcode, port);
} catch on DioException (e) {
    print('Exception when calling DiscoveryApi->discoverEspDiscoveryDiscoverEspPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passcode** | **String**|  | 
 **port** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **discoverKasaDiscoveryDiscoverKasaPost**
> DeviceDiscoveryResponse discoverKasaDiscoveryDiscoverKasaPost()

Discover Kasa

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getDiscoveryApi();

try {
    final response = api.discoverKasaDiscoveryDiscoverKasaPost();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DiscoveryApi->discoverKasaDiscoveryDiscoverKasaPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DeviceDiscoveryResponse**](DeviceDiscoveryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **discoverLifxDiscoveryDiscoverLifxPost**
> DeviceDiscoveryResponse discoverLifxDiscoveryDiscoverLifxPost()

Discover Lifx

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getDiscoveryApi();

try {
    final response = api.discoverLifxDiscoveryDiscoverLifxPost();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DiscoveryApi->discoverLifxDiscoveryDiscoverLifxPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DeviceDiscoveryResponse**](DeviceDiscoveryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

