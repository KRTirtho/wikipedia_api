// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class Announcement {
  /// Returns a new [Announcement] instance.
  Announcement({
    required this.id,
    required this.type,
    required this.startTime,
    required this.endTime,
    this.platforms = const [],
    required this.text,
    this.image,
    this.action,
    this.captionHTML,
    this.countries = const [],
  });

  /// Unique ID of the announcement
  String id;

  /// The type of announcement. Possible values are \"survey\" or \"fundraising\"
  String type;

  /// The date to begin showing the announcement
  String startTime;

  /// The date to stop showing the announcement
  String endTime;

  /// An array of platforms to display the announcement. Possible values are \"iOSApp\" or \"AndroidApp\"
  List<String> platforms;

  /// The text of the announcement
  String text;

  /// The URL of the image for the announcement
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Action? action;

  /// HTML to display below the announcement. Usually a privacy statment and link to a policy
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? captionHTML;

  /// An array of country codes in which to display the announcement. Clients should derive the country from 'GeoIP' portion of the Set-Cookie header
  List<String> countries;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Announcement &&
          other.id == id &&
          other.type == type &&
          other.startTime == startTime &&
          other.endTime == endTime &&
          _deepEquality.equals(other.platforms, platforms) &&
          other.text == text &&
          other.image == image &&
          other.action == action &&
          other.captionHTML == captionHTML &&
          _deepEquality.equals(other.countries, countries);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (type.hashCode) +
      (startTime.hashCode) +
      (endTime.hashCode) +
      (platforms.hashCode) +
      (text.hashCode) +
      (image == null ? 0 : image!.hashCode) +
      (action == null ? 0 : action!.hashCode) +
      (captionHTML == null ? 0 : captionHTML!.hashCode) +
      (countries.hashCode);

  @override
  String toString() =>
      'Announcement[id=$id, type=$type, startTime=$startTime, endTime=$endTime, platforms=$platforms, text=$text, image=$image, action=$action, captionHTML=$captionHTML, countries=$countries]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'type'] = this.type;
    json[r'start_time'] = this.startTime;
    json[r'end_time'] = this.endTime;
    json[r'platforms'] = this.platforms;
    json[r'text'] = this.text;
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.captionHTML != null) {
      json[r'caption_HTML'] = this.captionHTML;
    } else {
      json[r'caption_HTML'] = null;
    }
    json[r'countries'] = this.countries;
    return json;
  }

  /// Returns a new [Announcement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Announcement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Announcement[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Announcement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Announcement(
        id: mapValueOfType<String>(json, r'id')!,
        type: mapValueOfType<String>(json, r'type')!,
        startTime: mapValueOfType<String>(json, r'start_time')!,
        endTime: mapValueOfType<String>(json, r'end_time')!,
        platforms: json[r'platforms'] is Iterable
            ? (json[r'platforms'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        text: mapValueOfType<String>(json, r'text')!,
        image: mapValueOfType<String>(json, r'image'),
        action: Action.fromJson(json[r'action']),
        captionHTML: mapValueOfType<String>(json, r'caption_HTML'),
        countries: json[r'countries'] is Iterable
            ? (json[r'countries'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<Announcement> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Announcement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Announcement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Announcement> mapFromJson(dynamic json) {
    final map = <String, Announcement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Announcement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Announcement-objects as value to a dart map
  static Map<String, List<Announcement>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Announcement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Announcement.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'start_time',
    'end_time',
    'platforms',
    'text',
    'countries',
  };
}
