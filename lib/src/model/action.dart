// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class Action {
  /// Returns a new [Action] instance.
  Action({
    required this.title,
    required this.url,
  });

  /// The title to display on the button that performs the action
  String title;

  /// The URL to navigate to when the button is pressed
  String url;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Action && other.title == title && other.url == url;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (title.hashCode) + (url.hashCode);

  @override
  String toString() => 'Action[title=$title, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'title'] = this.title;
    json[r'url'] = this.url;
    return json;
  }

  /// Returns a new [Action] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Action? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Action[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Action[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Action(
        title: mapValueOfType<String>(json, r'title')!,
        url: mapValueOfType<String>(json, r'url')!,
      );
    }
    return null;
  }

  static List<Action> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Action>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Action.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Action> mapFromJson(dynamic json) {
    final map = <String, Action>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Action.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Action-objects as value to a dart map
  static Map<String, List<Action>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Action>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Action.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'title',
    'url',
  };
}
