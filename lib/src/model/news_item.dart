// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class NewsItem {
  /// Returns a new [NewsItem] instance.
  NewsItem({
    required this.story,
    this.links = const [],
  });

  /// A cover story for the news item
  String story;

  /// A collection of articles related to the news item
  List<Summary> links;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsItem &&
          other.story == story &&
          _deepEquality.equals(other.links, links);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (story.hashCode) + (links.hashCode);

  @override
  String toString() => 'NewsItem[story=$story, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'story'] = this.story;
    json[r'links'] = this.links;
    return json;
  }

  /// Returns a new [NewsItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewsItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NewsItem[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NewsItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewsItem(
        story: mapValueOfType<String>(json, r'story')!,
        links: Summary.listFromJson(json[r'links']),
      );
    }
    return null;
  }

  static List<NewsItem> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NewsItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewsItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewsItem> mapFromJson(dynamic json) {
    final map = <String, NewsItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewsItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewsItem-objects as value to a dart map
  static Map<String, List<NewsItem>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NewsItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewsItem.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'story',
    'links',
  };
}
