# openapi.api.ReadingListsApi

## Load the API package
```dart
import 'package:wikipedia_api/api.dart';
```

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dataListsBatchPost**](ReadingListsApi.md#datalistsbatchpost) | **POST** /data/lists/batch | Create multiple new lists for the current user.
[**dataListsChangesSinceDateGet**](ReadingListsApi.md#datalistschangessincedateget) | **GET** /data/lists/changes/since/{date} | Get recent changes to the lists
[**dataListsGet**](ReadingListsApi.md#datalistsget) | **GET** /data/lists/ | Get all lists of the current user.
[**dataListsIdDelete**](ReadingListsApi.md#datalistsiddelete) | **DELETE** /data/lists/{id} | Delete a list.
[**dataListsIdEntriesBatchPost**](ReadingListsApi.md#datalistsidentriesbatchpost) | **POST** /data/lists/{id}/entries/batch | Create multiple new list entries.
[**dataListsIdEntriesEntryIdDelete**](ReadingListsApi.md#datalistsidentriesentryiddelete) | **DELETE** /data/lists/{id}/entries/{entry_id} | Delete a list entry.
[**dataListsIdEntriesPost**](ReadingListsApi.md#datalistsidentriespost) | **POST** /data/lists/{id}/entries/ | Create a new list entry.
[**dataListsIdPut**](ReadingListsApi.md#datalistsidput) | **PUT** /data/lists/{id} | Update a list.
[**dataListsPagesProjectTitleGet**](ReadingListsApi.md#datalistspagesprojecttitleget) | **GET** /data/lists/pages/{project}/{title} | Get lists of the current user which contain a given page.
[**dataListsPost**](ReadingListsApi.md#datalistspost) | **POST** /data/lists/ | Create a new list for the current user.
[**dataListsSetupPost**](ReadingListsApi.md#datalistssetuppost) | **POST** /data/lists/setup | Opt in to use reading lists.
[**dataListsTeardownPost**](ReadingListsApi.md#dataliststeardownpost) | **POST** /data/lists/teardown | Opt out from using reading lists.
[**getListEntries**](ReadingListsApi.md#getlistentries) | **GET** /data/lists/{id}/entries/ | Get all entries of a given list.


# **dataListsBatchPost**
> ListCreateBatch dataListsBatchPost(csrfToken, batch)

Create multiple new lists for the current user.

See `POST /lists/`.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = ReadingListsApi();
final csrfToken = f63c343876da566045e6b59c4532450559c828d3+\; // String | The CRSF edit token provided by the MediaWiki API
final batch = Batch(); // Batch | 

try {
    final result = api_instance.dataListsBatchPost(csrfToken, batch);
    print(result);
} catch (e) {
    print('Exception when calling ReadingListsApi->dataListsBatchPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **csrfToken** | **String**| The CRSF edit token provided by the MediaWiki API | 
 **batch** | [**Batch**](Batch.md)|  | 

### Return type

[**ListCreateBatch**](ListCreateBatch.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataListsChangesSinceDateGet**
> DataListsGet200Response dataListsChangesSinceDateGet(date, next)

Get recent changes to the lists

Returns metadata describing lists and entries which have changed. Might be truncated and include a continuation token.  Request must be authenticated with a MediaWiki session cookie.  For safe synchronization, the date parameter should be taken from the `continue-from` field of a previous `GET /lists/` or `GET /lists/changes/since/{date}` request. This will ensure that no changes are skipped, at the cost of sometimes receiving the same change multitple times. Clients should handle changes in an idempotent way.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = ReadingListsApi();
final date = 2013-10-20T19:20:30+01:00; // DateTime | Cutoff date (in ISO 8601). To ensure reliable synchronization, the API might return changes which are slightly older than the cutoff date. 
final next = next_example; // String | Continuation parameter from previous request

try {
    final result = api_instance.dataListsChangesSinceDateGet(date, next);
    print(result);
} catch (e) {
    print('Exception when calling ReadingListsApi->dataListsChangesSinceDateGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DateTime**| Cutoff date (in ISO 8601). To ensure reliable synchronization, the API might return changes which are slightly older than the cutoff date.  | 
 **next** | **String**| Continuation parameter from previous request | [optional] 

### Return type

[**DataListsGet200Response**](DataListsGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Lists/0.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataListsGet**
> DataListsGet200Response dataListsGet(next, sort)

Get all lists of the current user.

Returns metadata describing the lists of the current user. Might be truncated and include a continuation token.  Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = ReadingListsApi();
final next = next_example; // String | Continuation parameter from previous request
final sort = sort_example; // String | Sort order - `name`: by name, ascending; - `updated`: by last modification date, descending. 

try {
    final result = api_instance.dataListsGet(next, sort);
    print(result);
} catch (e) {
    print('Exception when calling ReadingListsApi->dataListsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **next** | **String**| Continuation parameter from previous request | [optional] 
 **sort** | **String**| Sort order - `name`: by name, ascending; - `updated`: by last modification date, descending.  | [optional] [default to 'updated']

### Return type

[**DataListsGet200Response**](DataListsGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Lists/0.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataListsIdDelete**
> Object dataListsIdDelete(id)

Delete a list.

List must belong to current user and request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = ReadingListsApi();
final id = 42; // int | 

try {
    final result = api_instance.dataListsIdDelete(id);
    print(result);
} catch (e) {
    print('Exception when calling ReadingListsApi->dataListsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataListsIdEntriesBatchPost**
> DataListsIdEntriesBatchPost200Response dataListsIdEntriesBatchPost(id, csrfToken, dataListsIdEntriesBatchPostRequest)

Create multiple new list entries.

See `POST /lists/{id}/entries/`.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = ReadingListsApi();
final id = 42; // int | 
final csrfToken = f63c343876da566045e6b59c4532450559c828d3+\; // String | The CRSF edit token provided by the MediaWiki API
final dataListsIdEntriesBatchPostRequest = DataListsIdEntriesBatchPostRequest(); // DataListsIdEntriesBatchPostRequest | 

try {
    final result = api_instance.dataListsIdEntriesBatchPost(id, csrfToken, dataListsIdEntriesBatchPostRequest);
    print(result);
} catch (e) {
    print('Exception when calling ReadingListsApi->dataListsIdEntriesBatchPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **csrfToken** | **String**| The CRSF edit token provided by the MediaWiki API | 
 **dataListsIdEntriesBatchPostRequest** | [**DataListsIdEntriesBatchPostRequest**](DataListsIdEntriesBatchPostRequest.md)|  | 

### Return type

[**DataListsIdEntriesBatchPost200Response**](DataListsIdEntriesBatchPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataListsIdEntriesEntryIdDelete**
> Object dataListsIdEntriesEntryIdDelete(id, entryId)

Delete a list entry.

Deletes a given list entry.  The list must belong to the current user and the request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = ReadingListsApi();
final id = 42; // int | 
final entryId = 64; // int | 

try {
    final result = api_instance.dataListsIdEntriesEntryIdDelete(id, entryId);
    print(result);
} catch (e) {
    print('Exception when calling ReadingListsApi->dataListsIdEntriesEntryIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **entryId** | **int**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataListsIdEntriesPost**
> DataListsIdEntriesPost200Response dataListsIdEntriesPost(id, csrfToken, listEntryWrite)

Create a new list entry.

Creates a new list entry in the given list. On conflict, does nothing and returns the data of an existing list.  The list must belong to the current user and the request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)  This endpoint is deprecated and might be removed without warning. Use the batch version instead. 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = ReadingListsApi();
final id = 42; // int | 
final csrfToken = f63c343876da566045e6b59c4532450559c828d3+\; // String | The CRSF edit token provided by the MediaWiki API
final listEntryWrite = ListEntryWrite(); // ListEntryWrite | 

try {
    final result = api_instance.dataListsIdEntriesPost(id, csrfToken, listEntryWrite);
    print(result);
} catch (e) {
    print('Exception when calling ReadingListsApi->dataListsIdEntriesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **csrfToken** | **String**| The CRSF edit token provided by the MediaWiki API | 
 **listEntryWrite** | [**ListEntryWrite**](ListEntryWrite.md)|  | 

### Return type

[**DataListsIdEntriesPost200Response**](DataListsIdEntriesPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataListsIdPut**
> DataListsPost200Response dataListsIdPut(id, csrfToken, listWrite)

Update a list.

List must belong to current user and request must be authenticated with a MediaWiki session cookie. If the name is changed, the new name must not be in use.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = ReadingListsApi();
final id = 42; // int | 
final csrfToken = f63c343876da566045e6b59c4532450559c828d3+\; // String | The CRSF edit token provided by the MediaWiki API
final listWrite = ListWrite(); // ListWrite | 

try {
    final result = api_instance.dataListsIdPut(id, csrfToken, listWrite);
    print(result);
} catch (e) {
    print('Exception when calling ReadingListsApi->dataListsIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **csrfToken** | **String**| The CRSF edit token provided by the MediaWiki API | 
 **listWrite** | [**ListWrite**](ListWrite.md)|  | [optional] 

### Return type

[**DataListsPost200Response**](DataListsPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataListsPagesProjectTitleGet**
> DataListsPagesProjectTitleGet200Response dataListsPagesProjectTitleGet(project, title, next)

Get lists of the current user which contain a given page.

Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = ReadingListsApi();
final project = https://en.wikipedia.org; // String | 
final title = Barack_Obama; // String | 
final next = next_example; // String | Continuation parameter from previous request

try {
    final result = api_instance.dataListsPagesProjectTitleGet(project, title, next);
    print(result);
} catch (e) {
    print('Exception when calling ReadingListsApi->dataListsPagesProjectTitleGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **String**|  | 
 **title** | **String**|  | 
 **next** | **String**| Continuation parameter from previous request | [optional] 

### Return type

[**DataListsPagesProjectTitleGet200Response**](DataListsPagesProjectTitleGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Lists/0.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataListsPost**
> DataListsPost200Response dataListsPost(csrfToken, listWrite)

Create a new list for the current user.

Creates a new empty list. On name conflict, does nothing and returns the data of an existing list.  Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)  This endpoint is deprecated and might be removed without warning. Use the batch version instead. 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = ReadingListsApi();
final csrfToken = f63c343876da566045e6b59c4532450559c828d3+\; // String | The CRSF edit token provided by the MediaWiki API
final listWrite = ListWrite(); // ListWrite | 

try {
    final result = api_instance.dataListsPost(csrfToken, listWrite);
    print(result);
} catch (e) {
    print('Exception when calling ReadingListsApi->dataListsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **csrfToken** | **String**| The CRSF edit token provided by the MediaWiki API | 
 **listWrite** | [**ListWrite**](ListWrite.md)|  | 

### Return type

[**DataListsPost200Response**](DataListsPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataListsSetupPost**
> Object dataListsSetupPost(csrfToken)

Opt in to use reading lists.

Must precede other list operations.  Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = ReadingListsApi();
final csrfToken = f63c343876da566045e6b59c4532450559c828d3+\; // String | The CRSF edit token provided by the MediaWiki API

try {
    final result = api_instance.dataListsSetupPost(csrfToken);
    print(result);
} catch (e) {
    print('Exception when calling ReadingListsApi->dataListsSetupPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **csrfToken** | **String**| The CRSF edit token provided by the MediaWiki API | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataListsTeardownPost**
> Object dataListsTeardownPost(csrfToken)

Opt out from using reading lists.

Deletes all data. User needs to opt in again before being able to do anything.  Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = ReadingListsApi();
final csrfToken = f63c343876da566045e6b59c4532450559c828d3+\; // String | The CRSF edit token provided by the MediaWiki API

try {
    final result = api_instance.dataListsTeardownPost(csrfToken);
    print(result);
} catch (e) {
    print('Exception when calling ReadingListsApi->dataListsTeardownPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **csrfToken** | **String**| The CRSF edit token provided by the MediaWiki API | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getListEntries**
> GetListEntries200Response getListEntries(id, next, sort)

Get all entries of a given list.

Returns pages contained by the given list. Might be truncated and include a continuation token.  List must belong to current user and request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = ReadingListsApi();
final id = 42; // int | 
final next = next_example; // String | Continuation parameter from previous request
final sort = sort_example; // String | Sort order - `name`: by page title, ascending; - `updated`: by last modification date, descending. 

try {
    final result = api_instance.getListEntries(id, next, sort);
    print(result);
} catch (e) {
    print('Exception when calling ReadingListsApi->getListEntries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **next** | **String**| Continuation parameter from previous request | [optional] 
 **sort** | **String**| Sort order - `name`: by page title, ascending; - `updated`: by last modification date, descending.  | [optional] [default to 'updated']

### Return type

[**GetListEntries200Response**](GetListEntries200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Lists/0.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

