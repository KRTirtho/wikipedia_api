// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class RecommendationApi {
  RecommendationApi([ApiClient? apiClient])
      : apiClient = apiClient ?? _defaultApiClient;

  final ApiClient apiClient;

  /// Recommend missing articles
  ///
  /// Recommends articles similar to the seed article but are missing from the domain language Wikipedia.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] seedArticle (required):
  ///   The article title used to search similar but missing articles
  Future<Response>
      dataRecommendationArticleCreationMorelikeSeedArticleGetWithHttpInfo(
    String seedArticle,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/data/recommendation/article/creation/morelike/{seed_article}'
            .replaceAll('{seed_article}', seedArticle);

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

  /// Recommend missing articles
  ///
  /// Recommends articles similar to the seed article but are missing from the domain language Wikipedia.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [String] seedArticle (required):
  ///   The article title used to search similar but missing articles
  Future<List<MorelikeResultInner>?>
      dataRecommendationArticleCreationMorelikeSeedArticleGet(
    String seedArticle,
  ) async {
    final response =
        await dataRecommendationArticleCreationMorelikeSeedArticleGetWithHttpInfo(
      seedArticle,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(
              responseBody, 'List<MorelikeResultInner>') as List)
          .cast<MorelikeResultInner>()
          .toList(growable: false);
    }
    return null;
  }

  /// Recommend articles for translation.
  ///
  /// Recommends articles to be translated from the source to the domain language.  See more at [Recommendation API documentation](https://meta.wikimedia.org/wiki/Recommendation_API)  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fromLang (required):
  ///   The source language code
  ///
  /// * [int] count:
  ///   The max number of articles to return
  Future<Response>
      dataRecommendationArticleCreationTranslationFromLangGetWithHttpInfo(
    String fromLang, {
    int? count,
  }) async {
    // ignore: prefer_const_declarations
    final path =
        r'/data/recommendation/article/creation/translation/{from_lang}'
            .replaceAll('{from_lang}', fromLang);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (count != null) {
      queryParams.addAll(_queryParams('', 'count', count));
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

  /// Recommend articles for translation.
  ///
  /// Recommends articles to be translated from the source to the domain language.  See more at [Recommendation API documentation](https://meta.wikimedia.org/wiki/Recommendation_API)  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [String] fromLang (required):
  ///   The source language code
  ///
  /// * [int] count:
  ///   The max number of articles to return
  Future<RecommendationResult?>
      dataRecommendationArticleCreationTranslationFromLangGet(
    String fromLang, {
    int? count,
  }) async {
    final response =
        await dataRecommendationArticleCreationTranslationFromLangGetWithHttpInfo(
      fromLang,
      count: count,
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
        'RecommendationResult',
      ) as RecommendationResult;
    }
    return null;
  }

  /// Recommend articles for translation.
  ///
  /// Recommends articles to be translated from the source to the domain language.  See more at [Recommendation API documentation](https://meta.wikimedia.org/wiki/Recommendation_API)  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fromLang (required):
  ///   The source language code
  ///
  /// * [String] seedArticle (required):
  ///   The article to use as a search seed
  ///
  /// * [int] count:
  ///   The max number of articles to return
  Future<Response>
      dataRecommendationArticleCreationTranslationFromLangSeedArticleGetWithHttpInfo(
    String fromLang,
    String seedArticle, {
    int? count,
  }) async {
    // ignore: prefer_const_declarations
    final path =
        r'/data/recommendation/article/creation/translation/{from_lang}/{seed_article}'
            .replaceAll('{from_lang}', fromLang)
            .replaceAll('{seed_article}', seedArticle);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (count != null) {
      queryParams.addAll(_queryParams('', 'count', count));
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

  /// Recommend articles for translation.
  ///
  /// Recommends articles to be translated from the source to the domain language.  See more at [Recommendation API documentation](https://meta.wikimedia.org/wiki/Recommendation_API)  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [String] fromLang (required):
  ///   The source language code
  ///
  /// * [String] seedArticle (required):
  ///   The article to use as a search seed
  ///
  /// * [int] count:
  ///   The max number of articles to return
  Future<RecommendationResult?>
      dataRecommendationArticleCreationTranslationFromLangSeedArticleGet(
    String fromLang,
    String seedArticle, {
    int? count,
  }) async {
    final response =
        await dataRecommendationArticleCreationTranslationFromLangSeedArticleGetWithHttpInfo(
      fromLang,
      seedArticle,
      count: count,
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
        'RecommendationResult',
      ) as RecommendationResult;
    }
    return null;
  }
}
