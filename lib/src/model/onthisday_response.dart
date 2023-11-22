// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class OnthisdayResponse {
  /// Returns a new [OnthisdayResponse] instance.
  OnthisdayResponse({
    this.births = const [],
    this.deaths = const [],
    this.events = const [],
    this.holidays = const [],
    this.selected = const [],
  });

  List<OnthisdayInner> births;

  List<OnthisdayInner> deaths;

  List<OnthisdayInner> events;

  List<OnthisdayInner> holidays;

  List<OnthisdayInner> selected;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OnthisdayResponse &&
          _deepEquality.equals(other.births, births) &&
          _deepEquality.equals(other.deaths, deaths) &&
          _deepEquality.equals(other.events, events) &&
          _deepEquality.equals(other.holidays, holidays) &&
          _deepEquality.equals(other.selected, selected);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (births.hashCode) +
      (deaths.hashCode) +
      (events.hashCode) +
      (holidays.hashCode) +
      (selected.hashCode);

  @override
  String toString() =>
      'OnthisdayResponse[births=$births, deaths=$deaths, events=$events, holidays=$holidays, selected=$selected]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'births'] = this.births;
    json[r'deaths'] = this.deaths;
    json[r'events'] = this.events;
    json[r'holidays'] = this.holidays;
    json[r'selected'] = this.selected;
    return json;
  }

  /// Returns a new [OnthisdayResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OnthisdayResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OnthisdayResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OnthisdayResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OnthisdayResponse(
        births: OnthisdayInner.listFromJson(json[r'births']),
        deaths: OnthisdayInner.listFromJson(json[r'deaths']),
        events: OnthisdayInner.listFromJson(json[r'events']),
        holidays: OnthisdayInner.listFromJson(json[r'holidays']),
        selected: OnthisdayInner.listFromJson(json[r'selected']),
      );
    }
    return null;
  }

  static List<OnthisdayResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OnthisdayResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OnthisdayResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OnthisdayResponse> mapFromJson(dynamic json) {
    final map = <String, OnthisdayResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OnthisdayResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OnthisdayResponse-objects as value to a dart map
  static Map<String, List<OnthisdayResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OnthisdayResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OnthisdayResponse.listFromJson(
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
