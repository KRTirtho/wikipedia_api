# openapi.model.Announcement

## Load the model package
```dart
import 'package:wikipedia_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique ID of the announcement | 
**type** | **String** | The type of announcement. Possible values are \"survey\" or \"fundraising\" | 
**startTime** | **String** | The date to begin showing the announcement | 
**endTime** | **String** | The date to stop showing the announcement | 
**platforms** | **List<String>** | An array of platforms to display the announcement. Possible values are \"iOSApp\" or \"AndroidApp\" | [default to const []]
**text** | **String** | The text of the announcement | 
**image** | **String** | The URL of the image for the announcement | [optional] 
**action** | [**Action**](Action.md) |  | [optional] 
**captionHTML** | **String** | HTML to display below the announcement. Usually a privacy statment and link to a policy | [optional] 
**countries** | **List<String>** | An array of country codes in which to display the announcement. Clients should derive the country from 'GeoIP' portion of the Set-Cookie header  | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


