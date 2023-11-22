// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class Batch {
  /// Returns a new [Batch] instance.
  Batch({
    this.batch = const [],
  });

  List<ListWrite> batch;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Batch && _deepEquality.equals(other.batch, batch);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (batch.hashCode);

  @override
  String toString() => 'Batch[batch=$batch]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'batch'] = this.batch;
    return json;
  }

  /// Returns a new [Batch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Batch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Batch[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Batch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Batch(
        batch: ListWrite.listFromJson(json[r'batch']),
      );
    }
    return null;
  }

  static List<Batch> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Batch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Batch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Batch> mapFromJson(dynamic json) {
    final map = <String, Batch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Batch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Batch-objects as value to a dart map
  static Map<String, List<Batch>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Batch>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Batch.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'batch',
  };
}
