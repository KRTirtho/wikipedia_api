// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class RevisionInfo {
  /// Returns a new [RevisionInfo] instance.
  RevisionInfo({
    this.title,
    this.pageId,
    this.rev,
    this.tid,
    this.comment,
    this.restrictions = const [],
    this.tags = const [],
    this.userId,
    this.userText,
    this.timestamp,
    this.redirect,
    this.pageLanguage,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rev;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comment;

  List<String> restrictions;

  List<String> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userText;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? redirect;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pageLanguage;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RevisionInfo &&
          other.title == title &&
          other.pageId == pageId &&
          other.rev == rev &&
          other.tid == tid &&
          other.comment == comment &&
          _deepEquality.equals(other.restrictions, restrictions) &&
          _deepEquality.equals(other.tags, tags) &&
          other.userId == userId &&
          other.userText == userText &&
          other.timestamp == timestamp &&
          other.redirect == redirect &&
          other.pageLanguage == pageLanguage;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (title == null ? 0 : title!.hashCode) +
      (pageId == null ? 0 : pageId!.hashCode) +
      (rev == null ? 0 : rev!.hashCode) +
      (tid == null ? 0 : tid!.hashCode) +
      (comment == null ? 0 : comment!.hashCode) +
      (restrictions.hashCode) +
      (tags.hashCode) +
      (userId == null ? 0 : userId!.hashCode) +
      (userText == null ? 0 : userText!.hashCode) +
      (timestamp == null ? 0 : timestamp!.hashCode) +
      (redirect == null ? 0 : redirect!.hashCode) +
      (pageLanguage == null ? 0 : pageLanguage!.hashCode);

  @override
  String toString() =>
      'RevisionInfo[title=$title, pageId=$pageId, rev=$rev, tid=$tid, comment=$comment, restrictions=$restrictions, tags=$tags, userId=$userId, userText=$userText, timestamp=$timestamp, redirect=$redirect, pageLanguage=$pageLanguage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.pageId != null) {
      json[r'page_id'] = this.pageId;
    } else {
      json[r'page_id'] = null;
    }
    if (this.rev != null) {
      json[r'rev'] = this.rev;
    } else {
      json[r'rev'] = null;
    }
    if (this.tid != null) {
      json[r'tid'] = this.tid;
    } else {
      json[r'tid'] = null;
    }
    if (this.comment != null) {
      json[r'comment'] = this.comment;
    } else {
      json[r'comment'] = null;
    }
    json[r'restrictions'] = this.restrictions;
    json[r'tags'] = this.tags;
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    if (this.userText != null) {
      json[r'user_text'] = this.userText;
    } else {
      json[r'user_text'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
    if (this.redirect != null) {
      json[r'redirect'] = this.redirect;
    } else {
      json[r'redirect'] = null;
    }
    if (this.pageLanguage != null) {
      json[r'page_language'] = this.pageLanguage;
    } else {
      json[r'page_language'] = null;
    }
    return json;
  }

  /// Returns a new [RevisionInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RevisionInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RevisionInfo[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RevisionInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RevisionInfo(
        title: mapValueOfType<String>(json, r'title'),
        pageId: mapValueOfType<int>(json, r'page_id'),
        rev: mapValueOfType<int>(json, r'rev'),
        tid: mapValueOfType<String>(json, r'tid'),
        comment: mapValueOfType<String>(json, r'comment'),
        restrictions: json[r'restrictions'] is Iterable
            ? (json[r'restrictions'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        userId: mapValueOfType<int>(json, r'user_id'),
        userText: mapValueOfType<String>(json, r'user_text'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        redirect: mapValueOfType<bool>(json, r'redirect'),
        pageLanguage: mapValueOfType<String>(json, r'page_language'),
      );
    }
    return null;
  }

  static List<RevisionInfo> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RevisionInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevisionInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RevisionInfo> mapFromJson(dynamic json) {
    final map = <String, RevisionInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RevisionInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RevisionInfo-objects as value to a dart map
  static Map<String, List<RevisionInfo>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RevisionInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RevisionInfo.listFromJson(
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
