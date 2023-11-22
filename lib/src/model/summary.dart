// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class Summary {
  /// Returns a new [Summary] instance.
  Summary({
    this.type,
    required this.titles,
    this.title,
    this.displaytitle,
    this.pageid,
    required this.extract,
    this.extractHtml,
    this.thumbnail,
    this.originalimage,
    required this.lang,
    required this.dir,
    this.timestamp,
    this.description,
    this.coordinates,
  });

  String? type;
  TitlesSet titles;

  /// The page title. Deprecated: Use `titles.normalized` instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// The page title how it should be shown to the user. Deprecated: Use `titles.display` instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displaytitle;

  /// The page ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageid;

  /// First several sentences of an article in plain text
  String extract;

  /// First several sentences of an article in simple HTML format
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? extractHtml;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Thumbnail? thumbnail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Originalimage? originalimage;

  /// The page language code
  String lang;

  /// The page language direction code
  String dir;

  /// The time when the page was last edited in the [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timestamp;

  /// Wikidata description for the page
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SummaryCoordinates? coordinates;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Summary &&
          other.type == type &&
          other.titles == titles &&
          other.title == title &&
          other.displaytitle == displaytitle &&
          other.pageid == pageid &&
          other.extract == extract &&
          other.extractHtml == extractHtml &&
          other.thumbnail == thumbnail &&
          other.originalimage == originalimage &&
          other.lang == lang &&
          other.dir == dir &&
          other.timestamp == timestamp &&
          other.description == description &&
          other.coordinates == coordinates;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (titles.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (title == null ? 0 : title!.hashCode) +
      (displaytitle == null ? 0 : displaytitle!.hashCode) +
      (pageid == null ? 0 : pageid!.hashCode) +
      (extract.hashCode) +
      (extractHtml == null ? 0 : extractHtml!.hashCode) +
      (thumbnail == null ? 0 : thumbnail!.hashCode) +
      (originalimage == null ? 0 : originalimage!.hashCode) +
      (lang.hashCode) +
      (dir.hashCode) +
      (timestamp == null ? 0 : timestamp!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (coordinates == null ? 0 : coordinates!.hashCode);

  @override
  String toString() =>
      'Summary[type=$type, titles=$titles, title=$title, displaytitle=$displaytitle, pageid=$pageid, extract=$extract, extractHtml=$extractHtml, thumbnail=$thumbnail, originalimage=$originalimage, lang=$lang, dir=$dir, timestamp=$timestamp, description=$description, coordinates=$coordinates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'titles'] = this.titles;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.displaytitle != null) {
      json[r'displaytitle'] = this.displaytitle;
    } else {
      json[r'displaytitle'] = null;
    }
    if (this.pageid != null) {
      json[r'pageid'] = this.pageid;
    } else {
      json[r'pageid'] = null;
    }
    json[r'extract'] = this.extract;
    if (this.extractHtml != null) {
      json[r'extract_html'] = this.extractHtml;
    } else {
      json[r'extract_html'] = null;
    }
    if (this.thumbnail != null) {
      json[r'thumbnail'] = this.thumbnail;
    } else {
      json[r'thumbnail'] = null;
    }
    if (this.originalimage != null) {
      json[r'originalimage'] = this.originalimage;
    } else {
      json[r'originalimage'] = null;
    }
    json[r'lang'] = this.lang;
    json[r'dir'] = this.dir;
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.coordinates != null) {
      json[r'coordinates'] = this.coordinates;
    } else {
      json[r'coordinates'] = null;
    }
    return json;
  }

  /// Returns a new [Summary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Summary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Summary[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Summary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Summary(
        type: mapValueOfType<String>(json, r'type'),
        titles: TitlesSet.fromJson(json[r'titles'])!,
        title: mapValueOfType<String>(json, r'title'),
        displaytitle: mapValueOfType<String>(json, r'displaytitle'),
        pageid: mapValueOfType<int>(json, r'pageid'),
        extract: mapValueOfType<String>(json, r'extract')!,
        extractHtml: mapValueOfType<String>(json, r'extract_html'),
        thumbnail: Thumbnail.fromJson(json[r'thumbnail']),
        originalimage: Originalimage.fromJson(json[r'originalimage']),
        lang: mapValueOfType<String>(json, r'lang')!,
        dir: mapValueOfType<String>(json, r'dir')!,
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        description: mapValueOfType<String>(json, r'description'),
        coordinates: SummaryCoordinates.fromJson(json[r'coordinates']),
      );
    }
    return null;
  }

  static List<Summary> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Summary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Summary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Summary> mapFromJson(dynamic json) {
    final map = <String, Summary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Summary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Summary-objects as value to a dart map
  static Map<String, List<Summary>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Summary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Summary.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'titles',
    'extract',
    'lang',
    'dir',
  };
}
