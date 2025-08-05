# home_api_client.api.UsersApi

## Load the API package
```dart
import 'package:home_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUserUsersPost**](UsersApi.md#createuseruserspost) | **POST** /users/ | Create User
[**deleteUserUsersDelete**](UsersApi.md#deleteuserusersdelete) | **DELETE** /users/ | Delete User
[**getUsersUsersGet**](UsersApi.md#getusersusersget) | **GET** /users/ | Get Users


# **createUserUsersPost**
> GetUsersResponse createUserUsersPost(createUserRequest)

Create User

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getUsersApi();
final CreateUserRequest createUserRequest = ; // CreateUserRequest | 

try {
    final response = api.createUserUsersPost(createUserRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->createUserUsersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUserRequest** | [**CreateUserRequest**](CreateUserRequest.md)|  | 

### Return type

[**GetUsersResponse**](GetUsersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserUsersDelete**
> GetUsersResponse deleteUserUsersDelete(deleteUserRequest)

Delete User

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getUsersApi();
final DeleteUserRequest deleteUserRequest = ; // DeleteUserRequest | 

try {
    final response = api.deleteUserUsersDelete(deleteUserRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->deleteUserUsersDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteUserRequest** | [**DeleteUserRequest**](DeleteUserRequest.md)|  | 

### Return type

[**GetUsersResponse**](GetUsersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersUsersGet**
> GetUsersResponse getUsersUsersGet()

Get Users

### Example
```dart
import 'package:home_api_client/api.dart';

final api = HomeApiClient().getUsersApi();

try {
    final response = api.getUsersUsersGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->getUsersUsersGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetUsersResponse**](GetUsersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

