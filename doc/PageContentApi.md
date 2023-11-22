# openapi.api.PageContentApi

## Load the API package
```dart
import 'package:wikipedia_api/api.dart';
```

All URIs are relative to */api/rest_v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContentMediaList**](PageContentApi.md#getcontentmedialist) | **GET** /page/media-list/{title} | Get list of media files used on a page.
[**getContentMobileHtml**](PageContentApi.md#getcontentmobilehtml) | **GET** /page/mobile-html/{title} | Get page content HTML optimized for mobile consumption.
[**getContentWithRevisionMediaList**](PageContentApi.md#getcontentwithrevisionmedialist) | **GET** /page/media-list/{title}/{revision} | Get list of media files used on a page.
[**getContentWithRevisionMobileHtml**](PageContentApi.md#getcontentwithrevisionmobilehtml) | **GET** /page/mobile-html/{title}/{revision} | Get page content HTML optimized for mobile consumption.
[**getFormatRevision**](PageContentApi.md#getformatrevision) | **GET** /page/html/{title}/{revision} | Get HTML for a specific title/revision & optionally timeuuid.
[**getRelatedPages**](PageContentApi.md#getrelatedpages) | **GET** /page/related/{title} | Get pages related to the given title
[**pageDataParsoidTitleRevisionTidGet**](PageContentApi.md#pagedataparsoidtitlerevisiontidget) | **GET** /page/data-parsoid/{title}/{revision}/{tid} | Get data-parsoid metadata for a specific title/revision/tid.
[**pageGet**](PageContentApi.md#pageget) | **GET** /page/ | List page-related API entry points.
[**pageHtmlTitleGet**](PageContentApi.md#pagehtmltitleget) | **GET** /page/html/{title} | Get latest HTML for a title.
[**pageLintTitleGet**](PageContentApi.md#pagelinttitleget) | **GET** /page/lint/{title} | Get the linter errors for a specific title/revision.
[**pageLintTitleRevisionGet**](PageContentApi.md#pagelinttitlerevisionget) | **GET** /page/lint/{title}/{revision} | Get the linter errors for a specific title/revision.
[**pageMobileHtmlOfflineResourcesTitleGet**](PageContentApi.md#pagemobilehtmlofflineresourcestitleget) | **GET** /page/mobile-html-offline-resources/{title} | Get styles and scripts for offline consumption of mobile-html-formatted pages
[**pageMobileHtmlOfflineResourcesTitleRevisionGet**](PageContentApi.md#pagemobilehtmlofflineresourcestitlerevisionget) | **GET** /page/mobile-html-offline-resources/{title}/{revision} | Get styles and scripts for offline consumption of mobile-html-formatted pages
[**pagePdfTitleFormatGet**](PageContentApi.md#pagepdftitleformatget) | **GET** /page/pdf/{title}/{format} | Get a page as PDF
[**pagePdfTitleFormatTypeGet**](PageContentApi.md#pagepdftitleformattypeget) | **GET** /page/pdf/{title}/{format}/{type} | Get a page as PDF
[**pagePdfTitleGet**](PageContentApi.md#pagepdftitleget) | **GET** /page/pdf/{title} | Get a page as PDF
[**pageRandomFormatGet**](PageContentApi.md#pagerandomformatget) | **GET** /page/random/{format} | Get content for a random page
[**pageSegmentsTitleGet**](PageContentApi.md#pagesegmentstitleget) | **GET** /page/segments/{title} | Fetches a segmented page to be used in machine translation
[**pageSegmentsTitleRevisionGet**](PageContentApi.md#pagesegmentstitlerevisionget) | **GET** /page/segments/{title}/{revision} | Fetches a segmented page to be used in machine translation
[**pageSummaryTitleGet**](PageContentApi.md#pagesummarytitleget) | **GET** /page/summary/{title} | Get basic metadata and simplified article introduction.
[**pageTitleTitleGet**](PageContentApi.md#pagetitletitleget) | **GET** /page/title/{title} | Get revision metadata for a title.
[**pageTitleTitleRevisionGet**](PageContentApi.md#pagetitletitlerevisionget) | **GET** /page/title/{title}/{revision} | Get revision metadata for a title.


# **getContentMediaList**
> MediaList getContentMediaList(title, redirect)

Get list of media files used on a page.

Gets the list of media items (images, audio, and video) in the order in which they appear on a given wiki page.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final redirect = true; // bool | Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter. 

try {
    final result = api_instance.getContentMediaList(title, redirect);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->getContentMediaList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **redirect** | **bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.  | [optional] 

### Return type

[**MediaList**](MediaList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Media/1.3.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContentMobileHtml**
> String getContentMobileHtml(title, redirect)

Get page content HTML optimized for mobile consumption.

Gets the content HTML optimized for mobile consumption for the given page. This content is derived from Parsoid HTML (see `/page/html/{title}` endpoint). The difference to Parsoid HTML is roughly: * Some elements and attributes not needed for the reading case are removed. * LeadIntroductionTransform: The introductory paragraph is moved before an infobox. * RedLinks: Red links are flattened (=turned into span elements). * WidenImage: images that should be displayed in gallery are widened. * Section headings are slightly changed by wrapping the headings inside a div and adding   a span element inside the new div for the edit buttons. * Additional classes are added to img elements to fix issues with non-white backgrounds.   See Theme support below for instructions on how to enable that. * Pagelib CSS files needed to display the content are referenced. * LazyLoadTransform: server-side portion/prep for lazy loading of images. * CollapseTable: server-side portion/prep for collapsing tables.  What's not included? What parts of the PageLibrary does a client still have to do? * Theme support: Themes can be turned on by adding a theme class to the root <html> tag.   Possible class names are:   * `pagelib_theme_default`   * `pagelib_theme_dark`   * `pagelib_theme_black`   * `pagelib_theme_sepia`    The pagelib JS has functionality to do that: ThemeTransform.setTheme(document, theme). * Dim images: DimImagesTransform.dim(window, enable) * PlatformTransform.classify(window) to trigger Android and iOS app specific CSS rules * LazyLoadTransformer: client side companion of LazyLoadTransform (note the extra *er* here) * FooterTransformer: seems to be more UI than content, requires I18N, too  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final redirect = true; // bool | Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter. 

try {
    final result = api_instance.getContentMobileHtml(title, redirect);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->getContentMobileHtml: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **redirect** | **bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Mobile-HTML/1.2.2, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContentWithRevisionMediaList**
> MediaList getContentWithRevisionMediaList(title, revision, redirect)

Get list of media files used on a page.

Gets the list of media items (images, audio, and video) in the order in which they appear on a given wiki page.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final revision = 56; // int | Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher. 
final redirect = true; // bool | Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter. 

try {
    final result = api_instance.getContentWithRevisionMediaList(title, revision, redirect);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->getContentWithRevisionMediaList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **revision** | **int**| Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.  | 
 **redirect** | **bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.  | [optional] 

### Return type

[**MediaList**](MediaList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Media/1.3.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContentWithRevisionMobileHtml**
> String getContentWithRevisionMobileHtml(title, revision, redirect)

Get page content HTML optimized for mobile consumption.

Gets the content HTML optimized for mobile consumption for the given page. This content is derived from Parsoid HTML (see `/page/html/{title}` endpoint). The difference to Parsoid HTML is roughly: * Some elements and attributes not needed for the reading case are removed. * LeadIntroductionTransform: The introductory paragraph is moved before an infobox. * RedLinks: Red links are flattened (=turned into span elements). * WidenImage: images that should be displayed in gallery are widened. * Section headings are slightly changed by wrapping the headings inside a div and adding   a span element inside the new div for the edit buttons. * Additional classes are added to img elements to fix issues with non-white backgrounds.   See Theme support below for instructions on how to enable that. * Pagelib CSS files needed to display the content are referenced. * LazyLoadTransform: server-side portion/prep for lazy loading of images. * CollapseTable: server-side portion/prep for collapsing tables.  What's not included? What parts of the PageLibrary does a client still have to do? * Theme support: Themes can be turned on by adding a theme class to the root <html> tag.   Possible class names are:   * `pagelib_theme_default`   * `pagelib_theme_dark`   * `pagelib_theme_black`   * `pagelib_theme_sepia`    The pagelib JS has functionality to do that: ThemeTransform.setTheme(document, theme). * Dim images: DimImagesTransform.dim(window, enable) * PlatformTransform.classify(window) to trigger Android and iOS app specific CSS rules * LazyLoadTransformer: client side companion of LazyLoadTransform (note the extra *er* here) * FooterTransformer: seems to be more UI than content, requires I18N, too  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final revision = 56; // int | Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher. 
final redirect = true; // bool | Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter. 

try {
    final result = api_instance.getContentWithRevisionMobileHtml(title, revision, redirect);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->getContentWithRevisionMobileHtml: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **revision** | **int**| Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.  | 
 **redirect** | **bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Mobile-HTML/1.2.2, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFormatRevision**
> String getFormatRevision(title, revision, redirect, stash, acceptLanguage)

Get HTML for a specific title/revision & optionally timeuuid.

Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final revision = 56; // int | The revision
final redirect = true; // bool | Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter. 
final stash = true; // bool | Whether to temporary stash data-parsoid in order to support transforming the modified content later. If this parameter is set, requests are rate-limited on a per-client basis (max 5 requests per second per client) 
final acceptLanguage = acceptLanguage_example; // String | The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language. 

try {
    final result = api_instance.getFormatRevision(title, revision, redirect, stash, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->getFormatRevision: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **revision** | **int**| The revision | 
 **redirect** | **bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.  | [optional] 
 **stash** | **bool**| Whether to temporary stash data-parsoid in order to support transforming the modified content later. If this parameter is set, requests are rate-limited on a per-client basis (max 5 requests per second per client)  | [optional] 
 **acceptLanguage** | **String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/HTML/2.1.0, application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRelatedPages**
> Related getRelatedPages(title)

Get pages related to the given title

Returns summaries for 20 pages related to the given page. Summaries include page title, namespace and id along with short text description of the page and a thumbnail.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.

try {
    final result = api_instance.getRelatedPages(title);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->getRelatedPages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 

### Return type

[**Related**](Related.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageDataParsoidTitleRevisionTidGet**
> DataParsoid pageDataParsoidTitleRevisionTidGet(title, revision, tid, redirect)

Get data-parsoid metadata for a specific title/revision/tid.

Data-parsoid is metadata used by [Parsoid](https://www.mediawiki.org/wiki/Parsoid) to support clean round-tripping conversions between HTML and Wikitext. Among other things, it contains the original Wikitext offsets of each HTML element, keyed by element ID. The format is unstable.  The metadata in data-parsoid is specific to a specific HTML render. For this reason, you need to supply the exact `revision` and `tid` as provided in the `ETag` header of the HTML response.  Stability: [Stable](https://www.mediawiki.org/wiki/API_versioning#Stable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final revision = 56; // int | The revision
final tid = tid_example; // String | The revision's time ID
final redirect = true; // bool | Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter. 

try {
    final result = api_instance.pageDataParsoidTitleRevisionTidGet(title, revision, tid, redirect);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->pageDataParsoidTitleRevisionTidGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **revision** | **int**| The revision | 
 **tid** | **String**| The revision's time ID | 
 **redirect** | **bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.  | [optional] 

### Return type

[**DataParsoid**](DataParsoid.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/data-parsoid/2.1.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageGet**
> Listing pageGet()

List page-related API entry points.

Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();

try {
    final result = api_instance.pageGet();
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->pageGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Listing**](Listing.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageHtmlTitleGet**
> String pageHtmlTitleGet(title, redirect, stash, acceptLanguage)

Get latest HTML for a title.

Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final redirect = true; // bool | Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter. 
final stash = true; // bool | Whether to temporary stash data-parsoid in order to support transforming the modified content later. If this parameter is set, requests are rate-limited on a per-client basis (max 5 requests per second per client) 
final acceptLanguage = acceptLanguage_example; // String | The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language. 

try {
    final result = api_instance.pageHtmlTitleGet(title, redirect, stash, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->pageHtmlTitleGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **redirect** | **bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.  | [optional] 
 **stash** | **bool**| Whether to temporary stash data-parsoid in order to support transforming the modified content later. If this parameter is set, requests are rate-limited on a per-client basis (max 5 requests per second per client)  | [optional] 
 **acceptLanguage** | **String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/HTML/2.1.0, application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageLintTitleGet**
> Object pageLintTitleGet(title)

Get the linter errors for a specific title/revision.

Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.

try {
    final result = api_instance.pageLintTitleGet(title);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->pageLintTitleGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageLintTitleRevisionGet**
> Object pageLintTitleRevisionGet(title, revision)

Get the linter errors for a specific title/revision.

Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final revision = 56; // int | The revision

try {
    final result = api_instance.pageLintTitleRevisionGet(title, revision);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->pageLintTitleRevisionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **revision** | **int**| The revision | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageMobileHtmlOfflineResourcesTitleGet**
> String pageMobileHtmlOfflineResourcesTitleGet(title)

Get styles and scripts for offline consumption of mobile-html-formatted pages

Provides links to scripts and styles needed for viewing mobile-html-formatted pages offline.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.

try {
    final result = api_instance.pageMobileHtmlOfflineResourcesTitleGet(title);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->pageMobileHtmlOfflineResourcesTitleGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Mobile-HTML-Offline-Resources/1.2.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageMobileHtmlOfflineResourcesTitleRevisionGet**
> String pageMobileHtmlOfflineResourcesTitleRevisionGet(title, revision)

Get styles and scripts for offline consumption of mobile-html-formatted pages

Provides links to scripts and styles needed for viewing mobile-html-formatted pages offline.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final revision = 56; // int | Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher. 

try {
    final result = api_instance.pageMobileHtmlOfflineResourcesTitleRevisionGet(title, revision);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->pageMobileHtmlOfflineResourcesTitleRevisionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **revision** | **int**| Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Mobile-HTML-Offline-Resources/1.2.1, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pagePdfTitleFormatGet**
> String pagePdfTitleFormatGet(title, format)

Get a page as PDF

Renders the page content as PDF. Format and type are optional parameters and the default values are \"a4\" for format and \"desktop\" for type.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final format = format_example; // String | PDF format

try {
    final result = api_instance.pagePdfTitleFormatGet(title, format);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->pagePdfTitleFormatGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **format** | **String**| PDF format | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pagePdfTitleFormatTypeGet**
> String pagePdfTitleFormatTypeGet(title, format, type)

Get a page as PDF

Renders the page content as PDF. Format and type are optional parameters and the default values are \"a4\" for format and \"desktop\" for type.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final format = format_example; // String | PDF format
final type = type_example; // String | PDF type - `mobile` (optimized for reading on mobile devices) or `desktop` (regular PDF). `desktop` is the default render mode and it will used if param `type` is not passed

try {
    final result = api_instance.pagePdfTitleFormatTypeGet(title, format, type);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->pagePdfTitleFormatTypeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **format** | **String**| PDF format | 
 **type** | **String**| PDF type - `mobile` (optimized for reading on mobile devices) or `desktop` (regular PDF). `desktop` is the default render mode and it will used if param `type` is not passed | [optional] [default to 'desktop']

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pagePdfTitleGet**
> String pagePdfTitleGet(title)

Get a page as PDF

Renders the page content as PDF. Format and type are optional parameters and the default values are \"a4\" for format and \"desktop\" for type.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.

try {
    final result = api_instance.pagePdfTitleGet(title);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->pagePdfTitleGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/problem+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageRandomFormatGet**
> Problem pageRandomFormatGet(format)

Get content for a random page

Redirects the client to the URI for the desired format for a random page title.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final format = format_example; // String | The desired return format

try {
    final result = api_instance.pageRandomFormatGet(format);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->pageRandomFormatGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| The desired return format | 

### Return type

[**Problem**](Problem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Random/0.7.0, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageSegmentsTitleGet**
> PageSegmentsTitleGet200Response pageSegmentsTitleGet(title)

Fetches a segmented page to be used in machine translation

Use this end point to fetch the segmented content of a page. Clients should use the returned content in conjunction with the [language transform API](https://wikimedia.org/api/rest_v1/#!/Transform).  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.

try {
    final result = api_instance.pageSegmentsTitleGet(title);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->pageSegmentsTitleGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 

### Return type

[**PageSegmentsTitleGet200Response**](PageSegmentsTitleGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageSegmentsTitleRevisionGet**
> PageSegmentsTitleGet200Response pageSegmentsTitleRevisionGet(title, revision)

Fetches a segmented page to be used in machine translation

Use this end point to fetch the segmented content of a page. Clients should use the returned content in conjunction with the [language transform API](https://wikimedia.org/api/rest_v1/#!/Transform).  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final revision = 56; // int | The revision id

try {
    final result = api_instance.pageSegmentsTitleRevisionGet(title, revision);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->pageSegmentsTitleRevisionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **revision** | **int**| The revision id | 

### Return type

[**PageSegmentsTitleGet200Response**](PageSegmentsTitleGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageSummaryTitleGet**
> Summary pageSummaryTitleGet(title, redirect, acceptLanguage)

Get basic metadata and simplified article introduction.

The summary response includes an extract of the first paragraph of the page in plain text and HTML as well as the type of page. This is useful for page previews (fka. Hovercards, aka. Popups) on the web and link previews in the apps.  Stability: [stable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Stable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes. 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final redirect = true; // bool | Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter. 
final acceptLanguage = acceptLanguage_example; // String | The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language. 

try {
    final result = api_instance.pageSummaryTitleGet(title, redirect, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->pageSummaryTitleGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **redirect** | **bool**| Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.  | [optional] 
 **acceptLanguage** | **String**| The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.  | [optional] 

### Return type

[**Summary**](Summary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8; profile=https://www.mediawiki.org/wiki/Specs/Summary/1.4.2, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageTitleTitleGet**
> Revision pageTitleTitleGet(title)

Get revision metadata for a title.

Returns the revision metadata for the given title. If a revision ID is provided, metadata for that revision is returned, otherwise the latest revision ID is assumed.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable). 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.

try {
    final result = api_instance.pageTitleTitleGet(title);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->pageTitleTitleGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 

### Return type

[**Revision**](Revision.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageTitleTitleRevisionGet**
> Revision pageTitleTitleRevisionGet(title, revision)

Get revision metadata for a title.

Returns the revision metadata for the given title. If a revision ID is provided, metadata for that revision is returned, otherwise the latest revision ID is assumed.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable). 

### Example
```dart
import 'package:wikipedia_api/api.dart';

final api_instance = PageContentApi();
final title = title_example; // String | Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
final revision = 56; // int | The revision id

try {
    final result = api_instance.pageTitleTitleRevisionGet(title, revision);
    print(result);
} catch (e) {
    print('Exception when calling PageContentApi->pageTitleTitleRevisionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`. | 
 **revision** | **int**| The revision id | 

### Return type

[**Revision**](Revision.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

