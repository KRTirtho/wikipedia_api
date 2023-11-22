// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class Listing {
  /// Returns a new [Listing] instance.
  Listing({
    this.items = const [],
    this.links,
  });

  List<String> items;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ListingLinks? links;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Listing &&
          _deepEquality.equals(other.items, items) &&
          other.links == links;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (items.hashCode) + (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'Listing[items=$items, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'items'] = this.items;
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [Listing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Listing? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Listing[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Listing[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Listing(
        items: json[r'items'] is Iterable
            ? (json[r'items'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        links: ListingLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<Listing> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Listing>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Listing.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Listing> mapFromJson(dynamic json) {
    final map = <String, Listing>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Listing.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Listing-objects as value to a dart map
  static Map<String, List<Listing>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Listing>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Listing.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'items',
  };
}
