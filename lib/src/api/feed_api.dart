// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class FeedApi {
  FeedApi([ApiClient? apiClient]) : apiClient = apiClient ?? _defaultApiClient;

  final ApiClient apiClient;

  /// Aggregated featured content
  ///
  /// Provides the aggregated feed content for the given date. The endpoint returns the featured article of the day, most read articles for the previous day, news content and the featured image and video of the day.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] yyyy (required):
  ///   Year the aggregated content is requested for
  ///
  /// * [String] mm (required):
  ///   Month the aggregated content is requested for, 0-padded
  ///
  /// * [String] dd (required):
  ///   Day of the month the aggregated content is requested for, 0-padded
  Future<Response> aggregatedFeedWithHttpInfo(
    String yyyy,
    String mm,
    String dd,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/feed/featured/{yyyy}/{mm}/{dd}'
        .replaceAll('{yyyy}', yyyy)
        .replaceAll('{mm}', mm)
        .replaceAll('{dd}', dd);

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

  /// Aggregated featured content
  ///
  /// Provides the aggregated feed content for the given date. The endpoint returns the featured article of the day, most read articles for the previous day, news content and the featured image and video of the day.  Stability: [unstable](https://www.mediawiki.org/wiki/API_versioning#Unstable)
  ///
  /// Parameters:
  ///
  /// * [String] yyyy (required):
  ///   Year the aggregated content is requested for
  ///
  /// * [String] mm (required):
  ///   Month the aggregated content is requested for, 0-padded
  ///
  /// * [String] dd (required):
  ///   Day of the month the aggregated content is requested for, 0-padded
  Future<Feed?> aggregatedFeed(
    String yyyy,
    String mm,
    String dd,
  ) async {
    final response = await aggregatedFeedWithHttpInfo(
      yyyy,
      mm,
      dd,
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
        'Feed',
      ) as Feed;
    }
    return null;
  }

  /// Current announcements to display
  ///
  /// Gets announcements for display in the official Wikipedia iOS and Android apps.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> feedAnnouncementsGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/feed/announcements';

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

  /// Current announcements to display
  ///
  /// Gets announcements for display in the official Wikipedia iOS and Android apps.  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  Future<AnnouncementsResponse?> feedAnnouncementsGet() async {
    final response = await feedAnnouncementsGetWithHttpInfo();
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
        'AnnouncementsResponse',
      ) as AnnouncementsResponse;
    }
    return null;
  }

  /// Events on this day
  ///
  /// Provides events that historically happened on the provided day and month. Supported types of events are:  - All: all of the following  - Selected: a list of a few selected anniversaries which occur on the provided day and month; often the entries are curated for the current year  - Births: a list of birthdays which happened on the provided day and month  - Deaths: a list of deaths which happened on the provided day and month  - Holidays: a list of fixed holidays celebrated on the provided day and month  - Events: a list of significant events which happened on the provided day and month and which are not covered by the other types yet  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   Type of events
  ///
  /// * [String] mm (required):
  ///   Month events are requested for, 0-padded
  ///
  /// * [String] dd (required):
  ///   Day of the month events are requested for, 0-padded
  Future<Response> onThisDayWithHttpInfo(
    String type,
    String mm,
    String dd,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/feed/onthisday/{type}/{mm}/{dd}'
        .replaceAll('{type}', type)
        .replaceAll('{mm}', mm)
        .replaceAll('{dd}', dd);

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

  /// Events on this day
  ///
  /// Provides events that historically happened on the provided day and month. Supported types of events are:  - All: all of the following  - Selected: a list of a few selected anniversaries which occur on the provided day and month; often the entries are curated for the current year  - Births: a list of birthdays which happened on the provided day and month  - Deaths: a list of deaths which happened on the provided day and month  - Holidays: a list of fixed holidays celebrated on the provided day and month  - Events: a list of significant events which happened on the provided day and month and which are not covered by the other types yet  Stability: [experimental](https://www.mediawiki.org/wiki/API_versioning#Experimental)
  ///
  /// Parameters:
  ///
  /// * [String] type (required):
  ///   Type of events
  ///
  /// * [String] mm (required):
  ///   Month events are requested for, 0-padded
  ///
  /// * [String] dd (required):
  ///   Day of the month events are requested for, 0-padded
  Future<OnthisdayResponse?> onThisDay(
    String type,
    String mm,
    String dd,
  ) async {
    final response = await onThisDayWithHttpInfo(
      type,
      mm,
      dd,
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
        'OnthisdayResponse',
      ) as OnthisdayResponse;
    }
    return null;
  }
}
