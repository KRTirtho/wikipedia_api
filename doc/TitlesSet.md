# openapi.model.TitlesSet

## Load the model package
```dart
import 'package:wikipedia_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canonical** | **String** | the DB key (non-prefixed), e.g. may have _ instead of spaces, best for making request URIs, still requires Percent-encoding | 
**normalized** | **String** | the normalized title (https://www.mediawiki.org/wiki/API:Query#Example_2:_Title_normalization), e.g. may have spaces instead of _ | 
**display** | **String** | the title as it should be displayed to the user | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


