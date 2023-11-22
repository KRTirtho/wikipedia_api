// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of wikipedia_api;

class MediaItem {
  /// Returns a new [MediaItem] instance.
  MediaItem({
    this.title,
    required this.type,
    required this.sectionId,
    required this.showInGallery,
    this.caption,
    this.original,
  });

  /// The file page title
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  MediaItemTypeEnum type;

  /// section ID in which the item is found on the page
  int sectionId;

  /// whether the client should show the file in an image gallery presentation
  bool showInGallery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MediaItemCaption? caption;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MediaItemOriginal? original;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MediaItem &&
          other.title == title &&
          other.type == type &&
          other.sectionId == sectionId &&
          other.showInGallery == showInGallery &&
          other.caption == caption &&
          other.original == original;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (title == null ? 0 : title!.hashCode) +
      (type.hashCode) +
      (sectionId.hashCode) +
      (showInGallery.hashCode) +
      (caption == null ? 0 : caption!.hashCode) +
      (original == null ? 0 : original!.hashCode);

  @override
  String toString() =>
      'MediaItem[title=$title, type=$type, sectionId=$sectionId, showInGallery=$showInGallery, caption=$caption, original=$original]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    json[r'type'] = this.type;
    json[r'section_id'] = this.sectionId;
    json[r'showInGallery'] = this.showInGallery;
    if (this.caption != null) {
      json[r'caption'] = this.caption;
    } else {
      json[r'caption'] = null;
    }
    if (this.original != null) {
      json[r'original'] = this.original;
    } else {
      json[r'original'] = null;
    }
    return json;
  }

  /// Returns a new [MediaItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MediaItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MediaItem[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MediaItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MediaItem(
        title: mapValueOfType<String>(json, r'title'),
        type: MediaItemTypeEnum.fromJson(json[r'type'])!,
        sectionId: mapValueOfType<int>(json, r'section_id')!,
        showInGallery: mapValueOfType<bool>(json, r'showInGallery')!,
        caption: MediaItemCaption.fromJson(json[r'caption']),
        original: MediaItemOriginal.fromJson(json[r'original']),
      );
    }
    return null;
  }

  static List<MediaItem> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MediaItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MediaItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MediaItem> mapFromJson(dynamic json) {
    final map = <String, MediaItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MediaItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MediaItem-objects as value to a dart map
  static Map<String, List<MediaItem>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MediaItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MediaItem.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'section_id',
    'showInGallery',
  };
}

class MediaItemTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MediaItemTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const image = MediaItemTypeEnum._(r'image');
  static const video = MediaItemTypeEnum._(r'video');
  static const audio = MediaItemTypeEnum._(r'audio');

  /// List of all possible values in this [enum][MediaItemTypeEnum].
  static const values = <MediaItemTypeEnum>[
    image,
    video,
    audio,
  ];

  static MediaItemTypeEnum? fromJson(dynamic value) =>
      MediaItemTypeEnumTypeTransformer().decode(value);

  static List<MediaItemTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MediaItemTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MediaItemTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MediaItemTypeEnum] to String,
/// and [decode] dynamic data back to [MediaItemTypeEnum].
class MediaItemTypeEnumTypeTransformer {
  factory MediaItemTypeEnumTypeTransformer() =>
      _instance ??= const MediaItemTypeEnumTypeTransformer._();

  const MediaItemTypeEnumTypeTransformer._();

  String encode(MediaItemTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MediaItemTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MediaItemTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'image':
          return MediaItemTypeEnum.image;
        case r'video':
          return MediaItemTypeEnum.video;
        case r'audio':
          return MediaItemTypeEnum.audio;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MediaItemTypeEnumTypeTransformer] instance.
  static MediaItemTypeEnumTypeTransformer? _instance;
}
