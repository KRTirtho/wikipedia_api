// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class ListEntryWrite {
  /// Returns a new [ListEntryWrite] instance.
  ListEntryWrite({
    required this.project,
    required this.title,
  });

  /// Domain of the wiki containing the page.
  String project;

  /// Title of the page containing the page, in database format.
  String title;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListEntryWrite &&
          other.project == project &&
          other.title == title;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (project.hashCode) + (title.hashCode);

  @override
  String toString() => 'ListEntryWrite[project=$project, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'project'] = this.project;
    json[r'title'] = this.title;
    return json;
  }

  /// Returns a new [ListEntryWrite] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListEntryWrite? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ListEntryWrite[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ListEntryWrite[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListEntryWrite(
        project: mapValueOfType<String>(json, r'project')!,
        title: mapValueOfType<String>(json, r'title')!,
      );
    }
    return null;
  }

  static List<ListEntryWrite> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ListEntryWrite>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListEntryWrite.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListEntryWrite> mapFromJson(dynamic json) {
    final map = <String, ListEntryWrite>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListEntryWrite.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListEntryWrite-objects as value to a dart map
  static Map<String, List<ListEntryWrite>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ListEntryWrite>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListEntryWrite.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'project',
    'title',
  };
}
