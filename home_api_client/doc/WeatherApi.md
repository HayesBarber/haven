# home_api_client.api.WeatherApi

## Load the API package
```dart
import 'package:home_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWeatherWeatherGet**](WeatherApi.md#getweatherweatherget) | **GET** /weather | Get Weather


# **getWeatherWeatherGet**
> WeatherResponse getWeatherWeatherGet()

Get Weather

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getWeatherApi();

try {
    final response = api.getWeatherWeatherGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling WeatherApi->getWeatherWeatherGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WeatherResponse**](WeatherResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

