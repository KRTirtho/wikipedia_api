// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class GetListEntries200Response {
  /// Returns a new [GetListEntries200Response] instance.
  GetListEntries200Response({
    this.entries = const [],
    this.next,
  });

  List<ListEntryRead> entries;

  /// Continuation token.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? next;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GetListEntries200Response &&
          _deepEquality.equals(other.entries, entries) &&
          other.next == next;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (entries.hashCode) + (next == null ? 0 : next!.hashCode);

  @override
  String toString() =>
      'GetListEntries200Response[entries=$entries, next=$next]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'entries'] = this.entries;
    if (this.next != null) {
      json[r'next'] = this.next;
    } else {
      json[r'next'] = null;
    }
    return json;
  }

  /// Returns a new [GetListEntries200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetListEntries200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GetListEntries200Response[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GetListEntries200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetListEntries200Response(
        entries: ListEntryRead.listFromJson(json[r'entries']),
        next: mapValueOfType<String>(json, r'next'),
      );
    }
    return null;
  }

  static List<GetListEntries200Response> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GetListEntries200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetListEntries200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetListEntries200Response> mapFromJson(dynamic json) {
    final map = <String, GetListEntries200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetListEntries200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetListEntries200Response-objects as value to a dart map
  static Map<String, List<GetListEntries200Response>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GetListEntries200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetListEntries200Response.listFromJson(
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
