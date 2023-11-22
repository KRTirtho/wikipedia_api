// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class DataListsPagesProjectTitleGet200Response {
  /// Returns a new [DataListsPagesProjectTitleGet200Response] instance.
  DataListsPagesProjectTitleGet200Response({
    this.lists = const [],
    this.next,
  });

  List<ListRead> lists;

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
      other is DataListsPagesProjectTitleGet200Response &&
          _deepEquality.equals(other.lists, lists) &&
          other.next == next;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (lists.hashCode) + (next == null ? 0 : next!.hashCode);

  @override
  String toString() =>
      'DataListsPagesProjectTitleGet200Response[lists=$lists, next=$next]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'lists'] = this.lists;
    if (this.next != null) {
      json[r'next'] = this.next;
    } else {
      json[r'next'] = null;
    }
    return json;
  }

  /// Returns a new [DataListsPagesProjectTitleGet200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataListsPagesProjectTitleGet200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DataListsPagesProjectTitleGet200Response[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DataListsPagesProjectTitleGet200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataListsPagesProjectTitleGet200Response(
        lists: ListRead.listFromJson(json[r'lists']),
        next: mapValueOfType<String>(json, r'next'),
      );
    }
    return null;
  }

  static List<DataListsPagesProjectTitleGet200Response> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DataListsPagesProjectTitleGet200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataListsPagesProjectTitleGet200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataListsPagesProjectTitleGet200Response> mapFromJson(
      dynamic json) {
    final map = <String, DataListsPagesProjectTitleGet200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            DataListsPagesProjectTitleGet200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataListsPagesProjectTitleGet200Response-objects as value to a dart map
  static Map<String, List<DataListsPagesProjectTitleGet200Response>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DataListsPagesProjectTitleGet200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DataListsPagesProjectTitleGet200Response.listFromJson(
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
