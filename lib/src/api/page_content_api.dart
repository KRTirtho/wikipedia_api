// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class PageContentApi {
  PageContentApi([ApiClient? apiClient])
      : apiClient = apiClient ?? _defaultApiClient;

  final ApiClient apiClient;

  /// Get list of media files used on a page.
  ///
  /// Gets the list of media items (images, audio, and video) in the order in which they appear on a given wiki page.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [bool] redirect:
  ///   Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.
  Future<Response> getContentMediaListWithHttpInfo(
    String title, {
    bool? redirect,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/page/media-list/{title}'.replaceAll('{title}', title);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (redirect != null) {
      queryParams.addAll(_queryParams('', 'redirect', redirect));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get list of media files used on a page.
  ///
  /// Gets the list of media items (images, audio, and video) in the order in which they appear on a given wiki page.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [bool] redirect:
  ///   Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.
  Future<MediaList?> getContentMediaList(
    String title, {
    bool? redirect,
  }) async {
    final response = await getContentMediaListWithHttpInfo(
      title,
      redirect: redirect,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MediaList',
      ) as MediaList;
    }
    return null;
  }

  /// Get page content HTML optimized for mobile consumption.
  ///
  /// Gets the content HTML optimized for mobile consumption for the given page. This content is derived from Parsoid HTML (see `/page/html/{title}` endpoint). The difference to Parsoid HTML is roughly: * Some elements and attributes not needed for the reading case are removed. * LeadIntroductionTransform: The introductory paragraph is moved before an infobox. * RedLinks: Red links are flattened (=turned into span elements). * WidenImage: images that should be displayed in gallery are widened. * Section headings are slightly changed by wrapping the headings inside a div and adding   a span element inside the new div for the edit buttons. * Additional classes are added to img elements to fix issues with non-white backgrounds.   See Theme support below for instructions on how to enable that. * Pagelib CSS files needed to display the content are referenced. * LazyLoadTransform: server-side portion/prep for lazy loading of images. * CollapseTable: server-side portion/prep for collapsing tables.  What's not included? What parts of the PageLibrary does a client still have to do? * Theme support: Themes can be turned on by adding a theme class to the root <html> tag.   Possible class names are:   * `pagelib_theme_default`   * `pagelib_theme_dark`   * `pagelib_theme_black`   * `pagelib_theme_sepia`    The pagelib JS has functionality to do that: ThemeTransform.setTheme(document, theme). * Dim images: DimImagesTransform.dim(window, enable) * PlatformTransform.classify(window) to trigger Android and iOS app specific CSS rules * LazyLoadTransformer: client side companion of LazyLoadTransform (note the extra *er* here) * FooterTransformer: seems to be more UI than content, requires I18N, too  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [bool] redirect:
  ///   Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.
  Future<Response> getContentMobileHtmlWithHttpInfo(
    String title, {
    bool? redirect,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/page/mobile-html/{title}'.replaceAll('{title}', title);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (redirect != null) {
      queryParams.addAll(_queryParams('', 'redirect', redirect));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get page content HTML optimized for mobile consumption.
  ///
  /// Gets the content HTML optimized for mobile consumption for the given page. This content is derived from Parsoid HTML (see `/page/html/{title}` endpoint). The difference to Parsoid HTML is roughly: * Some elements and attributes not needed for the reading case are removed. * LeadIntroductionTransform: The introductory paragraph is moved before an infobox. * RedLinks: Red links are flattened (=turned into span elements). * WidenImage: images that should be displayed in gallery are widened. * Section headings are slightly changed by wrapping the headings inside a div and adding   a span element inside the new div for the edit buttons. * Additional classes are added to img elements to fix issues with non-white backgrounds.   See Theme support below for instructions on how to enable that. * Pagelib CSS files needed to display the content are referenced. * LazyLoadTransform: server-side portion/prep for lazy loading of images. * CollapseTable: server-side portion/prep for collapsing tables.  What's not included? What parts of the PageLibrary does a client still have to do? * Theme support: Themes can be turned on by adding a theme class to the root <html> tag.   Possible class names are:   * `pagelib_theme_default`   * `pagelib_theme_dark`   * `pagelib_theme_black`   * `pagelib_theme_sepia`    The pagelib JS has functionality to do that: ThemeTransform.setTheme(document, theme). * Dim images: DimImagesTransform.dim(window, enable) * PlatformTransform.classify(window) to trigger Android and iOS app specific CSS rules * LazyLoadTransformer: client side companion of LazyLoadTransform (note the extra *er* here) * FooterTransformer: seems to be more UI than content, requires I18N, too  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [bool] redirect:
  ///   Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.
  Future<String?> getContentMobileHtml(
    String title, {
    bool? redirect,
  }) async {
    final response = await getContentMobileHtmlWithHttpInfo(
      title,
      redirect: redirect,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'String',
      ) as String;
    }
    return null;
  }

  /// Get list of media files used on a page.
  ///
  /// Gets the list of media items (images, audio, and video) in the order in which they appear on a given wiki page.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.
  ///
  /// * [bool] redirect:
  ///   Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.
  Future<Response> getContentWithRevisionMediaListWithHttpInfo(
    String title,
    int revision, {
    bool? redirect,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/page/media-list/{title}/{revision}'
        .replaceAll('{title}', title)
        .replaceAll('{revision}', revision.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (redirect != null) {
      queryParams.addAll(_queryParams('', 'redirect', redirect));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get list of media files used on a page.
  ///
  /// Gets the list of media items (images, audio, and video) in the order in which they appear on a given wiki page.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.
  ///
  /// * [bool] redirect:
  ///   Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.
  Future<MediaList?> getContentWithRevisionMediaList(
    String title,
    int revision, {
    bool? redirect,
  }) async {
    final response = await getContentWithRevisionMediaListWithHttpInfo(
      title,
      revision,
      redirect: redirect,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MediaList',
      ) as MediaList;
    }
    return null;
  }

  /// Get page content HTML optimized for mobile consumption.
  ///
  /// Gets the content HTML optimized for mobile consumption for the given page. This content is derived from Parsoid HTML (see `/page/html/{title}` endpoint). The difference to Parsoid HTML is roughly: * Some elements and attributes not needed for the reading case are removed. * LeadIntroductionTransform: The introductory paragraph is moved before an infobox. * RedLinks: Red links are flattened (=turned into span elements). * WidenImage: images that should be displayed in gallery are widened. * Section headings are slightly changed by wrapping the headings inside a div and adding   a span element inside the new div for the edit buttons. * Additional classes are added to img elements to fix issues with non-white backgrounds.   See Theme support below for instructions on how to enable that. * Pagelib CSS files needed to display the content are referenced. * LazyLoadTransform: server-side portion/prep for lazy loading of images. * CollapseTable: server-side portion/prep for collapsing tables.  What's not included? What parts of the PageLibrary does a client still have to do? * Theme support: Themes can be turned on by adding a theme class to the root <html> tag.   Possible class names are:   * `pagelib_theme_default`   * `pagelib_theme_dark`   * `pagelib_theme_black`   * `pagelib_theme_sepia`    The pagelib JS has functionality to do that: ThemeTransform.setTheme(document, theme). * Dim images: DimImagesTransform.dim(window, enable) * PlatformTransform.classify(window) to trigger Android and iOS app specific CSS rules * LazyLoadTransformer: client side companion of LazyLoadTransform (note the extra *er* here) * FooterTransformer: seems to be more UI than content, requires I18N, too  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.
  ///
  /// * [bool] redirect:
  ///   Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.
  Future<Response> getContentWithRevisionMobileHtmlWithHttpInfo(
    String title,
    int revision, {
    bool? redirect,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/page/mobile-html/{title}/{revision}'
        .replaceAll('{title}', title)
        .replaceAll('{revision}', revision.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (redirect != null) {
      queryParams.addAll(_queryParams('', 'redirect', redirect));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get page content HTML optimized for mobile consumption.
  ///
  /// Gets the content HTML optimized for mobile consumption for the given page. This content is derived from Parsoid HTML (see `/page/html/{title}` endpoint). The difference to Parsoid HTML is roughly: * Some elements and attributes not needed for the reading case are removed. * LeadIntroductionTransform: The introductory paragraph is moved before an infobox. * RedLinks: Red links are flattened (=turned into span elements). * WidenImage: images that should be displayed in gallery are widened. * Section headings are slightly changed by wrapping the headings inside a div and adding   a span element inside the new div for the edit buttons. * Additional classes are added to img elements to fix issues with non-white backgrounds.   See Theme support below for instructions on how to enable that. * Pagelib CSS files needed to display the content are referenced. * LazyLoadTransform: server-side portion/prep for lazy loading of images. * CollapseTable: server-side portion/prep for collapsing tables.  What's not included? What parts of the PageLibrary does a client still have to do? * Theme support: Themes can be turned on by adding a theme class to the root <html> tag.   Possible class names are:   * `pagelib_theme_default`   * `pagelib_theme_dark`   * `pagelib_theme_black`   * `pagelib_theme_sepia`    The pagelib JS has functionality to do that: ThemeTransform.setTheme(document, theme). * Dim images: DimImagesTransform.dim(window, enable) * PlatformTransform.classify(window) to trigger Android and iOS app specific CSS rules * LazyLoadTransformer: client side companion of LazyLoadTransform (note the extra *er* here) * FooterTransformer: seems to be more UI than content, requires I18N, too  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.
  ///
  /// * [bool] redirect:
  ///   Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.
  Future<String?> getContentWithRevisionMobileHtml(
    String title,
    int revision, {
    bool? redirect,
  }) async {
    final response = await getContentWithRevisionMobileHtmlWithHttpInfo(
      title,
      revision,
      redirect: redirect,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'String',
      ) as String;
    }
    return null;
  }

  /// Get HTML for a specific title/revision & optionally timeuuid.
  ///
  /// Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   The revision
  ///
  /// * [bool] redirect:
  ///   Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.
  ///
  /// * [bool] stash:
  ///   Whether to temporary stash data-parsoid in order to support transforming the modified content later. If this parameter is set, requests are rate-limited on a per-client basis (max 5 requests per second per client)
  ///
  /// * [String] acceptLanguage:
  ///   The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.
  Future<Response> getFormatRevisionWithHttpInfo(
    String title,
    int revision, {
    bool? redirect,
    bool? stash,
    String? acceptLanguage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/page/html/{title}/{revision}'
        .replaceAll('{title}', title)
        .replaceAll('{revision}', revision.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (redirect != null) {
      queryParams.addAll(_queryParams('', 'redirect', redirect));
    }
    if (stash != null) {
      queryParams.addAll(_queryParams('', 'stash', stash));
    }

    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get HTML for a specific title/revision & optionally timeuuid.
  ///
  /// Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable)
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   The revision
  ///
  /// * [bool] redirect:
  ///   Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.
  ///
  /// * [bool] stash:
  ///   Whether to temporary stash data-parsoid in order to support transforming the modified content later. If this parameter is set, requests are rate-limited on a per-client basis (max 5 requests per second per client)
  ///
  /// * [String] acceptLanguage:
  ///   The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.
  Future<String?> getFormatRevision(
    String title,
    int revision, {
    bool? redirect,
    bool? stash,
    String? acceptLanguage,
  }) async {
    final response = await getFormatRevisionWithHttpInfo(
      title,
      revision,
      redirect: redirect,
      stash: stash,
      acceptLanguage: acceptLanguage,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'String',
      ) as String;
    }
    return null;
  }

  /// Get pages related to the given title
  ///
  /// Returns summaries for 20 pages related to the given page. Summaries include page title, namespace and id along with short text description of the page and a thumbnail.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  Future<Response> getRelatedPagesWithHttpInfo(
    String title,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/page/related/{title}'.replaceAll('{title}', title);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get pages related to the given title
  ///
  /// Returns summaries for 20 pages related to the given page. Summaries include page title, namespace and id along with short text description of the page and a thumbnail.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  Future<Related?> getRelatedPages(
    String title,
  ) async {
    final response = await getRelatedPagesWithHttpInfo(
      title,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Related',
      ) as Related;
    }
    return null;
  }

  /// Get data-parsoid metadata for a specific title/revision/tid.
  ///
  /// Data-parsoid is metadata used by [Parsoid](https://www.mediawiki.org/wiki/Parsoid) to support clean round-tripping conversions between HTML and Wikitext. Among other things, it contains the original Wikitext offsets of each HTML element, keyed by element ID. The format is unstable.  The metadata in data-parsoid is specific to a specific HTML render. For this reason, you need to supply the exact `revision` and `tid` as provided in the `ETag` header of the HTML response.  Stability: [Stable](https://www.mediawiki.org/wiki/API_versioning#Stable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   The revision
  ///
  /// * [String] tid (required):
  ///   The revision's time ID
  ///
  /// * [bool] redirect:
  ///   Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.
  Future<Response> pageDataParsoidTitleRevisionTidGetWithHttpInfo(
    String title,
    int revision,
    String tid, {
    bool? redirect,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/page/data-parsoid/{title}/{revision}/{tid}'
        .replaceAll('{title}', title)
        .replaceAll('{revision}', revision.toString())
        .replaceAll('{tid}', tid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (redirect != null) {
      queryParams.addAll(_queryParams('', 'redirect', redirect));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get data-parsoid metadata for a specific title/revision/tid.
  ///
  /// Data-parsoid is metadata used by [Parsoid](https://www.mediawiki.org/wiki/Parsoid) to support clean round-tripping conversions between HTML and Wikitext. Among other things, it contains the original Wikitext offsets of each HTML element, keyed by element ID. The format is unstable.  The metadata in data-parsoid is specific to a specific HTML render. For this reason, you need to supply the exact `revision` and `tid` as provided in the `ETag` header of the HTML response.  Stability: [Stable](https://www.mediawiki.org/wiki/API_versioning#Stable)
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   The revision
  ///
  /// * [String] tid (required):
  ///   The revision's time ID
  ///
  /// * [bool] redirect:
  ///   Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.
  Future<DataParsoid?> pageDataParsoidTitleRevisionTidGet(
    String title,
    int revision,
    String tid, {
    bool? redirect,
  }) async {
    final response = await pageDataParsoidTitleRevisionTidGetWithHttpInfo(
      title,
      revision,
      tid,
      redirect: redirect,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'DataParsoid',
      ) as DataParsoid;
    }
    return null;
  }

  /// List page-related API entry points.
  ///
  /// Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> pageGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/page/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List page-related API entry points.
  ///
  /// Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable)
  Future<Listing?> pageGet() async {
    final response = await pageGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Listing',
      ) as Listing;
    }
    return null;
  }

  /// Get latest HTML for a title.
  ///
  /// Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [bool] redirect:
  ///   Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.
  ///
  /// * [bool] stash:
  ///   Whether to temporary stash data-parsoid in order to support transforming the modified content later. If this parameter is set, requests are rate-limited on a per-client basis (max 5 requests per second per client)
  ///
  /// * [String] acceptLanguage:
  ///   The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.
  Future<Response> pageHtmlTitleGetWithHttpInfo(
    String title, {
    bool? redirect,
    bool? stash,
    String? acceptLanguage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/page/html/{title}'.replaceAll('{title}', title);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (redirect != null) {
      queryParams.addAll(_queryParams('', 'redirect', redirect));
    }
    if (stash != null) {
      queryParams.addAll(_queryParams('', 'stash', stash));
    }

    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get latest HTML for a title.
  ///
  /// Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable)
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [bool] redirect:
  ///   Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.
  ///
  /// * [bool] stash:
  ///   Whether to temporary stash data-parsoid in order to support transforming the modified content later. If this parameter is set, requests are rate-limited on a per-client basis (max 5 requests per second per client)
  ///
  /// * [String] acceptLanguage:
  ///   The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.
  Future<String?> pageHtmlTitleGet(
    String title, {
    bool? redirect,
    bool? stash,
    String? acceptLanguage,
  }) async {
    final response = await pageHtmlTitleGetWithHttpInfo(
      title,
      redirect: redirect,
      stash: stash,
      acceptLanguage: acceptLanguage,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'String',
      ) as String;
    }
    return null;
  }

  /// Get the linter errors for a specific title/revision.
  ///
  /// Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  Future<Response> pageLintTitleGetWithHttpInfo(
    String title,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/page/lint/{title}'.replaceAll('{title}', title);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the linter errors for a specific title/revision.
  ///
  /// Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  Future<Object?> pageLintTitleGet(
    String title,
  ) async {
    final response = await pageLintTitleGetWithHttpInfo(
      title,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Object',
      ) as Object;
    }
    return null;
  }

  /// Get the linter errors for a specific title/revision.
  ///
  /// Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   The revision
  Future<Response> pageLintTitleRevisionGetWithHttpInfo(
    String title,
    int revision,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/page/lint/{title}/{revision}'
        .replaceAll('{title}', title)
        .replaceAll('{revision}', revision.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the linter errors for a specific title/revision.
  ///
  /// Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   The revision
  Future<Object?> pageLintTitleRevisionGet(
    String title,
    int revision,
  ) async {
    final response = await pageLintTitleRevisionGetWithHttpInfo(
      title,
      revision,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Object',
      ) as Object;
    }
    return null;
  }

  /// Get styles and scripts for offline consumption of mobile-html-formatted pages
  ///
  /// Provides links to scripts and styles needed for viewing mobile-html-formatted pages offline.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  Future<Response> pageMobileHtmlOfflineResourcesTitleGetWithHttpInfo(
    String title,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/page/mobile-html-offline-resources/{title}'
        .replaceAll('{title}', title);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get styles and scripts for offline consumption of mobile-html-formatted pages
  ///
  /// Provides links to scripts and styles needed for viewing mobile-html-formatted pages offline.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  Future<String?> pageMobileHtmlOfflineResourcesTitleGet(
    String title,
  ) async {
    final response = await pageMobileHtmlOfflineResourcesTitleGetWithHttpInfo(
      title,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'String',
      ) as String;
    }
    return null;
  }

  /// Get styles and scripts for offline consumption of mobile-html-formatted pages
  ///
  /// Provides links to scripts and styles needed for viewing mobile-html-formatted pages offline.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.
  Future<Response> pageMobileHtmlOfflineResourcesTitleRevisionGetWithHttpInfo(
    String title,
    int revision,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/page/mobile-html-offline-resources/{title}/{revision}'
        .replaceAll('{title}', title)
        .replaceAll('{revision}', revision.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get styles and scripts for offline consumption of mobile-html-formatted pages
  ///
  /// Provides links to scripts and styles needed for viewing mobile-html-formatted pages offline.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   Optional page revision. Note that older revisions are not stored, so request latency with the revision would be higher.
  Future<String?> pageMobileHtmlOfflineResourcesTitleRevisionGet(
    String title,
    int revision,
  ) async {
    final response =
        await pageMobileHtmlOfflineResourcesTitleRevisionGetWithHttpInfo(
      title,
      revision,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'String',
      ) as String;
    }
    return null;
  }

  /// Get a page as PDF
  ///
  /// Renders the page content as PDF. Format and type are optional parameters and the default values are \"a4\" for format and \"desktop\" for type.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [String] format (required):
  ///   PDF format
  Future<Response> pagePdfTitleFormatGetWithHttpInfo(
    String title,
    String format,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/page/pdf/{title}/{format}'
        .replaceAll('{title}', title)
        .replaceAll('{format}', format);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a page as PDF
  ///
  /// Renders the page content as PDF. Format and type are optional parameters and the default values are \"a4\" for format and \"desktop\" for type.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [String] format (required):
  ///   PDF format
  Future<String?> pagePdfTitleFormatGet(
    String title,
    String format,
  ) async {
    final response = await pagePdfTitleFormatGetWithHttpInfo(
      title,
      format,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'String',
      ) as String;
    }
    return null;
  }

  /// Get a page as PDF
  ///
  /// Renders the page content as PDF. Format and type are optional parameters and the default values are \"a4\" for format and \"desktop\" for type.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [String] format (required):
  ///   PDF format
  ///
  /// * [String] type:
  ///   PDF type - `mobile` (optimized for reading on mobile devices) or `desktop` (regular PDF). `desktop` is the default render mode and it will used if param `type` is not passed
  Future<Response> pagePdfTitleFormatTypeGetWithHttpInfo(
    String title,
    String format, {
    required String type,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/page/pdf/{title}/{format}/{type}'
        .replaceAll('{title}', title)
        .replaceAll('{format}', format)
        .replaceAll('{type}', type);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a page as PDF
  ///
  /// Renders the page content as PDF. Format and type are optional parameters and the default values are \"a4\" for format and \"desktop\" for type.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [String] format (required):
  ///   PDF format
  ///
  /// * [String] type:
  ///   PDF type - `mobile` (optimized for reading on mobile devices) or `desktop` (regular PDF). `desktop` is the default render mode and it will used if param `type` is not passed
  Future<String?> pagePdfTitleFormatTypeGet(
    String title,
    String format, {
    required String type,
  }) async {
    final response = await pagePdfTitleFormatTypeGetWithHttpInfo(
      title,
      format,
      type: type,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'String',
      ) as String;
    }
    return null;
  }

  /// Get a page as PDF
  ///
  /// Renders the page content as PDF. Format and type are optional parameters and the default values are \"a4\" for format and \"desktop\" for type.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  Future<Response> pagePdfTitleGetWithHttpInfo(
    String title,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/page/pdf/{title}'.replaceAll('{title}', title);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a page as PDF
  ///
  /// Renders the page content as PDF. Format and type are optional parameters and the default values are \"a4\" for format and \"desktop\" for type.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  Future<String?> pagePdfTitleGet(
    String title,
  ) async {
    final response = await pagePdfTitleGetWithHttpInfo(
      title,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'String',
      ) as String;
    }
    return null;
  }

  /// Get content for a random page
  ///
  /// Redirects the client to the URI for the desired format for a random page title.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] format (required):
  ///   The desired return format
  Future<Response> pageRandomFormatGetWithHttpInfo(
    String format,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/page/random/{format}'.replaceAll('{format}', format);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get content for a random page
  ///
  /// Redirects the client to the URI for the desired format for a random page title.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [String] format (required):
  ///   The desired return format
  Future<Problem?> pageRandomFormatGet(
    String format,
  ) async {
    final response = await pageRandomFormatGetWithHttpInfo(
      format,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Problem',
      ) as Problem;
    }
    return null;
  }

  /// Fetches a segmented page to be used in machine translation
  ///
  /// Use this end point to fetch the segmented content of a page. Clients should use the returned content in conjunction with the [language transform API](https://wikimedia.org/api/rest_v1/#!/Transform).  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  Future<Response> pageSegmentsTitleGetWithHttpInfo(
    String title,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/page/segments/{title}'.replaceAll('{title}', title);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Fetches a segmented page to be used in machine translation
  ///
  /// Use this end point to fetch the segmented content of a page. Clients should use the returned content in conjunction with the [language transform API](https://wikimedia.org/api/rest_v1/#!/Transform).  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  Future<PageSegmentsTitleGet200Response?> pageSegmentsTitleGet(
    String title,
  ) async {
    final response = await pageSegmentsTitleGetWithHttpInfo(
      title,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'PageSegmentsTitleGet200Response',
      ) as PageSegmentsTitleGet200Response;
    }
    return null;
  }

  /// Fetches a segmented page to be used in machine translation
  ///
  /// Use this end point to fetch the segmented content of a page. Clients should use the returned content in conjunction with the [language transform API](https://wikimedia.org/api/rest_v1/#!/Transform).  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   The revision id
  Future<Response> pageSegmentsTitleRevisionGetWithHttpInfo(
    String title,
    int revision,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/page/segments/{title}/{revision}'
        .replaceAll('{title}', title)
        .replaceAll('{revision}', revision.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Fetches a segmented page to be used in machine translation
  ///
  /// Use this end point to fetch the segmented content of a page. Clients should use the returned content in conjunction with the [language transform API](https://wikimedia.org/api/rest_v1/#!/Transform).  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   The revision id
  Future<PageSegmentsTitleGet200Response?> pageSegmentsTitleRevisionGet(
    String title,
    int revision,
  ) async {
    final response = await pageSegmentsTitleRevisionGetWithHttpInfo(
      title,
      revision,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'PageSegmentsTitleGet200Response',
      ) as PageSegmentsTitleGet200Response;
    }
    return null;
  }

  /// Get basic metadata and simplified article introduction.
  ///
  /// The summary response includes an extract of the first paragraph of the page in plain text and HTML as well as the type of page. This is useful for page previews (fka. Hovercards, aka. Popups) on the web and link previews in the apps.  Stability: [stable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Stable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [bool] redirect:
  ///   Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.
  ///
  /// * [String] acceptLanguage:
  ///   The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.
  Future<Response> pageSummaryTitleGetWithHttpInfo(
    String title, {
    bool? redirect,
    String? acceptLanguage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/page/summary/{title}'.replaceAll('{title}', title);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (redirect != null) {
      queryParams.addAll(_queryParams('', 'redirect', redirect));
    }

    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get basic metadata and simplified article introduction.
  ///
  /// The summary response includes an extract of the first paragraph of the page in plain text and HTML as well as the type of page. This is useful for page previews (fka. Hovercards, aka. Popups) on the web and link previews in the apps.  Stability: [stable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Stable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [bool] redirect:
  ///   Requests for [redirect pages](https://www.mediawiki.org/wiki/Help:Redirects) return HTTP 302 with a redirect target in `Location` header and content in the body. To get a 200 response instead, supply `false` to the `redirect` parameter.
  ///
  /// * [String] acceptLanguage:
  ///   The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.
  Future<Summary?> pageSummaryTitleGet(
    String title, {
    bool? redirect,
    String? acceptLanguage,
  }) async {
    final response = await pageSummaryTitleGetWithHttpInfo(
      title,
      redirect: redirect,
      acceptLanguage: acceptLanguage,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Summary',
      ) as Summary;
    }
    return null;
  }

  /// Get revision metadata for a title.
  ///
  /// Returns the revision metadata for the given title. If a revision ID is provided, metadata for that revision is returned, otherwise the latest revision ID is assumed.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  Future<Response> pageTitleTitleGetWithHttpInfo(
    String title,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/page/title/{title}'.replaceAll('{title}', title);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get revision metadata for a title.
  ///
  /// Returns the revision metadata for the given title. If a revision ID is provided, metadata for that revision is returned, otherwise the latest revision ID is assumed.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable).
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  Future<Revision?> pageTitleTitleGet(
    String title,
  ) async {
    final response = await pageTitleTitleGetWithHttpInfo(
      title,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Revision',
      ) as Revision;
    }
    return null;
  }

  /// Get revision metadata for a title.
  ///
  /// Returns the revision metadata for the given title. If a revision ID is provided, metadata for that revision is returned, otherwise the latest revision ID is assumed.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   The revision id
  Future<Response> pageTitleTitleRevisionGetWithHttpInfo(
    String title,
    int revision,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/page/title/{title}/{revision}'
        .replaceAll('{title}', title)
        .replaceAll('{revision}', revision.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get revision metadata for a title.
  ///
  /// Returns the revision metadata for the given title. If a revision ID is provided, metadata for that revision is returned, otherwise the latest revision ID is assumed.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable).
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   The revision id
  Future<Revision?> pageTitleTitleRevisionGet(
    String title,
    int revision,
  ) async {
    final response = await pageTitleTitleRevisionGetWithHttpInfo(
      title,
      revision,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Revision',
      ) as Revision;
    }
    return null;
  }
}
