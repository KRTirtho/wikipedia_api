// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class TransformsApi {
  TransformsApi([ApiClient? apiClient])
      : apiClient = apiClient ?? _defaultApiClient;

  final ApiClient apiClient;

  /// Fetch the dictionary meaning of a word
  ///
  /// Fetches the dictionary meaning of a word from a language and displays it in the target language.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] from (required):
  ///   The source language code
  ///
  /// * [String] word (required):
  ///   The word to lookup
  Future<Response> doDictWithHttpInfo(
    String from,
    String word,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/transform/word/from/{from}/{word}'
        .replaceAll('{from}', from)
        .replaceAll('{word}', word);

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

  /// Fetch the dictionary meaning of a word
  ///
  /// Fetches the dictionary meaning of a word from a language and displays it in the target language.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [String] from (required):
  ///   The source language code
  ///
  /// * [String] word (required):
  ///   The word to lookup
  Future<CxDict?> doDict(
    String from,
    String word,
  ) async {
    final response = await doDictWithHttpInfo(
      from,
      word,
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
        'CxDict',
      ) as CxDict;
    }
    return null;
  }

  /// Fetch the dictionary meaning of a word
  ///
  /// Fetches the dictionary meaning of a word from a language and displays it in the target language.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] from (required):
  ///   The source language code
  ///
  /// * [String] word (required):
  ///   The word to lookup
  ///
  /// * [String] provider (required):
  ///   The dictionary provider id
  Future<Response> doDictProviderWithHttpInfo(
    String from,
    String word,
    String provider,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/transform/word/from/{from}/{word}/{provider}'
        .replaceAll('{from}', from)
        .replaceAll('{word}', word)
        .replaceAll('{provider}', provider);

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

  /// Fetch the dictionary meaning of a word
  ///
  /// Fetches the dictionary meaning of a word from a language and displays it in the target language.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [String] from (required):
  ///   The source language code
  ///
  /// * [String] word (required):
  ///   The word to lookup
  ///
  /// * [String] provider (required):
  ///   The dictionary provider id
  Future<CxDict?> doDictProvider(
    String from,
    String word,
    String provider,
  ) async {
    final response = await doDictProviderWithHttpInfo(
      from,
      word,
      provider,
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
        'CxDict',
      ) as CxDict;
    }
    return null;
  }

  /// Machine-translate content
  ///
  /// Fetches the machine translation for the posted content from the source to the language of this wiki.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] from (required):
  ///   The source language code
  ///
  /// * [String] html (required):
  ///   The HTML content to translate
  Future<Response> doMTWithHttpInfo(
    String from,
    String html,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/transform/html/from/{from}'.replaceAll('{from}', from);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    formParams[r'html'] = parameterToString(html);

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Machine-translate content
  ///
  /// Fetches the machine translation for the posted content from the source to the language of this wiki.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [String] from (required):
  ///   The source language code
  ///
  /// * [String] html (required):
  ///   The HTML content to translate
  Future<CxMt?> doMT(
    String from,
    String html,
  ) async {
    final response = await doMTWithHttpInfo(
      from,
      html,
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
        'CxMt',
      ) as CxMt;
    }
    return null;
  }

  /// Machine-translate content
  ///
  /// Fetches the machine translation for the posted content from the source to the language of this wiki.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] from (required):
  ///   The source language code
  ///
  /// * [String] provider (required):
  ///   The machine translation provider id
  ///
  /// * [String] html (required):
  ///   The HTML content to translate
  Future<Response> doMTProviderWithHttpInfo(
    String from,
    String provider,
    String html,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/transform/html/from/{from}/{provider}'
        .replaceAll('{from}', from)
        .replaceAll('{provider}', provider);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    hasFields = true;
    mp.fields[r'html'] = parameterToString(html);
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Machine-translate content
  ///
  /// Fetches the machine translation for the posted content from the source to the language of this wiki.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [String] from (required):
  ///   The source language code
  ///
  /// * [String] provider (required):
  ///   The machine translation provider id
  ///
  /// * [String] html (required):
  ///   The HTML content to translate
  Future<CxMt?> doMTProvider(
    String from,
    String provider,
    String html,
  ) async {
    final response = await doMTProviderWithHttpInfo(
      from,
      provider,
      html,
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
        'CxMt',
      ) as CxMt;
    }
    return null;
  }

  /// Transform HTML to Wikitext
  ///
  /// Transform [Parsoid HTML](https://www.mediawiki.org/wiki/Parsoid/MediaWiki_DOM_spec) to Wikitext.  When converting pre-existing (possibly modified) content, you should pass in the `title`, `revision`, and `If-Match` header. This lets [Parsoid](https://www.mediawiki.org/wiki/Parsoid) preserve small syntactic variations in wikitext, which ensures that diffs are readable.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] html (required):
  ///   The HTML to transform
  ///
  /// * [String] ifMatch:
  ///   The `ETag` header of the original render indicating it's revision and timeuuid. Required if both `title` and `revision` parameters are present.
  ///
  /// * [bool] scrubWikitext:
  ///   Normalise the DOM to yield cleaner wikitext?
  Future<Response> transformHtmlToWikitextPostWithHttpInfo(
    String html, {
    String? ifMatch,
    bool? scrubWikitext,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/transform/html/to/wikitext';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ifMatch != null) {
      headerParams[r'if-match'] = parameterToString(ifMatch);
    }

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    hasFields = true;
    mp.fields[r'html'] = parameterToString(html);
    if (scrubWikitext != null) {
      hasFields = true;
      mp.fields[r'scrub_wikitext'] = parameterToString(scrubWikitext);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Transform HTML to Wikitext
  ///
  /// Transform [Parsoid HTML](https://www.mediawiki.org/wiki/Parsoid/MediaWiki_DOM_spec) to Wikitext.  When converting pre-existing (possibly modified) content, you should pass in the `title`, `revision`, and `If-Match` header. This lets [Parsoid](https://www.mediawiki.org/wiki/Parsoid) preserve small syntactic variations in wikitext, which ensures that diffs are readable.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s
  ///
  /// Parameters:
  ///
  /// * [String] html (required):
  ///   The HTML to transform
  ///
  /// * [String] ifMatch:
  ///   The `ETag` header of the original render indicating it's revision and timeuuid. Required if both `title` and `revision` parameters are present.
  ///
  /// * [bool] scrubWikitext:
  ///   Normalise the DOM to yield cleaner wikitext?
  Future<String?> transformHtmlToWikitextPost(
    String html, {
    String? ifMatch,
    bool? scrubWikitext,
  }) async {
    final response = await transformHtmlToWikitextPostWithHttpInfo(
      html,
      ifMatch: ifMatch,
      scrubWikitext: scrubWikitext,
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

  /// Transform HTML to Wikitext
  ///
  /// Transform [Parsoid HTML](https://www.mediawiki.org/wiki/Parsoid/MediaWiki_DOM_spec) to Wikitext.  When converting pre-existing (possibly modified) content, you should pass in the `title`, `revision`, and `If-Match` header. This lets [Parsoid](https://www.mediawiki.org/wiki/Parsoid) preserve small syntactic variations in wikitext, which ensures that diffs are readable.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [String] html (required):
  ///   The HTML to transform
  ///
  /// * [String] ifMatch:
  ///   The `ETag` header of the original render indicating it's revision and timeuuid. Required if both `title` and `revision` parameters are present.
  ///
  /// * [bool] scrubWikitext:
  ///   Normalise the DOM to yield cleaner wikitext?
  Future<Response> transformHtmlToWikitextTitlePostWithHttpInfo(
    String title,
    String html, {
    String? ifMatch,
    bool? scrubWikitext,
  }) async {
    // ignore: prefer_const_declarations
    final path =
        r'/transform/html/to/wikitext/{title}'.replaceAll('{title}', title);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ifMatch != null) {
      headerParams[r'if-match'] = parameterToString(ifMatch);
    }

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    hasFields = true;
    mp.fields[r'html'] = parameterToString(html);
    if (scrubWikitext != null) {
      hasFields = true;
      mp.fields[r'scrub_wikitext'] = parameterToString(scrubWikitext);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Transform HTML to Wikitext
  ///
  /// Transform [Parsoid HTML](https://www.mediawiki.org/wiki/Parsoid/MediaWiki_DOM_spec) to Wikitext.  When converting pre-existing (possibly modified) content, you should pass in the `title`, `revision`, and `If-Match` header. This lets [Parsoid](https://www.mediawiki.org/wiki/Parsoid) preserve small syntactic variations in wikitext, which ensures that diffs are readable.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [String] html (required):
  ///   The HTML to transform
  ///
  /// * [String] ifMatch:
  ///   The `ETag` header of the original render indicating it's revision and timeuuid. Required if both `title` and `revision` parameters are present.
  ///
  /// * [bool] scrubWikitext:
  ///   Normalise the DOM to yield cleaner wikitext?
  Future<String?> transformHtmlToWikitextTitlePost(
    String title,
    String html, {
    String? ifMatch,
    bool? scrubWikitext,
  }) async {
    final response = await transformHtmlToWikitextTitlePostWithHttpInfo(
      title,
      html,
      ifMatch: ifMatch,
      scrubWikitext: scrubWikitext,
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

  /// Transform HTML to Wikitext
  ///
  /// Transform [Parsoid HTML](https://www.mediawiki.org/wiki/Parsoid/MediaWiki_DOM_spec) to Wikitext.  When converting pre-existing (possibly modified) content, you should pass in the `title`, `revision`, and `If-Match` header. This lets [Parsoid](https://www.mediawiki.org/wiki/Parsoid) preserve small syntactic variations in wikitext, which ensures that diffs are readable.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   The page revision
  ///
  /// * [String] html (required):
  ///   The HTML to transform
  ///
  /// * [String] ifMatch:
  ///   The `ETag` header of the original render indicating it's revision and timeuuid. Required if both `title` and `revision` parameters are present.
  ///
  /// * [bool] scrubWikitext:
  ///   Normalise the DOM to yield cleaner wikitext?
  Future<Response> transformHtmlToWikitextTitleRevisionPostWithHttpInfo(
    String title,
    int revision,
    String html, {
    String? ifMatch,
    bool? scrubWikitext,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/transform/html/to/wikitext/{title}/{revision}'
        .replaceAll('{title}', title)
        .replaceAll('{revision}', revision.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ifMatch != null) {
      headerParams[r'if-match'] = parameterToString(ifMatch);
    }

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    hasFields = true;
    mp.fields[r'html'] = parameterToString(html);
    if (scrubWikitext != null) {
      hasFields = true;
      mp.fields[r'scrub_wikitext'] = parameterToString(scrubWikitext);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Transform HTML to Wikitext
  ///
  /// Transform [Parsoid HTML](https://www.mediawiki.org/wiki/Parsoid/MediaWiki_DOM_spec) to Wikitext.  When converting pre-existing (possibly modified) content, you should pass in the `title`, `revision`, and `If-Match` header. This lets [Parsoid](https://www.mediawiki.org/wiki/Parsoid) preserve small syntactic variations in wikitext, which ensures that diffs are readable.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   The page revision
  ///
  /// * [String] html (required):
  ///   The HTML to transform
  ///
  /// * [String] ifMatch:
  ///   The `ETag` header of the original render indicating it's revision and timeuuid. Required if both `title` and `revision` parameters are present.
  ///
  /// * [bool] scrubWikitext:
  ///   Normalise the DOM to yield cleaner wikitext?
  Future<String?> transformHtmlToWikitextTitleRevisionPost(
    String title,
    int revision,
    String html, {
    String? ifMatch,
    bool? scrubWikitext,
  }) async {
    final response = await transformHtmlToWikitextTitleRevisionPostWithHttpInfo(
      title,
      revision,
      html,
      ifMatch: ifMatch,
      scrubWikitext: scrubWikitext,
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

  /// Transform Wikitext to HTML
  ///
  /// Transform wikitext to HTML. Note that if you set `stash: true`, you also need to supply the title.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s (5 req/s when `stash: true`)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wikitext (required):
  ///   The Wikitext to transform to HTML
  ///
  /// * [bool] bodyOnly:
  ///   Return only `body.innerHTML`
  ///
  /// * [bool] stash:
  ///   Whether to temporarily stash the result of the transformation
  Future<Response> transformWikitextToHtmlPostWithHttpInfo(
    String wikitext, {
    bool? bodyOnly,
    bool? stash,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/transform/wikitext/to/html';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    hasFields = true;
    mp.fields[r'wikitext'] = parameterToString(wikitext);
    if (bodyOnly != null) {
      hasFields = true;
      mp.fields[r'body_only'] = parameterToString(bodyOnly);
    }
    if (stash != null) {
      hasFields = true;
      mp.fields[r'stash'] = parameterToString(stash);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Transform Wikitext to HTML
  ///
  /// Transform wikitext to HTML. Note that if you set `stash: true`, you also need to supply the title.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s (5 req/s when `stash: true`)
  ///
  /// Parameters:
  ///
  /// * [String] wikitext (required):
  ///   The Wikitext to transform to HTML
  ///
  /// * [bool] bodyOnly:
  ///   Return only `body.innerHTML`
  ///
  /// * [bool] stash:
  ///   Whether to temporarily stash the result of the transformation
  Future<String?> transformWikitextToHtmlPost(
    String wikitext, {
    bool? bodyOnly,
    bool? stash,
  }) async {
    final response = await transformWikitextToHtmlPostWithHttpInfo(
      wikitext,
      bodyOnly: bodyOnly,
      stash: stash,
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

  /// Transform Wikitext to HTML
  ///
  /// Transform wikitext to HTML. Note that if you set `stash: true`, you also need to supply the title.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s (5 req/s when `stash: true`)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [String] wikitext (required):
  ///   The Wikitext to transform to HTML
  ///
  /// * [bool] bodyOnly:
  ///   Return only `body.innerHTML`
  ///
  /// * [bool] stash:
  ///   Whether to temporarily stash the result of the transformation
  Future<Response> transformWikitextToHtmlTitlePostWithHttpInfo(
    String title,
    String wikitext, {
    bool? bodyOnly,
    bool? stash,
  }) async {
    // ignore: prefer_const_declarations
    final path =
        r'/transform/wikitext/to/html/{title}'.replaceAll('{title}', title);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    hasFields = true;
    mp.fields[r'wikitext'] = parameterToString(wikitext);
    if (bodyOnly != null) {
      hasFields = true;
      mp.fields[r'body_only'] = parameterToString(bodyOnly);
    }
    if (stash != null) {
      hasFields = true;
      mp.fields[r'stash'] = parameterToString(stash);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Transform Wikitext to HTML
  ///
  /// Transform wikitext to HTML. Note that if you set `stash: true`, you also need to supply the title.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s (5 req/s when `stash: true`)
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [String] wikitext (required):
  ///   The Wikitext to transform to HTML
  ///
  /// * [bool] bodyOnly:
  ///   Return only `body.innerHTML`
  ///
  /// * [bool] stash:
  ///   Whether to temporarily stash the result of the transformation
  Future<String?> transformWikitextToHtmlTitlePost(
    String title,
    String wikitext, {
    bool? bodyOnly,
    bool? stash,
  }) async {
    final response = await transformWikitextToHtmlTitlePostWithHttpInfo(
      title,
      wikitext,
      bodyOnly: bodyOnly,
      stash: stash,
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

  /// Transform Wikitext to HTML
  ///
  /// Transform wikitext to HTML. Note that if you set `stash: true`, you also need to supply the title.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s (5 req/s when `stash: true`)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   The page revision
  ///
  /// * [String] wikitext (required):
  ///   The Wikitext to transform to HTML
  ///
  /// * [bool] bodyOnly:
  ///   Return only `body.innerHTML`
  ///
  /// * [bool] stash:
  ///   Whether to temporarily stash the result of the transformation
  Future<Response> transformWikitextToHtmlTitleRevisionPostWithHttpInfo(
    String title,
    int revision,
    String wikitext, {
    bool? bodyOnly,
    bool? stash,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/transform/wikitext/to/html/{title}/{revision}'
        .replaceAll('{title}', title)
        .replaceAll('{revision}', revision.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    hasFields = true;
    mp.fields[r'wikitext'] = parameterToString(wikitext);
    if (bodyOnly != null) {
      hasFields = true;
      mp.fields[r'body_only'] = parameterToString(bodyOnly);
    }
    if (stash != null) {
      hasFields = true;
      mp.fields[r'stash'] = parameterToString(stash);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Transform Wikitext to HTML
  ///
  /// Transform wikitext to HTML. Note that if you set `stash: true`, you also need to supply the title.  - Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable) - Rate limit: 25 req/s (5 req/s when `stash: true`)
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   The page revision
  ///
  /// * [String] wikitext (required):
  ///   The Wikitext to transform to HTML
  ///
  /// * [bool] bodyOnly:
  ///   Return only `body.innerHTML`
  ///
  /// * [bool] stash:
  ///   Whether to temporarily stash the result of the transformation
  Future<String?> transformWikitextToHtmlTitleRevisionPost(
    String title,
    int revision,
    String wikitext, {
    bool? bodyOnly,
    bool? stash,
  }) async {
    final response = await transformWikitextToHtmlTitleRevisionPostWithHttpInfo(
      title,
      revision,
      wikitext,
      bodyOnly: bodyOnly,
      stash: stash,
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

  /// Check Wikitext for lint errors
  ///
  /// Parse the supplied wikitext and check it for lint errors.  - Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) - Rate limit: 25 req/s
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] wikitext (required):
  ///   The Wikitext to check
  Future<Response> transformWikitextToLintPostWithHttpInfo(
    String wikitext,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/transform/wikitext/to/lint';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data', 'application/json'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    hasFields = true;
    mp.fields[r'wikitext'] = parameterToString(wikitext);
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Check Wikitext for lint errors
  ///
  /// Parse the supplied wikitext and check it for lint errors.  - Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) - Rate limit: 25 req/s
  ///
  /// Parameters:
  ///
  /// * [String] wikitext (required):
  ///   The Wikitext to check
  Future<Object?> transformWikitextToLintPost(
    String wikitext,
  ) async {
    final response = await transformWikitextToLintPostWithHttpInfo(
      wikitext,
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

  /// Check Wikitext for lint errors
  ///
  /// Parse the supplied wikitext and check it for lint errors.  - Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) - Rate limit: 25 req/s
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [String] wikitext (required):
  ///   The Wikitext to check
  Future<Response> transformWikitextToLintTitlePostWithHttpInfo(
    String title,
    String wikitext,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/transform/wikitext/to/lint/{title}'.replaceAll('{title}', title);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    hasFields = true;
    mp.fields[r'wikitext'] = parameterToString(wikitext);
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Check Wikitext for lint errors
  ///
  /// Parse the supplied wikitext and check it for lint errors.  - Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) - Rate limit: 25 req/s
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [String] wikitext (required):
  ///   The Wikitext to check
  Future<Object?> transformWikitextToLintTitlePost(
    String title,
    String wikitext,
  ) async {
    final response = await transformWikitextToLintTitlePostWithHttpInfo(
      title,
      wikitext,
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

  /// Check Wikitext for lint errors
  ///
  /// Parse the supplied wikitext and check it for lint errors.  - Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) - Rate limit: 25 req/s
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   The page revision
  ///
  /// * [String] wikitext (required):
  ///   The Wikitext to check
  Future<Response> transformWikitextToLintTitleRevisionPostWithHttpInfo(
    String title,
    int revision,
    String wikitext,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/transform/wikitext/to/lint/{title}/{revision}'
        .replaceAll('{title}', title)
        .replaceAll('{revision}', revision.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    hasFields = true;
    mp.fields[r'wikitext'] = parameterToString(wikitext);
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Check Wikitext for lint errors
  ///
  /// Parse the supplied wikitext and check it for lint errors.  - Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental) - Rate limit: 25 req/s
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [int] revision (required):
  ///   The page revision
  ///
  /// * [String] wikitext (required):
  ///   The Wikitext to check
  Future<Object?> transformWikitextToLintTitleRevisionPost(
    String title,
    int revision,
    String wikitext,
  ) async {
    final response = await transformWikitextToLintTitleRevisionPostWithHttpInfo(
      title,
      revision,
      wikitext,
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

  /// Transform Wikitext to Mobile HTML
  ///
  /// Transform wikitext to Mobile HTML.  - Stability: [stable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Stable) - Rate limit: 25 req/s (5 req/s when `stash: true`)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [String] wikitext (required):
  ///   The Wikitext to transform to HTML
  ///
  /// * [String] acceptLanguage:
  ///   The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.
  ///
  /// * [String] outputMode:
  ///   Output mode for mobile-html. Default is `editPreview`.
  Future<Response> transformWikitextToMobileHtmlWithHttpInfo(
    String title,
    String wikitext, {
    String? acceptLanguage,
    String? outputMode,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/transform/wikitext/to/mobile-html/{title}'
        .replaceAll('{title}', title);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }
    if (outputMode != null) {
      headerParams[r'output-mode'] = parameterToString(outputMode);
    }

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    hasFields = true;
    mp.fields[r'wikitext'] = parameterToString(wikitext);
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Transform Wikitext to Mobile HTML
  ///
  /// Transform wikitext to Mobile HTML.  - Stability: [stable](https://www.mediawiki.org/wiki/Wikimedia_Product/Wikimedia_Product_Infrastructure_team/API_endpoint_stability_policy#Stable) - Rate limit: 25 req/s (5 req/s when `stash: true`)  Please follow [wikitech-l](https://lists.wikimedia.org/mailman/listinfo/wikitech-l) or [mediawiki-api-announce](https://lists.wikimedia.org/mailman/listinfo/mediawiki-api-announce) for announcements of breaking changes.
  ///
  /// Parameters:
  ///
  /// * [String] title (required):
  ///   Page title. Use underscores instead of spaces. Use percent-encoding. Example: `Main_Page`.
  ///
  /// * [String] wikitext (required):
  ///   The Wikitext to transform to HTML
  ///
  /// * [String] acceptLanguage:
  ///   The desired language variant code for wikis where LanguageConverter is enabled. Example: `sr-el` for Latin transcription of the Serbian language.
  ///
  /// * [String] outputMode:
  ///   Output mode for mobile-html. Default is `editPreview`.
  Future<String?> transformWikitextToMobileHtml(
    String title,
    String wikitext, {
    String? acceptLanguage,
    String? outputMode,
  }) async {
    final response = await transformWikitextToMobileHtmlWithHttpInfo(
      title,
      wikitext,
      acceptLanguage: acceptLanguage,
      outputMode: outputMode,
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
}
