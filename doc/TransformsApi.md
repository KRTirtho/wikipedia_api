# openapi.api.TransformsApi

## Load the API package
```dart
import 'package:wikipedia_api/api.dart';
```

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**doDict**](TransformsApi.md#dodict) | **GET** /transform/word/from/{from}/{word} | Fetch the dictionary meaning of a word
[**doDictProvider**](TransformsApi.md#dodictprovider) | **GET** /transform/word/from/{from}/{word}/{provider} | Fetch the dictionary meaning of a word
[**doMT**](TransformsApi.md#domt) | **POST** /transform/html/from/{from} | Machine-translate content
[**doMTProvider**](TransformsApi.md#domtprovider) | **POST** /transform/html/from/{from}/{provider} | Machine-translate content
[**transformHtmlToWikitextPost**](TransformsApi.md#transformhtmltowikitextpost) | **POST** /transform/html/to/wikitext | Transform HTML to Wikitext
[**transformHtmlToWikitextTitlePost**](TransformsApi.md#transformhtmltowikitexttitlepost) | **POST** /transform/html/to/wikitext/{title} | Transform HTML to Wikitext
[**transformHtmlToWikitextTitleRevisionPost**](TransformsApi.md#transformhtmltowikitexttitlerevisionpost) | **POST** /transform/html/to/wikitext/{title}/{revision} | Transform HTML to Wikitext
[**transformWikitextToHtmlPost**](TransformsApi.md#transformwikitexttohtmlpost) | **POST** /transform/wikitext/to/html | Transform Wikitext to HTML
[**transformWikitextToHtmlTitlePost**](TransformsApi.md#transformwikitexttohtmltitlepost) | **POST** /transform/wikitext/to/html/{title} | Transform Wikitext to HTML
[**transformWikitextToHtmlTitleRevisionPost**](TransformsApi.md#transformwikitexttohtmltitlerevisionpost) | **POST** /transform/wikitext/to/html/{title}/{revision} | Transform Wikitext to HTML
[**transformWikitextToLintPost**](TransformsApi.md#transformwikitexttolintpost) | **POST** /transform/wikitext/to/lint | Check Wikitext for lint errors
[**transformWikitextToLintTitlePost**](TransformsApi.md#transformwikitexttolinttitlepost) | **POST** /transform/wikitext/to/lint/{title} | Check Wikitext for lint errors
[**transformWikitextToLintTitleRevisionPost**](TransformsApi.md#transformwikitexttolinttitlerevisionpost) | **POST** /transform/wikitext/to/lint/{title}/{revision} | Check Wikitext for lint errors
[**transformWikitextToMobileHtml**](TransformsApi.md#transformwikitexttomobilehtml) | **POST** /transform/wikitext/to/mobile-html/{title} | Transform Wikitext to Mobile HTML


# **doDict**
> CxDict doDict(from, word)

Fetch the dictionary meaning of a word

Fetches the dictionary meaning of a word from a language and displays it in the target language.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = TransformsApi();
final from = from_example; // String | The source language code
final word = word_example; // String | The word to lookup

try {
    final result = api_instance.doDict(from, word);
    print(result);
} catch (e) {
    print('Exception when calling TransformsApi->doDict: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **String**| The source language code | 
 **word** | **String**| The word to lookup | 

### Return type

[**CxDict**](CxDict.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **doDictProvider**
> CxDict doDictProvider(from, word, provider)

Fetch the dictionary meaning of a word

Fetches the dictionary meaning of a word from a language and displays it in the target language.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = TransformsApi();
final from = from_example; // String | The source language code
final word = word_example; // String | The word to lookup
final provider = provider_example; // String | The dictionary provider id

try {
    final result = api_instance.doDictProvider(from, word, provider);
    print(result);
} catch (e) {
    print('Exception when calling TransformsApi->doDictProvider: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **String**| The source language code | 
 **word** | **String**| The word to lookup | 
 **provider** | **String**| The dictionary provider id | 

### Return type

[**CxDict**](CxDict.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **doMT**
> CxMt doMT(from, html)

Machine-translate content

Fetches the machine translation for the posted content from the source to the language of this wiki.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = TransformsApi();
final from = from_example; // String | The source language code
final html = html_example; // String | The HTML content to translate

try {
    final result = api_instance.doMT(from, html);
    print(result);
} catch (e) {
    print('Exception when calling TransformsApi->doMT: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **String**| The source language code | 
 **html** | **String**| The HTML content to translate | 

### Return type

[**CxMt**](CxMt.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **doMTProvider**
> CxMt doMTProvider(from, provider, html)

Machine-translate content

Fetches the machine translation for the posted content from the source to the language of this wiki.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = TransformsApi();
final from = from_example; // String | The source language code
final provider = provider_example; // String | The machine translation provider id
final html = html_example; // String | The HTML content to translate

try {
    final result = api_instance.doMTProvider(from, provider, html);
    print(result);
} catch (e) {
    print('Exception when calling TransformsApi->doMTProvider: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **String**| The source language code | 
 **provider** | **String**| The machine translation provider id | 
 **html** | **String**| The HTML content to translate | 

### Return type

[**CxMt**](CxMt.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transformHtmlToWikitextPost**
> String transformHtmlToWikitextPost(html, ifMatch, scrubWikitext)

Transform HTML to Wikitext

Transform [Parsoid HTML](https://www.mediawiki.org/wiki/Parsoid/MediaWiki_DOM_spec) to Wikitext.  When converting pre-existing (possibly modified) content, you should pass in the `title`, `revision`, and `If-Match` header. This lets [Parsoid](https://www.mediawiki.org/wiki/Parsoid) preserve small syntactic variations in wikitext, which ensures that diffs are readable.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = TransformsApi();
final html = html_example; // String | The HTML to transform
final ifMatch = ifMatch_example; // String | The `ETag` header of the original render indicating it's revision and timeuuid. Required if both `title` and `revision` parameters are present. 
final scrubWikitext = true; // bool | Normalise the DOM to yield cleaner wikitext?

try {
    final result = api_instance.transformHtmlToWikitextPost(html, ifMatch, scrubWikitext);
    print(result);
} catch (e) {
    print('Exception when calling TransformsApi->transformHtmlToWikitextPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **html** | **String**| The HTML to transform | 
 **ifMatch** | **String**| The `ETag` header of the original render indicating it's revision and timeuuid. Required if both `title` and `revision` parameters are present.  | [optional] 
 **scrubWikitext** | **bool**| Normalise the DOM to yield cleaner wikitext? | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/wikitext/1.0.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transformHtmlToWikitextTitlePost**
> String transformHtmlToWikitextTitlePost(title, html, ifMatch, scrubWikitext)

Transform HTML to Wikitext

Transform [Parsoid HTML](https://www.mediawiki.org/wiki/Parsoid/MediaWiki_DOM_spec) to Wikitext.  When converting pre-existing (possibly modified) content, you should pass in the `title`, `revision`, and `If-Match` header. This lets [Parsoid](https://www.mediawiki.org/wiki/Parsoid) preserve small syntactic variations in wikitext, which ensures that diffs are readable.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = TransformsApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final html = html_example; // String | The HTML to transform
final ifMatch = ifMatch_example; // String | The `ETag` header of the original render indicating it's revision and timeuuid. Required if both `title` and `revision` parameters are present. 
final scrubWikitext = true; // bool | Normalise the DOM to yield cleaner wikitext?

try {
    final result = api_instance.transformHtmlToWikitextTitlePost(title, html, ifMatch, scrubWikitext);
    print(result);
} catch (e) {
    print('Exception when calling TransformsApi->transformHtmlToWikitextTitlePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **html** | **String**| The HTML to transform | 
 **ifMatch** | **String**| The `ETag` header of the original render indicating it's revision and timeuuid. Required if both `title` and `revision` parameters are present.  | [optional] 
 **scrubWikitext** | **bool**| Normalise the DOM to yield cleaner wikitext? | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/wikitext/1.0.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transformHtmlToWikitextTitleRevisionPost**
> String transformHtmlToWikitextTitleRevisionPost(title, revision, html, ifMatch, scrubWikitext)

Transform HTML to Wikitext

Transform [Parsoid HTML](https://www.mediawiki.org/wiki/Parsoid/MediaWiki_DOM_spec) to Wikitext.  When converting pre-existing (possibly modified) content, you should pass in the `title`, `revision`, and `If-Match` header. This lets [Parsoid](https://www.mediawiki.org/wiki/Parsoid) preserve small syntactic variations in wikitext, which ensures that diffs are readable.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = TransformsApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final revision = 56; // int | The page revision
final html = html_example; // String | The HTML to transform
final ifMatch = ifMatch_example; // String | The `ETag` header of the original render indicating it's revision and timeuuid. Required if both `title` and `revision` parameters are present. 
final scrubWikitext = true; // bool | Normalise the DOM to yield cleaner wikitext?

try {
    final result = api_instance.transformHtmlToWikitextTitleRevisionPost(title, revision, html, ifMatch, scrubWikitext);
    print(result);
} catch (e) {
    print('Exception when calling TransformsApi->transformHtmlToWikitextTitleRevisionPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **revision** | **int**| The page revision | 
 **html** | **String**| The HTML to transform | 
 **ifMatch** | **String**| The `ETag` header of the original render indicating it's revision and timeuuid. Required if both `title` and `revision` parameters are present.  | [optional] 
 **scrubWikitext** | **bool**| Normalise the DOM to yield cleaner wikitext? | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/wikitext/1.0.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transformWikitextToHtmlPost**
> String transformWikitextToHtmlPost(wikitext, bodyOnly, stash)

Transform Wikitext to HTML

Transform wikitext to HTML. Note that if you set `stash: true`, you also need to supply the title.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s (5 req/s when `stash: true`) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = TransformsApi();
final wikitext = wikitext_example; // String | The Wikitext to transform to HTML
final bodyOnly = true; // bool | Return only `body.innerHTML`
final stash = true; // bool | Whether to temporarily stash the result of the transformation

try {
    final result = api_instance.transformWikitextToHtmlPost(wikitext, bodyOnly, stash);
    print(result);
} catch (e) {
    print('Exception when calling TransformsApi->transformWikitextToHtmlPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wikitext** | **String**| The Wikitext to transform to HTML | 
 **bodyOnly** | **bool**| Return only `body.innerHTML` | [optional] 
 **stash** | **bool**| Whether to temporarily stash the result of the transformation | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/html; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/HTML/2.1.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transformWikitextToHtmlTitlePost**
> String transformWikitextToHtmlTitlePost(title, wikitext, bodyOnly, stash)

Transform Wikitext to HTML

Transform wikitext to HTML. Note that if you set `stash: true`, you also need to supply the title.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s (5 req/s when `stash: true`) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = TransformsApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final wikitext = wikitext_example; // String | The Wikitext to transform to HTML
final bodyOnly = true; // bool | Return only `body.innerHTML`
final stash = true; // bool | Whether to temporarily stash the result of the transformation

try {
    final result = api_instance.transformWikitextToHtmlTitlePost(title, wikitext, bodyOnly, stash);
    print(result);
} catch (e) {
    print('Exception when calling TransformsApi->transformWikitextToHtmlTitlePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **wikitext** | **String**| The Wikitext to transform to HTML | 
 **bodyOnly** | **bool**| Return only `body.innerHTML` | [optional] 
 **stash** | **bool**| Whether to temporarily stash the result of the transformation | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/html; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/HTML/2.1.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transformWikitextToHtmlTitleRevisionPost**
> String transformWikitextToHtmlTitleRevisionPost(title, revision, wikitext, bodyOnly, stash)

Transform Wikitext to HTML

Transform wikitext to HTML. Note that if you set `stash: true`, you also need to supply the title.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s (5 req/s when `stash: true`) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = TransformsApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final revision = 56; // int | The page revision
final wikitext = wikitext_example; // String | The Wikitext to transform to HTML
final bodyOnly = true; // bool | Return only `body.innerHTML`
final stash = true; // bool | Whether to temporarily stash the result of the transformation

try {
    final result = api_instance.transformWikitextToHtmlTitleRevisionPost(title, revision, wikitext, bodyOnly, stash);
    print(result);
} catch (e) {
    print('Exception when calling TransformsApi->transformWikitextToHtmlTitleRevisionPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **revision** | **int**| The page revision | 
 **wikitext** | **String**| The Wikitext to transform to HTML | 
 **bodyOnly** | **bool**| Return only `body.innerHTML` | [optional] 
 **stash** | **bool**| Whether to temporarily stash the result of the transformation | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/html; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/HTML/2.1.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transformWikitextToLintPost**
> Object transformWikitextToLintPost(wikitext)

Check Wikitext for lint errors

Parse the supplied wikitext and check it for lint errors.  - Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) - Rate limit: 25 req/s 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = TransformsApi();
final wikitext = wikitext_example; // String | The Wikitext to check

try {
    final result = api_instance.transformWikitextToLintPost(wikitext);
    print(result);
} catch (e) {
    print('Exception when calling TransformsApi->transformWikitextToLintPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wikitext** | **String**| The Wikitext to check | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transformWikitextToLintTitlePost**
> Object transformWikitextToLintTitlePost(title, wikitext)

Check Wikitext for lint errors

Parse the supplied wikitext and check it for lint errors.  - Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) - Rate limit: 25 req/s 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = TransformsApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final wikitext = wikitext_example; // String | The Wikitext to check

try {
    final result = api_instance.transformWikitextToLintTitlePost(title, wikitext);
    print(result);
} catch (e) {
    print('Exception when calling TransformsApi->transformWikitextToLintTitlePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **wikitext** | **String**| The Wikitext to check | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transformWikitextToLintTitleRevisionPost**
> Object transformWikitextToLintTitleRevisionPost(title, revision, wikitext)

Check Wikitext for lint errors

Parse the supplied wikitext and check it for lint errors.  - Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) - Rate limit: 25 req/s 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = TransformsApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final revision = 56; // int | The page revision
final wikitext = wikitext_example; // String | The Wikitext to check

try {
    final result = api_instance.transformWikitextToLintTitleRevisionPost(title, revision, wikitext);
    print(result);
} catch (e) {
    print('Exception when calling TransformsApi->transformWikitextToLintTitleRevisionPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **revision** | **int**| The page revision | 
 **wikitext** | **String**| The Wikitext to check | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transformWikitextToMobileHtml**
> String transformWikitextToMobileHtml(title, wikitext, acceptLanguage, outputMode)

Transform Wikitext to Mobile HTML

Transform wikitext to Mobile HTML.  - Stability: [stable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Stable) - Rate limit: 25 req/s (5 req/s when `stash: true`)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = TransformsApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final wikitext = wikitext_example; // String | The Wikitext to transform to HTML
final acceptLanguage = acceptLanguage_example; // String | The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language. 
final outputMode = outputMode_example; // String | Output mode for mobile-html. Default is `editPreview`.

try {
    final result = api_instance.transformWikitextToMobileHtml(title, wikitext, acceptLanguage, outputMode);
    print(result);
} catch (e) {
    print('Exception when calling TransformsApi->transformWikitextToMobileHtml: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **wikitext** | **String**| The Wikitext to transform to HTML | 
 **acceptLanguage** | **String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.  | [optional] 
 **outputMode** | **String**| Output mode for mobile-html. Default is `editPreview`. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/html; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Mobile-HTML/1.0.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

