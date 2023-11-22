// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class ReadingListsApi {
  ReadingListsApi([ApiClient? apiClient])
      : apiClient = apiClient ?? _defaultApiClient;

  final ApiClient apiClient;

  /// Create multiple new lists for the current user.
  ///
  /// See `POST /lists/`.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] csrfToken (required):
  ///   The CRSF edit token provided by the MediaWiki API
  ///
  /// * [Batch] batch (required):
  Future<Response> dataListsBatchPostWithHttpInfo(
    String csrfToken,
    Batch batch,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/data/lists/batch';

    // ignore: prefer_final_locals
    Object? postBody = batch;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'csrf_token', csrfToken));

    const contentTypes = <String>[];

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

  /// Create multiple new lists for the current user.
  ///
  /// See `POST /lists/`.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [String] csrfToken (required):
  ///   The CRSF edit token provided by the MediaWiki API
  ///
  /// * [Batch] batch (required):
  Future<ListCreateBatch?> dataListsBatchPost(
    String csrfToken,
    Batch batch,
  ) async {
    final response = await dataListsBatchPostWithHttpInfo(
      csrfToken,
      batch,
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
        'ListCreateBatch',
      ) as ListCreateBatch;
    }
    return null;
  }

  /// Get recent changes to the lists
  ///
  /// Returns metadata describing lists and entries which have changed. Might be truncated and include a continuation token.  Request must be authenticated with a MediaWiki session cookie.  For safe synchronization, the date parameter should be taken from the `continue-from` field of a previous `GET /lists/` or `GET /lists/changes/since/{date}` request. This will ensure that no changes are skipped, at the cost of sometimes receiving the same change multitple times. Clients should handle changes in an idempotent way.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] date (required):
  ///   Cutoff date (in ISO 8601). To ensure reliable synchronization, the API might return changes which are slightly older than the cutoff date.
  ///
  /// * [String] next:
  ///   Continuation parameter from previous request
  Future<Response> dataListsChangesSinceDateGetWithHttpInfo(
    DateTime date, {
    String? next,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/data/lists/changes/since/{date}'
        .replaceAll('{date}', date.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (next != null) {
      queryParams.addAll(_queryParams('', 'next', next));
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

  /// Get recent changes to the lists
  ///
  /// Returns metadata describing lists and entries which have changed. Might be truncated and include a continuation token.  Request must be authenticated with a MediaWiki session cookie.  For safe synchronization, the date parameter should be taken from the `continue-from` field of a previous `GET /lists/` or `GET /lists/changes/since/{date}` request. This will ensure that no changes are skipped, at the cost of sometimes receiving the same change multitple times. Clients should handle changes in an idempotent way.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [DateTime] date (required):
  ///   Cutoff date (in ISO 8601). To ensure reliable synchronization, the API might return changes which are slightly older than the cutoff date.
  ///
  /// * [String] next:
  ///   Continuation parameter from previous request
  Future<DataListsGet200Response?> dataListsChangesSinceDateGet(
    DateTime date, {
    String? next,
  }) async {
    final response = await dataListsChangesSinceDateGetWithHttpInfo(
      date,
      next: next,
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
        'DataListsGet200Response',
      ) as DataListsGet200Response;
    }
    return null;
  }

  /// Get all lists of the current user.
  ///
  /// Returns metadata describing the lists of the current user. Might be truncated and include a continuation token.  Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] next:
  ///   Continuation parameter from previous request
  ///
  /// * [String] sort:
  ///   Sort order - `name`: by name, ascending; - `updated`: by last modification date, descending.
  Future<Response> dataListsGetWithHttpInfo({
    String? next,
    String? sort,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/data/lists/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (next != null) {
      queryParams.addAll(_queryParams('', 'next', next));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
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

  /// Get all lists of the current user.
  ///
  /// Returns metadata describing the lists of the current user. Might be truncated and include a continuation token.  Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [String] next:
  ///   Continuation parameter from previous request
  ///
  /// * [String] sort:
  ///   Sort order - `name`: by name, ascending; - `updated`: by last modification date, descending.
  Future<DataListsGet200Response?> dataListsGet({
    String? next,
    String? sort,
  }) async {
    final response = await dataListsGetWithHttpInfo(
      next: next,
      sort: sort,
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
        'DataListsGet200Response',
      ) as DataListsGet200Response;
    }
    return null;
  }

  /// Delete a list.
  ///
  /// List must belong to current user and request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> dataListsIdDeleteWithHttpInfo(
    int id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/data/lists/{id}'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a list.
  ///
  /// List must belong to current user and request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Object?> dataListsIdDelete(
    int id,
  ) async {
    final response = await dataListsIdDeleteWithHttpInfo(
      id,
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

  /// Create multiple new list entries.
  ///
  /// See `POST /lists/{id}/entries/`.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [String] csrfToken (required):
  ///   The CRSF edit token provided by the MediaWiki API
  ///
  /// * [DataListsIdEntriesBatchPostRequest] dataListsIdEntriesBatchPostRequest (required):
  Future<Response> dataListsIdEntriesBatchPostWithHttpInfo(
    int id,
    String csrfToken,
    DataListsIdEntriesBatchPostRequest dataListsIdEntriesBatchPostRequest,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/data/lists/{id}/entries/batch'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = dataListsIdEntriesBatchPostRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'csrf_token', csrfToken));

    const contentTypes = <String>[];

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

  /// Create multiple new list entries.
  ///
  /// See `POST /lists/{id}/entries/`.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [String] csrfToken (required):
  ///   The CRSF edit token provided by the MediaWiki API
  ///
  /// * [DataListsIdEntriesBatchPostRequest] dataListsIdEntriesBatchPostRequest (required):
  Future<DataListsIdEntriesBatchPost200Response?> dataListsIdEntriesBatchPost(
    int id,
    String csrfToken,
    DataListsIdEntriesBatchPostRequest dataListsIdEntriesBatchPostRequest,
  ) async {
    final response = await dataListsIdEntriesBatchPostWithHttpInfo(
      id,
      csrfToken,
      dataListsIdEntriesBatchPostRequest,
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
        'DataListsIdEntriesBatchPost200Response',
      ) as DataListsIdEntriesBatchPost200Response;
    }
    return null;
  }

  /// Delete a list entry.
  ///
  /// Deletes a given list entry.  The list must belong to the current user and the request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [int] entryId (required):
  Future<Response> dataListsIdEntriesEntryIdDeleteWithHttpInfo(
    int id,
    int entryId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/data/lists/{id}/entries/{entry_id}'
        .replaceAll('{id}', id.toString())
        .replaceAll('{entry_id}', entryId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a list entry.
  ///
  /// Deletes a given list entry.  The list must belong to the current user and the request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [int] entryId (required):
  Future<Object?> dataListsIdEntriesEntryIdDelete(
    int id,
    int entryId,
  ) async {
    final response = await dataListsIdEntriesEntryIdDeleteWithHttpInfo(
      id,
      entryId,
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

  /// Create a new list entry.
  ///
  /// Creates a new list entry in the given list. On conflict, does nothing and returns the data of an existing list.  The list must belong to the current user and the request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)  This endpoint is deprecated and might be removed without warning. Use the batch version instead.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [String] csrfToken (required):
  ///   The CRSF edit token provided by the MediaWiki API
  ///
  /// * [ListEntryWrite] listEntryWrite (required):
  Future<Response> dataListsIdEntriesPostWithHttpInfo(
    int id,
    String csrfToken,
    ListEntryWrite listEntryWrite,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/data/lists/{id}/entries/'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = listEntryWrite;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'csrf_token', csrfToken));

    const contentTypes = <String>[];

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

  /// Create a new list entry.
  ///
  /// Creates a new list entry in the given list. On conflict, does nothing and returns the data of an existing list.  The list must belong to the current user and the request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)  This endpoint is deprecated and might be removed without warning. Use the batch version instead.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [String] csrfToken (required):
  ///   The CRSF edit token provided by the MediaWiki API
  ///
  /// * [ListEntryWrite] listEntryWrite (required):
  Future<DataListsIdEntriesPost200Response?> dataListsIdEntriesPost(
    int id,
    String csrfToken,
    ListEntryWrite listEntryWrite,
  ) async {
    final response = await dataListsIdEntriesPostWithHttpInfo(
      id,
      csrfToken,
      listEntryWrite,
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
        'DataListsIdEntriesPost200Response',
      ) as DataListsIdEntriesPost200Response;
    }
    return null;
  }

  /// Update a list.
  ///
  /// List must belong to current user and request must be authenticated with a MediaWiki session cookie. If the name is changed, the new name must not be in use.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [String] csrfToken (required):
  ///   The CRSF edit token provided by the MediaWiki API
  ///
  /// * [ListWrite] listWrite:
  Future<Response> dataListsIdPutWithHttpInfo(
    int id,
    String csrfToken, {
    ListWrite? listWrite,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/data/lists/{id}'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = listWrite;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'csrf_token', csrfToken));

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a list.
  ///
  /// List must belong to current user and request must be authenticated with a MediaWiki session cookie. If the name is changed, the new name must not be in use.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [String] csrfToken (required):
  ///   The CRSF edit token provided by the MediaWiki API
  ///
  /// * [ListWrite] listWrite:
  Future<DataListsPost200Response?> dataListsIdPut(
    int id,
    String csrfToken, {
    ListWrite? listWrite,
  }) async {
    final response = await dataListsIdPutWithHttpInfo(
      id,
      csrfToken,
      listWrite: listWrite,
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
        'DataListsPost200Response',
      ) as DataListsPost200Response;
    }
    return null;
  }

  /// Get lists of the current user which contain a given page.
  ///
  /// Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///
  /// * [String] title (required):
  ///
  /// * [String] next:
  ///   Continuation parameter from previous request
  Future<Response> dataListsPagesProjectTitleGetWithHttpInfo(
    String project,
    String title, {
    String? next,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/data/lists/pages/{project}/{title}'
        .replaceAll('{project}', project)
        .replaceAll('{title}', title);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (next != null) {
      queryParams.addAll(_queryParams('', 'next', next));
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

  /// Get lists of the current user which contain a given page.
  ///
  /// Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [String] project (required):
  ///
  /// * [String] title (required):
  ///
  /// * [String] next:
  ///   Continuation parameter from previous request
  Future<DataListsPagesProjectTitleGet200Response?>
      dataListsPagesProjectTitleGet(
    String project,
    String title, {
    String? next,
  }) async {
    final response = await dataListsPagesProjectTitleGetWithHttpInfo(
      project,
      title,
      next: next,
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
        'DataListsPagesProjectTitleGet200Response',
      ) as DataListsPagesProjectTitleGet200Response;
    }
    return null;
  }

  /// Create a new list for the current user.
  ///
  /// Creates a new empty list. On name conflict, does nothing and returns the data of an existing list.  Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)  This endpoint is deprecated and might be removed without warning. Use the batch version instead.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] csrfToken (required):
  ///   The CRSF edit token provided by the MediaWiki API
  ///
  /// * [ListWrite] listWrite (required):
  Future<Response> dataListsPostWithHttpInfo(
    String csrfToken,
    ListWrite listWrite,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/data/lists/';

    // ignore: prefer_final_locals
    Object? postBody = listWrite;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'csrf_token', csrfToken));

    const contentTypes = <String>[];

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

  /// Create a new list for the current user.
  ///
  /// Creates a new empty list. On name conflict, does nothing and returns the data of an existing list.  Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)  This endpoint is deprecated and might be removed without warning. Use the batch version instead.
  ///
  /// Parameters:
  ///
  /// * [String] csrfToken (required):
  ///   The CRSF edit token provided by the MediaWiki API
  ///
  /// * [ListWrite] listWrite (required):
  Future<DataListsPost200Response?> dataListsPost(
    String csrfToken,
    ListWrite listWrite,
  ) async {
    final response = await dataListsPostWithHttpInfo(
      csrfToken,
      listWrite,
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
        'DataListsPost200Response',
      ) as DataListsPost200Response;
    }
    return null;
  }

  /// Opt in to use reading lists.
  ///
  /// Must precede other list operations.  Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] csrfToken (required):
  ///   The CRSF edit token provided by the MediaWiki API
  Future<Response> dataListsSetupPostWithHttpInfo(
    String csrfToken,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/data/lists/setup';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'csrf_token', csrfToken));

    const contentTypes = <String>[];

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

  /// Opt in to use reading lists.
  ///
  /// Must precede other list operations.  Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [String] csrfToken (required):
  ///   The CRSF edit token provided by the MediaWiki API
  Future<Object?> dataListsSetupPost(
    String csrfToken,
  ) async {
    final response = await dataListsSetupPostWithHttpInfo(
      csrfToken,
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

  /// Opt out from using reading lists.
  ///
  /// Deletes all data. User needs to opt in again before being able to do anything.  Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] csrfToken (required):
  ///   The CRSF edit token provided by the MediaWiki API
  Future<Response> dataListsTeardownPostWithHttpInfo(
    String csrfToken,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/data/lists/teardown';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'csrf_token', csrfToken));

    const contentTypes = <String>[];

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

  /// Opt out from using reading lists.
  ///
  /// Deletes all data. User needs to opt in again before being able to do anything.  Request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [String] csrfToken (required):
  ///   The CRSF edit token provided by the MediaWiki API
  Future<Object?> dataListsTeardownPost(
    String csrfToken,
  ) async {
    final response = await dataListsTeardownPostWithHttpInfo(
      csrfToken,
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

  /// Get all entries of a given list.
  ///
  /// Returns pages contained by the given list. Might be truncated and include a continuation token.  List must belong to current user and request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [String] next:
  ///   Continuation parameter from previous request
  ///
  /// * [String] sort:
  ///   Sort order - `name`: by page title, ascending; - `updated`: by last modification date, descending.
  Future<Response> getListEntriesWithHttpInfo(
    int id, {
    String? next,
    String? sort,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/data/lists/{id}/entries/'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (next != null) {
      queryParams.addAll(_queryParams('', 'next', next));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
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

  /// Get all entries of a given list.
  ///
  /// Returns pages contained by the given list. Might be truncated and include a continuation token.  List must belong to current user and request must be authenticated with a MediaWiki session cookie.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [String] next:
  ///   Continuation parameter from previous request
  ///
  /// * [String] sort:
  ///   Sort order - `name`: by page title, ascending; - `updated`: by last modification date, descending.
  Future<GetListEntries200Response?> getListEntries(
    int id, {
    String? next,
    String? sort,
  }) async {
    final response = await getListEntriesWithHttpInfo(
      id,
      next: next,
      sort: sort,
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
        'GetListEntries200Response',
      ) as GetListEntries200Response;
    }
    return null;
  }
}
