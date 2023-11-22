// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class Mostread {
  /// Returns a new [Mostread] instance.
  Mostread({
    required this.date,
    this.articles = const [],
  });

  /// The date which the data correspond to
  String date;

  /// Array of most popular articles
  List<MostreadArticle> articles;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mostread &&
          other.date == date &&
          _deepEquality.equals(other.articles, articles);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (date.hashCode) + (articles.hashCode);

  @override
  String toString() => 'Mostread[date=$date, articles=$articles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'date'] = this.date;
    json[r'articles'] = this.articles;
    return json;
  }

  /// Returns a new [Mostread] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Mostread? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Mostread[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Mostread[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Mostread(
        date: mapValueOfType<String>(json, r'date')!,
        articles: MostreadArticle.listFromJson(json[r'articles']),
      );
    }
    return null;
  }

  static List<Mostread> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Mostread>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Mostread.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Mostread> mapFromJson(dynamic json) {
    final map = <String, Mostread>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Mostread.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Mostread-objects as value to a dart map
  static Map<String, List<Mostread>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Mostread>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Mostread.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'date',
    'articles',
  };
}
