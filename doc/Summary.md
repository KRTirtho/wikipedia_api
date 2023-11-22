# openapi.model.Summary

## Load the model package
```dart
import 'package:wikipedia_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**titles** | [**TitlesSet**](TitlesSet.md) |  | 
**title** | **String** | The page title. Deprecated: Use `titles.normalized` instead.  | [optional] 
**displaytitle** | **String** | The page title how it should be shown to the user. Deprecated: Use `titles.display` instead.  | [optional] 
**pageid** | **int** | The page ID | [optional] 
**extract** | **String** | First several sentences of an article in plain text | 
**extractHtml** | **String** | First several sentences of an article in simple HTML format | [optional] 
**thumbnail** | [**Thumbnail**](Thumbnail.md) |  | [optional] 
**originalimage** | [**Originalimage**](Originalimage.md) |  | [optional] 
**lang** | **String** | The page language code | 
**dir** | **String** | The page language direction code | 
**timestamp** | **String** | The time when the page was last edited in the [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format | [optional] 
**description** | **String** | Wikidata description for the page | [optional] 
**coordinates** | [**SummaryCoordinates**](SummaryCoordinates.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


