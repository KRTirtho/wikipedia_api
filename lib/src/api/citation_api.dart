// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class CitationApi {
  CitationApi([ApiClient? apiClient])
      : apiClient = apiClient ?? _defaultApiClient;

  final ApiClient apiClient;

  /// Get citation data given an article identifier.
  ///
  /// Generates citation data given a URL, DOI, PMID, or PMCID.  Automated requests can be made at a rate of 1 request per second (rps).  See more at [Citoid service documentation](https://www.mediawiki.org/wiki/Citoid)  The citation data can be requested in one of the following formats:   - `mediawiki`: format designed for MediaWiki to be used with `templateData`.     Uses [Zotero field names](https://aurimasv.github.io/z2csl/typeMap.xml).   - `mediawiki-basefields`: `mediawiki` format with Zotero `basefield` field names.   - `zotero`: format used by [Zotero](https://www.zotero.org/).   - `bibtex`: format used in conjunction with LaTeX documents.     See [bibtex.org](http://www.bibtex.org/).   - `wikibase`: format designed for [Wikibase](https://www.mediawiki.org/wiki/Extension:Wikibase_Repository).  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] format (required):
  ///   The format to use for the resulting citation data
  ///
  /// * [String] query (required):
  ///   URL of an article, DOI, PMCID or PMID in the URL-encoded format. Note that on the Swagger-UI doc page you don't need to URI-encode the parameter manually, it will be done by the docs engine.
  ///
  /// * [String] acceptLanguage:
  ///   For some articles the result depends on the `Accept-Language` header, so provide it if localized content is required.
  Future<Response> getCitationWithHttpInfo(
    String format,
    String query, {
    String? acceptLanguage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/data/citation/{format}/{query}'
        .replaceAll('{format}', format)
        .replaceAll('{query}', query);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get citation data given an article identifier.
  ///
  /// Generates citation data given a URL, DOI, PMID, or PMCID.  Automated requests can be made at a rate of 1 request per second (rps).  See more at [Citoid service documentation](https://www.mediawiki.org/wiki/Citoid)  The citation data can be requested in one of the following formats:   - `mediawiki`: format designed for MediaWiki to be used with `templateData`.     Uses [Zotero field names](https://aurimasv.github.io/z2csl/typeMap.xml).   - `mediawiki-basefields`: `mediawiki` format with Zotero `basefield` field names.   - `zotero`: format used by [Zotero](https://www.zotero.org/).   - `bibtex`: format used in conjunction with LaTeX documents.     See [bibtex.org](http://www.bibtex.org/).   - `wikibase`: format designed for [Wikibase](https://www.mediawiki.org/wiki/Extension:Wikibase_Repository).  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [String] format (required):
  ///   The format to use for the resulting citation data
  ///
  /// * [String] query (required):
  ///   URL of an article, DOI, PMCID or PMID in the URL-encoded format. Note that on the Swagger-UI doc page you don't need to URI-encode the parameter manually, it will be done by the docs engine.
  ///
  /// * [String] acceptLanguage:
  ///   For some articles the result depends on the `Accept-Language` header, so provide it if localized content is required.
  Future<Result?> getCitation(
    String format,
    String query, {
    String? acceptLanguage,
  }) async {
    final response = await getCitationWithHttpInfo(
      format,
      query,
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
        'Result',
      ) as Result;
    }
    return null;
  }
}
