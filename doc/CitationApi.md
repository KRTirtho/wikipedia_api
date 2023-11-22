# openapi.api.CitationApi

## Load the API package
```dart
import 'package:wikipedia_api/api.dart';
```

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCitation**](CitationApi.md#getcitation) | **GET** /data/citation/{format}/{query} | Get citation data given an article identifier.


# **getCitation**
> Result getCitation(format, query, acceptLanguage)

Get citation data given an article identifier.

Generates citation data given a URL, DOI, PMID, or PMCID.  Automated requests can be made at a rate of 1 request per second (rps).  See more at [Citoid service documentation](https://www.mediawiki.org/wiki/Citoid)  The citation data can be requested in one of the following formats:   - `mediawiki`: format designed for MediaWiki to be used with `templateData`.     Uses [Zotero field names](https://aurimasv.github.io/z2csl/typeMap.xml).   - `mediawiki-basefields`: `mediawiki` format with Zotero `basefield` field names.   - `zotero`: format used by [Zotero](https://www.zotero.org/).   - `bibtex`: format used in conjunction with LaTeX documents.     See [bibtex.org](http://www.bibtex.org/).   - `wikibase`: format designed for [Wikibase](https://www.mediawiki.org/wiki/Extension:Wikibase_Repository).  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = CitationApi();
final format = format_example; // String | The format to use for the resulting citation data
final query = query_example; // String | URL of an article, DOI, PMCID or PMID in the URL-encoded format. Note that on the Swagger-UI doc page you don't need to URI-encode the parameter manually, it will be done by the docs engine. 
final acceptLanguage = acceptLanguage_example; // String | For some articles the result depends on the `Accept-Language` header, so provide it if localized content is required. 

try {
    final result = api_instance.getCitation(format, query, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling CitationApi->getCitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| The format to use for the resulting citation data | 
 **query** | **String**| URL of an article, DOI, PMCID or PMID in the URL-encoded format. Note that on the Swagger-UI doc page you don't need to URI-encode the parameter manually, it will be done by the docs engine.  | 
 **acceptLanguage** | **String**| For some articles the result depends on the `Accept-Language` header, so provide it if localized content is required.  | [optional] 

### Return type

[**Result**](Result.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8;, application/x-bibtex; charset=utf-8, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

