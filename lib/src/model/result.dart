// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class Result {
  /// Returns a new [Result] instance.
  Result({
    required this.itemType,
    required this.title,
    required this.url,
  });

  String itemType;

  String title;

  String url;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Result &&
          other.itemType == itemType &&
          other.title == title &&
          other.url == url;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (itemType.hashCode) + (title.hashCode) + (url.hashCode);

  @override
  String toString() => 'Result[itemType=$itemType, title=$title, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'itemType'] = this.itemType;
    json[r'title'] = this.title;
    json[r'url'] = this.url;
    return json;
  }

  /// Returns a new [Result] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Result? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Result[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Result[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Result(
        itemType: mapValueOfType<String>(json, r'itemType')!,
        title: mapValueOfType<String>(json, r'title')!,
        url: mapValueOfType<String>(json, r'url')!,
      );
    }
    return null;
  }

  static List<Result> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Result>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Result.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Result> mapFromJson(dynamic json) {
    final map = <String, Result>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Result.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Result-objects as value to a dart map
  static Map<String, List<Result>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Result>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Result.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'itemType',
    'title',
    'url',
  };
}
