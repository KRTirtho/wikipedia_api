# openapi.api.RecommendationApi

## Load the API package
```dart
import 'package:wikipedia_api/api.dart';
```

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dataRecommendationArticleCreationMorelikeSeedArticleGet**](RecommendationApi.md#datarecommendationarticlecreationmorelikeseedarticleget) | **GET** /data/recommendation/article/creation/morelike/{seed_article} | Recommend missing articles
[**dataRecommendationArticleCreationTranslationFromLangGet**](RecommendationApi.md#datarecommendationarticlecreationtranslationfromlangget) | **GET** /data/recommendation/article/creation/translation/{from_lang} | Recommend articles for translation.
[**dataRecommendationArticleCreationTranslationFromLangSeedArticleGet**](RecommendationApi.md#datarecommendationarticlecreationtranslationfromlangseedarticleget) | **GET** /data/recommendation/article/creation/translation/{from_lang}/{seed_article} | Recommend articles for translation.


# **dataRecommendationArticleCreationMorelikeSeedArticleGet**
> List<MorelikeResultInner> dataRecommendationArticleCreationMorelikeSeedArticleGet(seedArticle)

Recommend missing articles

Recommends articles similar to the seed article but are missing from the domain language Wikipedia.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = RecommendationApi();
final seedArticle = seedArticle_example; // String | The article title used to search similar but missing articles

try {
    final result = api_instance.dataRecommendationArticleCreationMorelikeSeedArticleGet(seedArticle);
    print(result);
} catch (e) {
    print('Exception when calling RecommendationApi->dataRecommendationArticleCreationMorelikeSeedArticleGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seedArticle** | **String**| The article title used to search similar but missing articles | 

### Return type

[**List<MorelikeResultInner>**](MorelikeResultInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataRecommendationArticleCreationTranslationFromLangGet**
> RecommendationResult dataRecommendationArticleCreationTranslationFromLangGet(fromLang, count)

Recommend articles for translation.

Recommends articles to be translated from the source to the domain language.  See more at [Recommendation API documentation](https://meta.wikimedia.org/wiki/Recommendation_API)  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = RecommendationApi();
final fromLang = fromLang_example; // String | The source language code
final count = 56; // int | The max number of articles to return

try {
    final result = api_instance.dataRecommendationArticleCreationTranslationFromLangGet(fromLang, count);
    print(result);
} catch (e) {
    print('Exception when calling RecommendationApi->dataRecommendationArticleCreationTranslationFromLangGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromLang** | **String**| The source language code | 
 **count** | **int**| The max number of articles to return | [optional] [default to 24]

### Return type

[**RecommendationResult**](RecommendationResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataRecommendationArticleCreationTranslationFromLangSeedArticleGet**
> RecommendationResult dataRecommendationArticleCreationTranslationFromLangSeedArticleGet(fromLang, seedArticle, count)

Recommend articles for translation.

Recommends articles to be translated from the source to the domain language.  See more at [Recommendation API documentation](https://meta.wikimedia.org/wiki/Recommendation_API)  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = RecommendationApi();
final fromLang = fromLang_example; // String | The source language code
final seedArticle = seedArticle_example; // String | The article to use as a search seed
final count = 56; // int | The max number of articles to return

try {
    final result = api_instance.dataRecommendationArticleCreationTranslationFromLangSeedArticleGet(fromLang, seedArticle, count);
    print(result);
} catch (e) {
    print('Exception when calling RecommendationApi->dataRecommendationArticleCreationTranslationFromLangSeedArticleGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromLang** | **String**| The source language code | 
 **seedArticle** | **String**| The article to use as a search seed | 
 **count** | **int**| The max number of articles to return | [optional] [default to 24]

### Return type

[**RecommendationResult**](RecommendationResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

