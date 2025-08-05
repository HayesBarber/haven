# gatekeeper_client.api.ChallengeApi

## Load the API package
```dart
import 'package:gatekeeper_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateChallengeChallengePost**](ChallengeApi.md#generatechallengechallengepost) | **POST** /challenge/ | Generate Challenge
[**verifyChallengeChallengeVerifyPost**](ChallengeApi.md#verifychallengechallengeverifypost) | **POST** /challenge/verify | Verify Challenge


# **generateChallengeChallengePost**
> ChallengeResponse generateChallengeChallengePost(challengeRequest)

Generate Challenge

### Example
```dart
import 'package:gatekeeper_client/api.dart';

final api = GatekeeperClient().getChallengeApi();
final ChallengeRequest challengeRequest = ; // ChallengeRequest | 

try {
    final response = api.generateChallengeChallengePost(challengeRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChallengeApi->generateChallengeChallengePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challengeRequest** | [**ChallengeRequest**](ChallengeRequest.md)|  | 

### Return type

[**ChallengeResponse**](ChallengeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyChallengeChallengeVerifyPost**
> ChallengeVerificationResponse verifyChallengeChallengeVerifyPost(challengeVerificationRequest)

Verify Challenge

### Example
```dart
import 'package:gatekeeper_client/api.dart';

final api = GatekeeperClient().getChallengeApi();
final ChallengeVerificationRequest challengeVerificationRequest = ; // ChallengeVerificationRequest | 

try {
    final response = api.verifyChallengeChallengeVerifyPost(challengeVerificationRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ChallengeApi->verifyChallengeChallengeVerifyPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challengeVerificationRequest** | [**ChallengeVerificationRequest**](ChallengeVerificationRequest.md)|  | 

### Return type

[**ChallengeVerificationResponse**](ChallengeVerificationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

