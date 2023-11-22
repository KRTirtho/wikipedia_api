// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class PageSegmentsTitleGet200Response {
  /// Returns a new [PageSegmentsTitleGet200Response] instance.
  PageSegmentsTitleGet200Response({
    this.sourceLanguage,
    this.title,
    this.revision,
    this.segmentedContent,
  });

  /// The source language of the page
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceLanguage;

  /// The title of the segmented page returned
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// The revision ID of the segmented page
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? revision;

  /// The segmented HTML body of the contents of the page
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? segmentedContent;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PageSegmentsTitleGet200Response &&
          other.sourceLanguage == sourceLanguage &&
          other.title == title &&
          other.revision == revision &&
          other.segmentedContent == segmentedContent;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (sourceLanguage == null ? 0 : sourceLanguage!.hashCode) +
      (title == null ? 0 : title!.hashCode) +
      (revision == null ? 0 : revision!.hashCode) +
      (segmentedContent == null ? 0 : segmentedContent!.hashCode);

  @override
  String toString() =>
      'PageSegmentsTitleGet200Response[sourceLanguage=$sourceLanguage, title=$title, revision=$revision, segmentedContent=$segmentedContent]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sourceLanguage != null) {
      json[r'sourceLanguage'] = this.sourceLanguage;
    } else {
      json[r'sourceLanguage'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.revision != null) {
      json[r'revision'] = this.revision;
    } else {
      json[r'revision'] = null;
    }
    if (this.segmentedContent != null) {
      json[r'segmentedContent'] = this.segmentedContent;
    } else {
      json[r'segmentedContent'] = null;
    }
    return json;
  }

  /// Returns a new [PageSegmentsTitleGet200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PageSegmentsTitleGet200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PageSegmentsTitleGet200Response[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PageSegmentsTitleGet200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PageSegmentsTitleGet200Response(
        sourceLanguage: mapValueOfType<String>(json, r'sourceLanguage'),
        title: mapValueOfType<String>(json, r'title'),
        revision: mapValueOfType<int>(json, r'revision'),
        segmentedContent: mapValueOfType<String>(json, r'segmentedContent'),
      );
    }
    return null;
  }

  static List<PageSegmentsTitleGet200Response> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PageSegmentsTitleGet200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PageSegmentsTitleGet200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PageSegmentsTitleGet200Response> mapFromJson(
      dynamic json) {
    final map = <String, PageSegmentsTitleGet200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PageSegmentsTitleGet200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PageSegmentsTitleGet200Response-objects as value to a dart map
  static Map<String, List<PageSegmentsTitleGet200Response>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PageSegmentsTitleGet200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PageSegmentsTitleGet200Response.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
