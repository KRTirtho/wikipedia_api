// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class AnnouncementsResponse {
  /// Returns a new [AnnouncementsResponse] instance.
  AnnouncementsResponse({
    this.announce = const [],
  });

  List<Announcement> announce;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnnouncementsResponse &&
          _deepEquality.equals(other.announce, announce);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (announce.hashCode);

  @override
  String toString() => 'AnnouncementsResponse[announce=$announce]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'announce'] = this.announce;
    return json;
  }

  /// Returns a new [AnnouncementsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnnouncementsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "AnnouncementsResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "AnnouncementsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnnouncementsResponse(
        announce: Announcement.listFromJson(json[r'announce']),
      );
    }
    return null;
  }

  static List<AnnouncementsResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AnnouncementsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnnouncementsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnnouncementsResponse> mapFromJson(dynamic json) {
    final map = <String, AnnouncementsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnnouncementsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnnouncementsResponse-objects as value to a dart map
  static Map<String, List<AnnouncementsResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AnnouncementsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnnouncementsResponse.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'announce',
  };
}
