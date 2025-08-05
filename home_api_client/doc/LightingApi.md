# home_api_client.api.LightingApi

## Load the API package
```dart
import 'package:home_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**setStateLightingNameActionGet**](LightingApi.md#setstatelightingnameactionget) | **GET** /lighting/{name}/{action} | Set State


# **setStateLightingNameActionGet**
> EffectedDevicesResponse setStateLightingNameActionGet(name, action)

Set State

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getLightingApi();
final String name = name_example; // String | 
final PowerAction action = ; // PowerAction | 

try {
    final response = api.setStateLightingNameActionGet(name, action);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LightingApi->setStateLightingNameActionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **action** | [**PowerAction**](.md)|  | 

### Return type

[**EffectedDevicesResponse**](EffectedDevicesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

