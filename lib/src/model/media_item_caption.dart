// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class MediaItemCaption {
  /// Returns a new [MediaItemCaption] instance.
  MediaItemCaption({
    this.html,
    this.text,
  });

  /// on-wiki caption for the media item, including all HTML markup
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? html;

  /// plain text of the on-wiki caption for the media item
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MediaItemCaption && other.html == html && other.text == text;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (html == null ? 0 : html!.hashCode) + (text == null ? 0 : text!.hashCode);

  @override
  String toString() => 'MediaItemCaption[html=$html, text=$text]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.html != null) {
      json[r'html'] = this.html;
    } else {
      json[r'html'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    return json;
  }

  /// Returns a new [MediaItemCaption] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MediaItemCaption? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MediaItemCaption[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MediaItemCaption[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MediaItemCaption(
        html: mapValueOfType<String>(json, r'html'),
        text: mapValueOfType<String>(json, r'text'),
      );
    }
    return null;
  }

  static List<MediaItemCaption> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MediaItemCaption>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MediaItemCaption.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MediaItemCaption> mapFromJson(dynamic json) {
    final map = <String, MediaItemCaption>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MediaItemCaption.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MediaItemCaption-objects as value to a dart map
  static Map<String, List<MediaItemCaption>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MediaItemCaption>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MediaItemCaption.listFromJson(
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
