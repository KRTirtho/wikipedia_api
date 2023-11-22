# openapi.model.DataListsGet200Response

## Load the model package
```dart
import 'package:wikipedia_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lists** | [**List<ListRead>**](ListRead.md) |  | [optional] [default to const []]
**next** | **String** | Continuation token. | [optional] 
**continueFrom** | [**DateTime**](DateTime.md) | Timestamp to sync from, to be used with the `GET /lists/changes/since/{date}` endpoint.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


