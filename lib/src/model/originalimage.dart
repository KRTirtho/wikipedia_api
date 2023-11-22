// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class Originalimage {
  /// Returns a new [Originalimage] instance.
  Originalimage({
    required this.source_,
    required this.width,
    required this.height,
  });

  /// Original image URI
  String source_;

  /// Original image width
  int width;

  /// Original image height
  int height;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Originalimage &&
          other.source_ == source_ &&
          other.width == width &&
          other.height == height;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (source_.hashCode) + (width.hashCode) + (height.hashCode);

  @override
  String toString() =>
      'Originalimage[source_=$source_, width=$width, height=$height]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'source'] = this.source_;
    json[r'width'] = this.width;
    json[r'height'] = this.height;
    return json;
  }

  /// Returns a new [Originalimage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Originalimage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Originalimage[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Originalimage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Originalimage(
        source_: mapValueOfType<String>(json, r'source')!,
        width: mapValueOfType<int>(json, r'width')!,
        height: mapValueOfType<int>(json, r'height')!,
      );
    }
    return null;
  }

  static List<Originalimage> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Originalimage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Originalimage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Originalimage> mapFromJson(dynamic json) {
    final map = <String, Originalimage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Originalimage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Originalimage-objects as value to a dart map
  static Map<String, List<Originalimage>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Originalimage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Originalimage.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'source',
    'width',
    'height',
  };
}
