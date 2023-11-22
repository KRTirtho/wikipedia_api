// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class CxDictTranslationsInner {
  /// Returns a new [CxDictTranslationsInner] instance.
  CxDictTranslationsInner({
    this.phrase,
    this.info,
    this.sources,
  });

  /// the translated phrase
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phrase;

  /// extra information about the phrase
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? info;

  /// the source dictionary used for the translation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sources;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CxDictTranslationsInner &&
          other.phrase == phrase &&
          other.info == info &&
          other.sources == sources;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (phrase == null ? 0 : phrase!.hashCode) +
      (info == null ? 0 : info!.hashCode) +
      (sources == null ? 0 : sources!.hashCode);

  @override
  String toString() =>
      'CxDictTranslationsInner[phrase=$phrase, info=$info, sources=$sources]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.phrase != null) {
      json[r'phrase'] = this.phrase;
    } else {
      json[r'phrase'] = null;
    }
    if (this.info != null) {
      json[r'info'] = this.info;
    } else {
      json[r'info'] = null;
    }
    if (this.sources != null) {
      json[r'sources'] = this.sources;
    } else {
      json[r'sources'] = null;
    }
    return json;
  }

  /// Returns a new [CxDictTranslationsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CxDictTranslationsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "CxDictTranslationsInner[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "CxDictTranslationsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CxDictTranslationsInner(
        phrase: mapValueOfType<String>(json, r'phrase'),
        info: mapValueOfType<String>(json, r'info'),
        sources: mapValueOfType<String>(json, r'sources'),
      );
    }
    return null;
  }

  static List<CxDictTranslationsInner> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CxDictTranslationsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CxDictTranslationsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CxDictTranslationsInner> mapFromJson(dynamic json) {
    final map = <String, CxDictTranslationsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CxDictTranslationsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CxDictTranslationsInner-objects as value to a dart map
  static Map<String, List<CxDictTranslationsInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<CxDictTranslationsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CxDictTranslationsInner.listFromJson(
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
