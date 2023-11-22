# openapi.api.OfflineApi

## Load the API package
```dart
import 'package:wikipedia_api/api.dart';
```

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pageMobileHtmlOfflineResourcesTitleGet**](OfflineApi.md#pagemobilehtmlofflineresourcestitleget) | **GET** /page/mobile-html-offline-resources/{title} | Get styles and scripts for offline consumption of mobile-html-formatted pages
[**pageMobileHtmlOfflineResourcesTitleRevisionGet**](OfflineApi.md#pagemobilehtmlofflineresourcestitlerevisionget) | **GET** /page/mobile-html-offline-resources/{title}/{revision} | Get styles and scripts for offline consumption of mobile-html-formatted pages


# **pageMobileHtmlOfflineResourcesTitleGet**
> String pageMobileHtmlOfflineResourcesTitleGet(title)

Get styles and scripts for offline consumption of mobile-html-formatted pages

Provides links to scripts and styles needed for viewing mobile-html-formatted pages offline.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = OfflineApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.

try {
    final result = api_instance.pageMobileHtmlOfflineResourcesTitleGet(title);
    print(result);
} catch (e) {
    print('Exception when calling OfflineApi->pageMobileHtmlOfflineResourcesTitleGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Mobile-HTML-Offline-Resources/1.2.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageMobileHtmlOfflineResourcesTitleRevisionGet**
> String pageMobileHtmlOfflineResourcesTitleRevisionGet(title, revision)

Get styles and scripts for offline consumption of mobile-html-formatted pages

Provides links to scripts and styles needed for viewing mobile-html-formatted pages offline.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = OfflineApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final revision = 56; // int | Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher. 

try {
    final result = api_instance.pageMobileHtmlOfflineResourcesTitleRevisionGet(title, revision);
    print(result);
} catch (e) {
    print('Exception when calling OfflineApi->pageMobileHtmlOfflineResourcesTitleRevisionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **revision** | **int**| Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Mobile-HTML-Offline-Resources/1.2.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

