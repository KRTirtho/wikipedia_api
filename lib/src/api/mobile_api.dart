// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class MobileApi {
  MobileApi([ApiClient? apiClient])
      : apiClient = apiClient ?? _defaultApiClient;

  final ApiClient apiClient;

  /// Get CSS for mobile apps.
  ///
  /// Gets common CSS mobile apps need to properly display pages using Page Content Service. In most cases all of the types are needed (preferably in this order): * base (Common mobile CSS from ResourceLoader) * site (Site-specific, mobile CSS from ResourceLoader, as defined in MediaWiki\\:Mobile.css) * pcs (CSS for the Page Content Service)  The `base` and `pcs` responses are the same regardless of what domain is used. For these we suggest meta.wikimedia.org.  You can still pass pagelib for type, but this is a legacy version of the CSS for existing app clients.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   The desired CSS bundle
  Future<Response> dataCssMobileTypeGetWithHttpInfo(
    String type,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/data/css/mobile/{type}'.replaceAll('{type}', type);

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

  /// Get CSS for mobile apps.
  ///
  /// Gets common CSS mobile apps need to properly display pages using Page Content Service. In most cases all of the types are needed (preferably in this order): * base (Common mobile CSS from ResourceLoader) * site (Site-specific, mobile CSS from ResourceLoader, as defined in MediaWiki\\:Mobile.css) * pcs (CSS for the Page Content Service)  The `base` and `pcs` responses are the same regardless of what domain is used. For these we suggest meta.wikimedia.org.  You can still pass pagelib for type, but this is a legacy version of the CSS for existing app clients.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   The desired CSS bundle
  Future<Object?> dataCssMobileTypeGet(
    String type,
  ) async {
    final response = await dataCssMobileTypeGetWithHttpInfo(
      type,
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

  /// Get internationalization info
  ///
  /// Gets internationalization information for the given site. Currently the only supported type is pcs for the Page Content Service.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   The desired internationalization bundle
  Future<Response> dataI18nTypeGetWithHttpInfo(
    String type,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/data/i18n/{type}'.replaceAll('{type}', type);

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

  /// Get internationalization info
  ///
  /// Gets internationalization information for the given site. Currently the only supported type is pcs for the Page Content Service.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   The desired internationalization bundle
  Future<Object?> dataI18nTypeGet(
    String type,
  ) async {
    final response = await dataI18nTypeGetWithHttpInfo(
      type,
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

  /// Get JavaScript for mobileapps
  ///
  /// Gets the JavaScript bundle so that clients can have convenient access to that for consuming the page HTML. Amongst other things, * it allows to detect the platform and through that enable platform specific CSS rules, * has code to lazy load images on the page, * code for collapsing and expanding tables.  Valid types are pagelib or pcs. Passing pcs will return the JavaScript for the Page Content Service. Passing pagelib will return a deprecated legacy version of the wikimedia-page-library JavaScript to support existing app clients.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   The desired JavaScript bundle
  Future<Response> dataJavascriptMobileTypeGetWithHttpInfo(
    String type,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/data/javascript/mobile/{type}'.replaceAll('{type}', type);

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

  /// Get JavaScript for mobileapps
  ///
  /// Gets the JavaScript bundle so that clients can have convenient access to that for consuming the page HTML. Amongst other things, * it allows to detect the platform and through that enable platform specific CSS rules, * has code to lazy load images on the page, * code for collapsing and expanding tables.  Valid types are pagelib or pcs. Passing pcs will return the JavaScript for the Page Content Service. Passing pagelib will return a deprecated legacy version of the wikimedia-page-library JavaScript to support existing app clients.  Stability: [unstable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Unstable)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   The desired JavaScript bundle
  Future<Object?> dataJavascriptMobileTypeGet(
    String type,
  ) async {
    final response = await dataJavascriptMobileTypeGetWithHttpInfo(
      type,
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

  /// Get mobile-optimized HTML sections for a title.
  ///
  /// Retrieve the latest HTML for a page title optimised for viewing with native mobile applications. Note that the output is split by sections.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
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
  Future<Response> getSectionsWithHttpInfo(
    String title, {
    bool? redirect,
    String? acceptLanguage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/page/mobile-sections/{title}'.replaceAll('{title}', title);

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

  /// Get mobile-optimized HTML sections for a title.
  ///
  /// Retrieve the latest HTML for a page title optimised for viewing with native mobile applications. Note that the output is split by sections.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
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
  Future<Object?> getSections(
    String title, {
    bool? redirect,
    String? acceptLanguage,
  }) async {
    final response = await getSectionsWithHttpInfo(
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
        'Object',
      ) as Object;
    }
    return null;
  }

  /// Get mobile-optimized HTML lead section and metadata for a title.
  ///
  /// Retrieve the lead section of the latest HTML for a page title optimised for viewing with native mobile applications.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
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
  Future<Response> getSectionsLeadWithHttpInfo(
    String title, {
    bool? redirect,
    String? acceptLanguage,
  }) async {
    // ignore: prefer_const_declarations
    final path =
        r'/page/mobile-sections-lead/{title}'.replaceAll('{title}', title);

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

  /// Get mobile-optimized HTML lead section and metadata for a title.
  ///
  /// Retrieve the lead section of the latest HTML for a page title optimised for viewing with native mobile applications.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
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
  Future<Object?> getSectionsLead(
    String title, {
    bool? redirect,
    String? acceptLanguage,
  }) async {
    final response = await getSectionsLeadWithHttpInfo(
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
        'Object',
      ) as Object;
    }
    return null;
  }

  /// Get mobile-optimized HTML lead section and metadata for a title.
  ///
  /// Retrieve the lead section of the latest HTML for a page title optimised for viewing with native mobile applications.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
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
  ///
  /// * [String] acceptLanguage:
  ///   The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.
  Future<Response> getSectionsLeadWithRevisionWithHttpInfo(
    String title,
    int revision, {
    bool? redirect,
    String? acceptLanguage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/page/mobile-sections-lead/{title}/{revision}'
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

  /// Get mobile-optimized HTML lead section and metadata for a title.
  ///
  /// Retrieve the lead section of the latest HTML for a page title optimised for viewing with native mobile applications.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
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
  ///
  /// * [String] acceptLanguage:
  ///   The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.
  Future<Object?> getSectionsLeadWithRevision(
    String title,
    int revision, {
    bool? redirect,
    String? acceptLanguage,
  }) async {
    final response = await getSectionsLeadWithRevisionWithHttpInfo(
      title,
      revision,
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
        'Object',
      ) as Object;
    }
    return null;
  }

  /// Get non-lead mobile-optimized HTML sections for a title.
  ///
  /// Retrieve the remainder of the latest HTML (without the lead section) for a page title optimised for viewing with native mobile applications, provided as a JSON object containing the sections.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
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
  Future<Response> getSectionsRemainingWithHttpInfo(
    String title, {
    bool? redirect,
    String? acceptLanguage,
  }) async {
    // ignore: prefer_const_declarations
    final path =
        r'/page/mobile-sections-remaining/{title}'.replaceAll('{title}', title);

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

  /// Get non-lead mobile-optimized HTML sections for a title.
  ///
  /// Retrieve the remainder of the latest HTML (without the lead section) for a page title optimised for viewing with native mobile applications, provided as a JSON object containing the sections.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
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
  Future<Object?> getSectionsRemaining(
    String title, {
    bool? redirect,
    String? acceptLanguage,
  }) async {
    final response = await getSectionsRemainingWithHttpInfo(
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
        'Object',
      ) as Object;
    }
    return null;
  }

  /// Get non-lead mobile-optimized HTML sections for a title.
  ///
  /// Retrieve the remainder of the latest HTML (without the lead section) for a page title optimised for viewing with native mobile applications, provided as a JSON object containing the sections.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
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
  ///
  /// * [String] acceptLanguage:
  ///   The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.
  Future<Response> getSectionsRemainingWithRevisionWithHttpInfo(
    String title,
    int revision, {
    bool? redirect,
    String? acceptLanguage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/page/mobile-sections-remaining/{title}/{revision}'
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

  /// Get non-lead mobile-optimized HTML sections for a title.
  ///
  /// Retrieve the remainder of the latest HTML (without the lead section) for a page title optimised for viewing with native mobile applications, provided as a JSON object containing the sections.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
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
  ///
  /// * [String] acceptLanguage:
  ///   The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.
  Future<Object?> getSectionsRemainingWithRevision(
    String title,
    int revision, {
    bool? redirect,
    String? acceptLanguage,
  }) async {
    final response = await getSectionsRemainingWithRevisionWithHttpInfo(
      title,
      revision,
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
        'Object',
      ) as Object;
    }
    return null;
  }

  /// Get mobile-optimized HTML sections for a title.
  ///
  /// Retrieve the latest HTML for a page title optimised for viewing with native mobile applications. Note that the output is split by sections.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
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
  ///
  /// * [String] acceptLanguage:
  ///   The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.
  Future<Response> getSectionsWithRevisionWithHttpInfo(
    String title,
    int revision, {
    bool? redirect,
    String? acceptLanguage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/page/mobile-sections/{title}/{revision}'
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

  /// Get mobile-optimized HTML sections for a title.
  ///
  /// Retrieve the latest HTML for a page title optimised for viewing with native mobile applications. Note that the output is split by sections.  Stability: [deprecated](https://www.mediawiki.org/wiki/API_versioning#Deprecated)  [Here](https://lists.wikimedia.org/hyperkitty/list/mediawiki-api-announce@lists.wikimedia.org/thread/ZBYSZ4VQYIVZFOCEUNCL3ZSSIEECBK6H/) you can find more information about the endpoint deprecation.  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
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
  ///
  /// * [String] acceptLanguage:
  ///   The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.
  Future<Object?> getSectionsWithRevision(
    String title,
    int revision, {
    bool? redirect,
    String? acceptLanguage,
  }) async {
    final response = await getSectionsWithRevisionWithHttpInfo(
      title,
      revision,
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
        'Object',
      ) as Object;
    }
    return null;
  }
}
