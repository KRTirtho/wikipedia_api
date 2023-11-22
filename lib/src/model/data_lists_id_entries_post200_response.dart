// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class DataListsIdEntriesPost200Response {
  /// Returns a new [DataListsIdEntriesPost200Response] instance.
  DataListsIdEntriesPost200Response({
    required this.id,
    required this.entry,
  });

  /// List entry ID  Deprecated, will be removed. Use the full entry object instead.
  int id;

  ListEntryRead entry;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataListsIdEntriesPost200Response &&
          other.id == id &&
          other.entry == entry;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) + (entry.hashCode);

  @override
  String toString() =>
      'DataListsIdEntriesPost200Response[id=$id, entry=$entry]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'entry'] = this.entry;
    return json;
  }

  /// Returns a new [DataListsIdEntriesPost200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataListsIdEntriesPost200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DataListsIdEntriesPost200Response[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DataListsIdEntriesPost200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataListsIdEntriesPost200Response(
        id: mapValueOfType<int>(json, r'id')!,
        entry: ListEntryRead.fromJson(json[r'entry'])!,
      );
    }
    return null;
  }

  static List<DataListsIdEntriesPost200Response> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DataListsIdEntriesPost200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataListsIdEntriesPost200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataListsIdEntriesPost200Response> mapFromJson(
      dynamic json) {
    final map = <String, DataListsIdEntriesPost200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataListsIdEntriesPost200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataListsIdEntriesPost200Response-objects as value to a dart map
  static Map<String, List<DataListsIdEntriesPost200Response>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DataListsIdEntriesPost200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DataListsIdEntriesPost200Response.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'entry',
  };
}
