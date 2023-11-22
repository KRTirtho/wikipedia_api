// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class RecommendationResult {
  /// Returns a new [RecommendationResult] instance.
  RecommendationResult({
    this.count,
    this.items = const [],
  });

  /// the number of recommendations returned
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  /// the list of articles recommended for translation
  List<RecommendationResultItemsInner> items;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecommendationResult &&
          other.count == count &&
          _deepEquality.equals(other.items, items);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (count == null ? 0 : count!.hashCode) + (items.hashCode);

  @override
  String toString() => 'RecommendationResult[count=$count, items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    json[r'items'] = this.items;
    return json;
  }

  /// Returns a new [RecommendationResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RecommendationResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RecommendationResult[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RecommendationResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RecommendationResult(
        count: mapValueOfType<int>(json, r'count'),
        items: RecommendationResultItemsInner.listFromJson(json[r'items']),
      );
    }
    return null;
  }

  static List<RecommendationResult> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RecommendationResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecommendationResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RecommendationResult> mapFromJson(dynamic json) {
    final map = <String, RecommendationResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecommendationResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RecommendationResult-objects as value to a dart map
  static Map<String, List<RecommendationResult>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RecommendationResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RecommendationResult.listFromJson(
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
