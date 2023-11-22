// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class DataListsPost200Response {
  /// Returns a new [DataListsPost200Response] instance.
  DataListsPost200Response({
    required this.id,
    required this.list,
  });

  /// List ID.  Deprecated, will be removed. Use the full list object.
  int id;

  ListRead list;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataListsPost200Response && other.id == id && other.list == list;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) + (list.hashCode);

  @override
  String toString() => 'DataListsPost200Response[id=$id, list=$list]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'list'] = this.list;
    return json;
  }

  /// Returns a new [DataListsPost200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataListsPost200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DataListsPost200Response[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DataListsPost200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataListsPost200Response(
        id: mapValueOfType<int>(json, r'id')!,
        list: ListRead.fromJson(json[r'list'])!,
      );
    }
    return null;
  }

  static List<DataListsPost200Response> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DataListsPost200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataListsPost200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataListsPost200Response> mapFromJson(dynamic json) {
    final map = <String, DataListsPost200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataListsPost200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataListsPost200Response-objects as value to a dart map
  static Map<String, List<DataListsPost200Response>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DataListsPost200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DataListsPost200Response.listFromJson(
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
    'list',
  };
}
