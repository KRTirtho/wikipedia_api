// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class MorelikeResultInner {
  /// Returns a new [MorelikeResultInner] instance.
  MorelikeResultInner({
    this.wikidataId,
    this.score,
    this.sourceLanguage,
  });

  /// Wikidata ID for the item
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? wikidataId;

  /// Score of the recommendation. The higher the score, the more important the recommendation is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? score;

  /// Source of the recommendation -- which wiki is recommending the current article.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceLanguage;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MorelikeResultInner &&
          other.wikidataId == wikidataId &&
          other.score == score &&
          other.sourceLanguage == sourceLanguage;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (wikidataId == null ? 0 : wikidataId!.hashCode) +
      (score == null ? 0 : score!.hashCode) +
      (sourceLanguage == null ? 0 : sourceLanguage!.hashCode);

  @override
  String toString() =>
      'MorelikeResultInner[wikidataId=$wikidataId, score=$score, sourceLanguage=$sourceLanguage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.wikidataId != null) {
      json[r'wikidata_id'] = this.wikidataId;
    } else {
      json[r'wikidata_id'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.sourceLanguage != null) {
      json[r'source_language'] = this.sourceLanguage;
    } else {
      json[r'source_language'] = null;
    }
    return json;
  }

  /// Returns a new [MorelikeResultInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MorelikeResultInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MorelikeResultInner[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MorelikeResultInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MorelikeResultInner(
        wikidataId: mapValueOfType<String>(json, r'wikidata_id'),
        score: num.parse('${json[r'score']}'),
        sourceLanguage: mapValueOfType<String>(json, r'source_language'),
      );
    }
    return null;
  }

  static List<MorelikeResultInner> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MorelikeResultInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MorelikeResultInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MorelikeResultInner> mapFromJson(dynamic json) {
    final map = <String, MorelikeResultInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MorelikeResultInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MorelikeResultInner-objects as value to a dart map
  static Map<String, List<MorelikeResultInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MorelikeResultInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MorelikeResultInner.listFromJson(
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
