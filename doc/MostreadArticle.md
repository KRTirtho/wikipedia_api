# openapi.model.MostreadArticle

## Load the model package
```dart
import 'package:wikipedia_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | Article title in a form of DB key | 
**normalizedtitle** | **String** | Article title as it should be presented to the user | 
**views** | **int** | Number of views on the requested day | 
**rank** | **int** | Position in the list of most viewed articles | 
**thumbnail** | [**Thumbnail**](Thumbnail.md) |  | [optional] 
**description** | **String** | Wikidata description of the article | [optional] 
**extract** | **String** | First several sentences of an article in plain text | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


