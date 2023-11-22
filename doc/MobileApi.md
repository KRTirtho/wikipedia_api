# openapi.api.MobileApi

## Load the API package
```dart
import 'package:wikipedia_api/api.dart';
```

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dataCssMobileTypeGet**](MobileApi.md#datacssmobiletypeget) | **GET** /data/css/mobile/{type} | Get CSS for mobile apps.
[**dataI18nTypeGet**](MobileApi.md#datai18ntypeget) | **GET** /data/i18n/{type} | Get internationalization info
[**dataJavascriptMobileTypeGet**](MobileApi.md#datajavascriptmobiletypeget) | **GET** /data/javascript/mobile/{type} | Get JavaScript for mobileapps
[**getSections**](MobileApi.md#getsections) | **GET** /page/mobile-sections/{title} | Get mobile-optimized HTML sections for a title.
[**getSectionsLead**](MobileApi.md#getsectionslead) | **GET** /page/mobile-sections-lead/{title} | Get mobile-optimized HTML lead section and metadata for a title.
[**getSectionsLeadWithRevision**](MobileApi.md#getsectionsleadwithrevision) | **GET** /page/mobile-sections-lead/{title}/{revision} | Get mobile-optimized HTML lead section and metadata for a title.
[**getSectionsRemaining**](MobileApi.md#getsectionsremaining) | **GET** /page/mobile-sections-remaining/{title} | Get non-lead mobile-optimized HTML sections for a title.
[**getSectionsRemainingWithRevision**](MobileApi.md#getsectionsremainingwithrevision) | **GET** /page/mobile-sections-remaining/{title}/{revision} | Get non-lead mobile-optimized HTML sections for a title.
[**getSectionsWithRevision**](MobileApi.md#getsectionswithrevision) | **GET** /page/mobile-sections/{title}/{revision} | Get mobile-optimized HTML sections for a title.


# **dataCssMobileTypeGet**
> Object dataCssMobileTypeGet(type)

Get CSS for mobile apps.

Gets common CSS mobile apps need to properly display pages using Page Content Service. In most cases all of the types are needed (preferably in this order): * base (Common mobile CSS from ResourceLoader) * site (Site-specific, mobile CSS from ResourceLoader, as defined in MediaWiki\\:Mobile.css) * pcs (CSS for the Page Content Service)  The `base` and `pcs` responses are the same regardless of what domain is used. For these we suggest meta.wikimedia.org.  You can still pass pagelib for type, but this is a legacy version of the CSS for existing app clients.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = MobileApi();
final type = type_example; // String | The desired CSS bundle

try {
    final result = api_instance.dataCssMobileTypeGet(type);
    print(result);
} catch (e) {
    print('Exception when calling MobileApi->dataCssMobileTypeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The desired CSS bundle | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/CSS/1.0.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataI18nTypeGet**
> Object dataI18nTypeGet(type)

Get internationalization info

Gets internationalization information for the given site. Currently the only supported type is pcs for the Page Content Service.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = MobileApi();
final type = type_example; // String | The desired internationalization bundle

try {
    final result = api_instance.dataI18nTypeGet(type);
    print(result);
} catch (e) {
    print('Exception when calling MobileApi->dataI18nTypeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The desired internationalization bundle | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/i18n/0.0.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataJavascriptMobileTypeGet**
> Object dataJavascriptMobileTypeGet(type)

Get JavaScript for mobileapps

Gets the JavaScript bundle so that clients can have convenient access to that for consuming the page HTML. Amongst other things, * it allows to detect the platform and through that enable platform specific CSS rules, * has code to lazy load images on the page, * code for collapsing and expanding tables.  Valid types are pagelib or pcs. Passing pcs will return the JavaScript for the Page Content Service. Passing pagelib will return a deprecated legacy version of the wikimedia-page-library JavaScript to support existing app clients.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = MobileApi();
final type = type_example; // String | The desired JavaScript bundle

try {
    final result = api_instance.dataJavascriptMobileTypeGet(type);
    print(result);
} catch (e) {
    print('Exception when calling MobileApi->dataJavascriptMobileTypeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The desired JavaScript bundle | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/JavaScript/1.0.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSections**
> Object getSections(title, redirect, acceptLanguage)

Get mobile-optimized HTML sections for a title.

Retrieve the latest HTML for a page title optimised for viewing with native mobile applications. Note that the output is split by sections.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = MobileApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final redirect = true; // bool | Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter. 
final acceptLanguage = acceptLanguage_example; // String | The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language. 

try {
    final result = api_instance.getSections(title, redirect, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling MobileApi->getSections: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **redirect** | **bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.  | [optional] 
 **acceptLanguage** | **String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/mobile-sections/0.14.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSectionsLead**
> Object getSectionsLead(title, redirect, acceptLanguage)

Get mobile-optimized HTML lead section and metadata for a title.

Retrieve the lead section of the latest HTML for a page title optimised for viewing with native mobile applications.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = MobileApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final redirect = true; // bool | Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter. 
final acceptLanguage = acceptLanguage_example; // String | The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language. 

try {
    final result = api_instance.getSectionsLead(title, redirect, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling MobileApi->getSectionsLead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **redirect** | **bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.  | [optional] 
 **acceptLanguage** | **String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/mobile-sections/0.14.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSectionsLeadWithRevision**
> Object getSectionsLeadWithRevision(title, revision, redirect, acceptLanguage)

Get mobile-optimized HTML lead section and metadata for a title.

Retrieve the lead section of the latest HTML for a page title optimised for viewing with native mobile applications.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = MobileApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final revision = 56; // int | Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher. 
final redirect = true; // bool | Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter. 
final acceptLanguage = acceptLanguage_example; // String | The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language. 

try {
    final result = api_instance.getSectionsLeadWithRevision(title, revision, redirect, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling MobileApi->getSectionsLeadWithRevision: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **revision** | **int**| Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.  | 
 **redirect** | **bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.  | [optional] 
 **acceptLanguage** | **String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/mobile-sections/0.14.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSectionsRemaining**
> Object getSectionsRemaining(title, redirect, acceptLanguage)

Get non-lead mobile-optimized HTML sections for a title.

Retrieve the remainder of the latest HTML (without the lead section) for a page title optimised for viewing with native mobile applications, provided as a JSON object containing the sections.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = MobileApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final redirect = true; // bool | Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter. 
final acceptLanguage = acceptLanguage_example; // String | The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language. 

try {
    final result = api_instance.getSectionsRemaining(title, redirect, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling MobileApi->getSectionsRemaining: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **redirect** | **bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.  | [optional] 
 **acceptLanguage** | **String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/mobile-sections/0.14.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSectionsRemainingWithRevision**
> Object getSectionsRemainingWithRevision(title, revision, redirect, acceptLanguage)

Get non-lead mobile-optimized HTML sections for a title.

Retrieve the remainder of the latest HTML (without the lead section) for a page title optimised for viewing with native mobile applications, provided as a JSON object containing the sections.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = MobileApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final revision = 56; // int | Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher. 
final redirect = true; // bool | Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter. 
final acceptLanguage = acceptLanguage_example; // String | The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language. 

try {
    final result = api_instance.getSectionsRemainingWithRevision(title, revision, redirect, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling MobileApi->getSectionsRemainingWithRevision: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **revision** | **int**| Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.  | 
 **redirect** | **bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.  | [optional] 
 **acceptLanguage** | **String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/mobile-sections/0.14.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSectionsWithRevision**
> Object getSectionsWithRevision(title, revision, redirect, acceptLanguage)

Get mobile-optimized HTML sections for a title.

Retrieve the latest HTML for a page title optimised for viewing with native mobile applications. Note that the output is split by sections.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = MobileApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final revision = 56; // int | Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher. 
final redirect = true; // bool | Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter. 
final acceptLanguage = acceptLanguage_example; // String | The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language. 

try {
    final result = api_instance.getSectionsWithRevision(title, revision, redirect, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling MobileApi->getSectionsWithRevision: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **revision** | **int**| Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.  | 
 **redirect** | **bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.  | [optional] 
 **acceptLanguage** | **String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/mobile-sections/0.14.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

