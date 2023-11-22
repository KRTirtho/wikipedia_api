// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class TitlesSet {
  /// Returns a new [TitlesSet] instance.
  TitlesSet({
    required this.canonical,
    required this.normalized,
    required this.display,
  });

  /// the DB key (non-prefixed), e.g. may have _ instead of spaces, best for making request URIs, still requires Percent-encoding
  String canonical;

  /// the normalized title (https://www.mediawiki.org/wiki/API:Query#Example_2:_Title_normalization), e.g. may have spaces instead of _
  String normalized;

  /// the title as it should be displayed to the user
  String display;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TitlesSet &&
          other.canonical == canonical &&
          other.normalized == normalized &&
          other.display == display;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (canonical.hashCode) + (normalized.hashCode) + (display.hashCode);

  @override
  String toString() =>
      'TitlesSet[canonical=$canonical, normalized=$normalized, display=$display]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'canonical'] = this.canonical;
    json[r'normalized'] = this.normalized;
    json[r'display'] = this.display;
    return json;
  }

  /// Returns a new [TitlesSet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TitlesSet? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TitlesSet[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TitlesSet[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TitlesSet(
        canonical: mapValueOfType<String>(json, r'canonical')!,
        normalized: mapValueOfType<String>(json, r'normalized')!,
        display: mapValueOfType<String>(json, r'display')!,
      );
    }
    return null;
  }

  static List<TitlesSet> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TitlesSet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TitlesSet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TitlesSet> mapFromJson(dynamic json) {
    final map = <String, TitlesSet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TitlesSet.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TitlesSet-objects as value to a dart map
  static Map<String, List<TitlesSet>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TitlesSet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TitlesSet.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'canonical',
    'normalized',
    'display',
  };
}
