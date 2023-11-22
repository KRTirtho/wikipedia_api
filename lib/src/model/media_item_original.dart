// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class MediaItemOriginal {
  /// Returns a new [MediaItemOriginal] instance.
  MediaItemOriginal({
    this.source_,
    this.mime,
  });

  /// Mathoid image render URL
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// the Mathoid image mime type
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MediaItemOriginal &&
          other.source_ == source_ &&
          other.mime == mime;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (source_ == null ? 0 : source_!.hashCode) +
      (mime == null ? 0 : mime!.hashCode);

  @override
  String toString() => 'MediaItemOriginal[source_=$source_, mime=$mime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.mime != null) {
      json[r'mime'] = this.mime;
    } else {
      json[r'mime'] = null;
    }
    return json;
  }

  /// Returns a new [MediaItemOriginal] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MediaItemOriginal? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MediaItemOriginal[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MediaItemOriginal[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MediaItemOriginal(
        source_: mapValueOfType<String>(json, r'source'),
        mime: mapValueOfType<String>(json, r'mime'),
      );
    }
    return null;
  }

  static List<MediaItemOriginal> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MediaItemOriginal>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MediaItemOriginal.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MediaItemOriginal> mapFromJson(dynamic json) {
    final map = <String, MediaItemOriginal>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MediaItemOriginal.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MediaItemOriginal-objects as value to a dart map
  static Map<String, List<MediaItemOriginal>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MediaItemOriginal>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MediaItemOriginal.listFromJson(
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
