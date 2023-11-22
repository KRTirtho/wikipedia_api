# openapi.api.FeedApi

## Load the API package
```dart
import 'package:wikipedia_api/api.dart';
```

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aggregatedFeed**](FeedApi.md#aggregatedfeed) | **GET** /feed/featured/{yyyy}/{mm}/{dd} | Aggregated featured content
[**feedAnnouncementsGet**](FeedApi.md#feedannouncementsget) | **GET** /feed/announcements | Current announcements to display
[**onThisDay**](FeedApi.md#onthisday) | **GET** /feed/onthisday/{type}/{mm}/{dd} | Events on this day


# **aggregatedFeed**
> Feed aggregatedFeed(yyyy, mm, dd)

Aggregated featured content

Provides the aggregated feed content for the given date. The endpoint returns the featured article of the day, most read articles for the previous day, news content and the featured image and video of the day.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = FeedApi();
final yyyy = yyyy_example; // String | Year the aggregated content is requested for
final mm = mm_example; // String | Month the aggregated content is requested for, 0-padded
final dd = dd_example; // String | Day of the month the aggregated content is requested for, 0-padded

try {
    final result = api_instance.aggregatedFeed(yyyy, mm, dd);
    print(result);
} catch (e) {
    print('Exception when calling FeedApi->aggregatedFeed: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **yyyy** | **String**| Year the aggregated content is requested for | 
 **mm** | **String**| Month the aggregated content is requested for, 0-padded | 
 **dd** | **String**| Day of the month the aggregated content is requested for, 0-padded | 

### Return type

[**Feed**](Feed.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **feedAnnouncementsGet**
> AnnouncementsResponse feedAnnouncementsGet()

Current announcements to display

Gets announcements for display in the official Wikipedia iOS and Android apps.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = FeedApi();

try {
    final result = api_instance.feedAnnouncementsGet();
    print(result);
} catch (e) {
    print('Exception when calling FeedApi->feedAnnouncementsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AnnouncementsResponse**](AnnouncementsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Announcements/0.2.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **onThisDay**
> OnthisdayResponse onThisDay(type, mm, dd)

Events on this day

Provides events that historically happened on the provided day and month. Supported types of events are:  - All: all of the following  - Selected: a list of a few selected anniversaries which occur on the provided day and month; often the entries are curated for the current year  - Births: a list of birthdays which happened on the provided day and month  - Deaths: a list of deaths which happened on the provided day and month  - Holidays: a list of fixed holidays celebrated on the provided day and month  - Events: a list of significant events which happened on the provided day and month and which are not covered by the other types yet  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = FeedApi();
final type = type_example; // String | Type of events
final mm = mm_example; // String | Month events are requested for, 0-padded
final dd = dd_example; // String | Day of the month events are requested for, 0-padded

try {
    final result = api_instance.onThisDay(type, mm, dd);
    print(result);
} catch (e) {
    print('Exception when calling FeedApi->onThisDay: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of events | 
 **mm** | **String**| Month events are requested for, 0-padded | 
 **dd** | **String**| Day of the month events are requested for, 0-padded | 

### Return type

[**OnthisdayResponse**](OnthisdayResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/onthisday/0.3.3, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

