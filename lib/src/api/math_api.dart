// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class MathApi {
  MathApi([ApiClient? apiClient]) : apiClient = apiClient ?? _defaultApiClient;

  final ApiClient apiClient;

  /// Check and normalize a TeX formula.
  ///
  /// Checks the supplied TeX formula for correctness and returns the normalised formula representation as well as information about identifiers. Available types are tex and inline-tex. The response contains the `x-resource-location` header which can be used to retrieve the render of the checked formula in one of the supported rendering formats. Just append the value of the header to `/media/math/{format}/` and perform a GET request against that URL.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   The input type of the given formula; can be tex or inline-tex
  ///
  /// * [String] q (required):
  ///   The formula to check
  Future<Response> mediaMathCheckTypePostWithHttpInfo(
    String type,
    String q,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/media/math/check/{type}'.replaceAll('{type}', type);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (q != null) {
      hasFields = true;
      mp.fields[r'q'] = parameterToString(q);
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

  /// Check and normalize a TeX formula.
  ///
  /// Checks the supplied TeX formula for correctness and returns the normalised formula representation as well as information about identifiers. Available types are tex and inline-tex. The response contains the `x-resource-location` header which can be used to retrieve the render of the checked formula in one of the supported rendering formats. Just append the value of the header to `/media/math/{format}/` and perform a GET request against that URL.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable).
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   The input type of the given formula; can be tex or inline-tex
  ///
  /// * [String] q (required):
  ///   The formula to check
  Future<Object?> mediaMathCheckTypePost(
    String type,
    String q,
  ) async {
    final response = await mediaMathCheckTypePostWithHttpInfo(
      type,
      q,
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

  /// Get a previously-stored formula
  ///
  /// Returns the previously-stored formula via `/media/math/check/{type}` for the given hash.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hash (required):
  ///   The hash string of the previous POST data
  Future<Response> mediaMathFormulaHashGetWithHttpInfo(
    String hash,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/media/math/formula/{hash}'.replaceAll('{hash}', hash);

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

  /// Get a previously-stored formula
  ///
  /// Returns the previously-stored formula via `/media/math/check/{type}` for the given hash.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable).
  ///
  /// Parameters:
  ///
  /// * [String] hash (required):
  ///   The hash string of the previous POST data
  Future<Object?> mediaMathFormulaHashGet(
    String hash,
  ) async {
    final response = await mediaMathFormulaHashGetWithHttpInfo(
      hash,
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

  /// Get rendered formula in the given format.
  ///
  /// Given a request hash, renders a TeX formula into its mathematic representation in the given format. When a request is issued to the `/media/math/check/{format}` POST endpoint, the response contains the `x-resource-location` header denoting the hash ID of the POST data. Once obtained, this endpoint has to be used to obtain the actual render.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] format (required):
  ///   The output format; can be svg or mml
  ///
  /// * [String] hash (required):
  ///   The hash string of the previous POST data
  Future<Response> mediaMathRenderFormatHashGetWithHttpInfo(
    String format,
    String hash,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/media/math/render/{format}/{hash}'
        .replaceAll('{format}', format)
        .replaceAll('{hash}', hash);

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

  /// Get rendered formula in the given format.
  ///
  /// Given a request hash, renders a TeX formula into its mathematic representation in the given format. When a request is issued to the `/media/math/check/{format}` POST endpoint, the response contains the `x-resource-location` header denoting the hash ID of the POST data. Once obtained, this endpoint has to be used to obtain the actual render.  Stability: [stable](https://www.mediawiki.org/wiki/API_versioning#Stable).
  ///
  /// Parameters:
  ///
  /// * [String] format (required):
  ///   The output format; can be svg or mml
  ///
  /// * [String] hash (required):
  ///   The hash string of the previous POST data
  Future<String?> mediaMathRenderFormatHashGet(
    String format,
    String hash,
  ) async {
    final response = await mediaMathRenderFormatHashGetWithHttpInfo(
      format,
      hash,
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
