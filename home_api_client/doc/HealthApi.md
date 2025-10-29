# home_api_client.api.HealthApi

## Load the API package
```dart
import 'package:home_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHealthHealthPost**](HealthApi.md#gethealthhealthpost) | **POST** /health | Get Health


# **getHealthHealthPost**
> HealthResponse getHealthHealthPost(healthRequest)

Get Health

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getHealthApi();
final HealthRequest healthRequest = ; // HealthRequest | 

try {
    final response = api.getHealthHealthPost(healthRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling HealthApi->getHealthHealthPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthRequest** | [**HealthRequest**](HealthRequest.md)|  | 

### Return type

[**HealthResponse**](HealthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

