// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class ListEntryRead {
  /// Returns a new [ListEntryRead] instance.
  ListEntryRead({
    this.id,
    this.project,
    this.title,
    this.created,
    this.updated,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// Domain of the wiki containing the page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Title of the page containing the page, in database format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Creation date (in ISO 8601)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? created;

  /// Last modification date (in ISO 8601)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updated;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListEntryRead &&
          other.id == id &&
          other.project == project &&
          other.title == title &&
          other.created == created &&
          other.updated == updated;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (project == null ? 0 : project!.hashCode) +
      (title == null ? 0 : title!.hashCode) +
      (created == null ? 0 : created!.hashCode) +
      (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() =>
      'ListEntryRead[id=$id, project=$project, title=$title, created=$created, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created!.toUtc().toIso8601String();
    } else {
      json[r'created'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated!.toUtc().toIso8601String();
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [ListEntryRead] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListEntryRead? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ListEntryRead[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ListEntryRead[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListEntryRead(
        id: mapValueOfType<int>(json, r'id'),
        project: mapValueOfType<String>(json, r'project'),
        title: mapValueOfType<String>(json, r'title'),
        created: mapDateTime(json, r'created', r''),
        updated: mapDateTime(json, r'updated', r''),
      );
    }
    return null;
  }

  static List<ListEntryRead> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ListEntryRead>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListEntryRead.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListEntryRead> mapFromJson(dynamic json) {
    final map = <String, ListEntryRead>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListEntryRead.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListEntryRead-objects as value to a dart map
  static Map<String, List<ListEntryRead>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ListEntryRead>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListEntryRead.listFromJson(
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
