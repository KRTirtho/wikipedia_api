# openapi.api.MathApi

## Load the API package
```dart
import 'package:wikipedia_api/api.dart';
```

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mediaMathCheckTypePost**](MathApi.md#mediamathchecktypepost) | **POST** /media/math/check/{type} | Check and normalize a TeX formula.
[**mediaMathFormulaHashGet**](MathApi.md#mediamathformulahashget) | **GET** /media/math/formula/{hash} | Get a previously-stored formula
[**mediaMathRenderFormatHashGet**](MathApi.md#mediamathrenderformathashget) | **GET** /media/math/render/{format}/{hash} | Get rendered formula in the given format.


# **mediaMathCheckTypePost**
> Object mediaMathCheckTypePost(type, q)

Check and normalize a TeX formula.

Checks the supplied TeX formula for correctness and returns the normalised formula representation as well as information about identifiers. Available types are tex and inline-tex. The response contains the `x-resource-location` header which can be used to retrieve the render of the checked formula in one of the supported rendering formats. Just append the value of the header to `/media/math/{format}/` and perform a GET request against that URL.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable). 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = MathApi();
final type = type_example; // String | The input type of the given formula; can be tex or inline-tex
final q = q_example; // String | The formula to check

try {
    final result = api_instance.mediaMathCheckTypePost(type, q);
    print(result);
} catch (e) {
    print('Exception when calling MathApi->mediaMathCheckTypePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The input type of the given formula; can be tex or inline-tex | 
 **q** | **String**| The formula to check | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mediaMathFormulaHashGet**
> Object mediaMathFormulaHashGet(hash)

Get a previously-stored formula

Returns the previously-stored formula via `/media/math/check/{type}` for the given hash.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable). 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = MathApi();
final hash = hash_example; // String | The hash string of the previous POST data

try {
    final result = api_instance.mediaMathFormulaHashGet(hash);
    print(result);
} catch (e) {
    print('Exception when calling MathApi->mediaMathFormulaHashGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| The hash string of the previous POST data | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mediaMathRenderFormatHashGet**
> String mediaMathRenderFormatHashGet(format, hash)

Get rendered formula in the given format.

Given a request hash, renders a TeX formula into its mathematic representation in the given format. When a request is issued to the `/media/math/check/{format}` POST endpoint, the response contains the `x-resource-location` header denoting the hash ID of the POST data. Once obtained, this endpoint has to be used to obtain the actual render.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable). 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = MathApi();
final format = format_example; // String | The output format; can be svg or mml
final hash = hash_example; // String | The hash string of the previous POST data

try {
    final result = api_instance.mediaMathRenderFormatHashGet(format, hash);
    print(result);
} catch (e) {
    print('Exception when calling MathApi->mediaMathRenderFormatHashGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| The output format; can be svg or mml | 
 **hash** | **String**| The hash string of the previous POST data | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/svg+xml, application/mathml+xml, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

