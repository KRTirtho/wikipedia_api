// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class MostreadArticle {
  /// Returns a new [MostreadArticle] instance.
  MostreadArticle({
    required this.title,
    required this.normalizedtitle,
    required this.views,
    required this.rank,
    this.thumbnail,
    this.description,
    this.extract,
  });

  /// Article title in a form of DB key
  String title;

  /// Article title as it should be presented to the user
  String normalizedtitle;

  /// Number of views on the requested day
  int views;

  /// Position in the list of most viewed articles
  int rank;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Thumbnail? thumbnail;

  /// Wikidata description of the article
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// First several sentences of an article in plain text
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? extract;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MostreadArticle &&
          other.title == title &&
          other.normalizedtitle == normalizedtitle &&
          other.views == views &&
          other.rank == rank &&
          other.thumbnail == thumbnail &&
          other.description == description &&
          other.extract == extract;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (title.hashCode) +
      (normalizedtitle.hashCode) +
      (views.hashCode) +
      (rank.hashCode) +
      (thumbnail == null ? 0 : thumbnail!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (extract == null ? 0 : extract!.hashCode);

  @override
  String toString() =>
      'MostreadArticle[title=$title, normalizedtitle=$normalizedtitle, views=$views, rank=$rank, thumbnail=$thumbnail, description=$description, extract=$extract]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'title'] = this.title;
    json[r'normalizedtitle'] = this.normalizedtitle;
    json[r'views'] = this.views;
    json[r'rank'] = this.rank;
    if (this.thumbnail != null) {
      json[r'thumbnail'] = this.thumbnail;
    } else {
      json[r'thumbnail'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.extract != null) {
      json[r'extract'] = this.extract;
    } else {
      json[r'extract'] = null;
    }
    return json;
  }

  /// Returns a new [MostreadArticle] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MostreadArticle? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MostreadArticle[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MostreadArticle[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MostreadArticle(
        title: mapValueOfType<String>(json, r'title')!,
        normalizedtitle: mapValueOfType<String>(json, r'normalizedtitle')!,
        views: mapValueOfType<int>(json, r'views')!,
        rank: mapValueOfType<int>(json, r'rank')!,
        thumbnail: Thumbnail.fromJson(json[r'thumbnail']),
        description: mapValueOfType<String>(json, r'description'),
        extract: mapValueOfType<String>(json, r'extract'),
      );
    }
    return null;
  }

  static List<MostreadArticle> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MostreadArticle>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MostreadArticle.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MostreadArticle> mapFromJson(dynamic json) {
    final map = <String, MostreadArticle>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MostreadArticle.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MostreadArticle-objects as value to a dart map
  static Map<String, List<MostreadArticle>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MostreadArticle>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MostreadArticle.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'title',
    'normalizedtitle',
    'views',
    'rank',
  };
}
