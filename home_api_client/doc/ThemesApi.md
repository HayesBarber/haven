# home_api_client.api.ThemesApi

## Load the API package
```dart
import 'package:home_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyThemeThemesApplyPost**](ThemesApi.md#applythemethemesapplypost) | **POST** /themes/apply | Apply Theme
[**createThemeThemesPost**](ThemesApi.md#createthemethemespost) | **POST** /themes/ | Create Theme
[**deleteThemeThemesDelete**](ThemesApi.md#deletethemethemesdelete) | **DELETE** /themes/ | Delete Theme
[**getThemesThemesGet**](ThemesApi.md#getthemesthemesget) | **GET** /themes/ | Get Themes


# **applyThemeThemesApplyPost**
> EffectedDevicesResponse applyThemeThemesApplyPost(applyThemeRequest)

Apply Theme

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getThemesApi();
final ApplyThemeRequest applyThemeRequest = ; // ApplyThemeRequest | 

try {
    final response = api.applyThemeThemesApplyPost(applyThemeRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ThemesApi->applyThemeThemesApplyPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applyThemeRequest** | [**ApplyThemeRequest**](ApplyThemeRequest.md)|  | 

### Return type

[**EffectedDevicesResponse**](EffectedDevicesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createThemeThemesPost**
> GetThemesResponse createThemeThemesPost(createThemeRequest)

Create Theme

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getThemesApi();
final CreateThemeRequest createThemeRequest = ; // CreateThemeRequest | 

try {
    final response = api.createThemeThemesPost(createThemeRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ThemesApi->createThemeThemesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createThemeRequest** | [**CreateThemeRequest**](CreateThemeRequest.md)|  | 

### Return type

[**GetThemesResponse**](GetThemesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteThemeThemesDelete**
> GetThemesResponse deleteThemeThemesDelete(deleteThemeRequest)

Delete Theme

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getThemesApi();
final DeleteThemeRequest deleteThemeRequest = ; // DeleteThemeRequest | 

try {
    final response = api.deleteThemeThemesDelete(deleteThemeRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ThemesApi->deleteThemeThemesDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteThemeRequest** | [**DeleteThemeRequest**](DeleteThemeRequest.md)|  | 

### Return type

[**GetThemesResponse**](GetThemesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThemesThemesGet**
> GetThemesResponse getThemesThemesGet()

Get Themes

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getThemesApi();

try {
    final response = api.getThemesThemesGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ThemesApi->getThemesThemesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetThemesResponse**](GetThemesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

