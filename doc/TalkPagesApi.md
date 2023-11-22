# openapi.api.TalkPagesApi

## Load the API package
```dart
import 'package:wikipedia_api/api.dart';
```

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pageTalkTitleGet**](TalkPagesApi.md#pagetalktitleget) | **GET** /page/talk/{title} | Get structured talk page contents
[**pageTalkTitleRevisionGet**](TalkPagesApi.md#pagetalktitlerevisionget) | **GET** /page/talk/{title}/{revision} | Get structured talk page contents


# **pageTalkTitleGet**
> String pageTalkTitleGet(title, redirect)

Get structured talk page contents

Gets structured talk page contents for the provided title.  Stability: [experimental](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = TalkPagesApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final redirect = true; // bool | Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter. 

try {
    final result = api_instance.pageTalkTitleGet(title, redirect);
    print(result);
} catch (e) {
    print('Exception when calling TalkPagesApi->pageTalkTitleGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **redirect** | **bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Talk/0.1.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageTalkTitleRevisionGet**
> String pageTalkTitleRevisionGet(title, revision, redirect)

Get structured talk page contents

Gets structured talk page contents for the provided title.  Stability: [experimental](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = TalkPagesApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final revision = 56; // int | Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher. 
final redirect = true; // bool | Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter. 

try {
    final result = api_instance.pageTalkTitleRevisionGet(title, revision, redirect);
    print(result);
} catch (e) {
    print('Exception when calling TalkPagesApi->pageTalkTitleRevisionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **revision** | **int**| Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.  | 
 **redirect** | **bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Talk/0.1.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

