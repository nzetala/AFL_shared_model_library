import 'package:afl_model_library/word/native_language_text.dart';
import 'package:json_annotation/json_annotation.dart';

import '../constants/country_code.dart';
import '../word/language_utils.dart';

part 'course.g.dart';

@JsonSerializable()
class Course {
  final String id;

  @JsonKey(toJson: nativeLanguageTextToJson)
  final NativeLanguageText name;

  @JsonKey(toJson: nativeLanguageTextToJson)
  final NativeLanguageText? info;

  @JsonKey(toJson: nativeLanguageTextToJson)
  final NativeLanguageText description;

  @JsonKey(toJson: nativeLanguageTextToJson)
  final NativeLanguageText? origin;

  @JsonKey(toJson: _metadataToJson)
  final CourseMetaData? metadata;

  final String imageUrl;
  final List<CountryCode> country;
  final bool hasAudio;
  final bool isActive;

  const Course({
    required this.id,
    required this.name,
    this.info,
    required this.description,
    required this.imageUrl,
    required this.country,
    this.origin,
    required this.hasAudio,
    required this.isActive,
    this.metadata,
  });

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  Map<String, dynamic> toJson() => _$CourseToJson(this);

  static Map<String, dynamic> _metadataToJson(CourseMetaData? courseMetaData) {
    if (courseMetaData == null) return {};
    return courseMetaData.toJson();
  }
}

@JsonSerializable()
class CourseMetaData {
  final DateTime createdAt;
  final String creator;

  @JsonKey(toJson: _changedHistoryToJson)
  final List<ChangedAction>? changedHistory;

  const CourseMetaData({
    required this.creator,
    required this.createdAt,
    this.changedHistory,
  });

  factory CourseMetaData.fromJson(Map<String, dynamic> json) =>
      _$CourseMetaDataFromJson(json);

  static List<Map<String, dynamic>> _changedHistoryToJson(
      List<ChangedAction>? changedHistoryList) {
    if (changedHistoryList == null) return [];
    return changedHistoryList
        .map((changedHistory) => changedHistory.toJson())
        .toList();
  }

  Map<String, dynamic> toJson() => _$CourseMetaDataToJson(this);
}

@JsonSerializable()
class ChangedAction {
  final String author;
  final DateTime updatedAt;
  final Map<String, String> changes;

  const ChangedAction({
    required this.author,
    required this.updatedAt,
    required this.changes,
  });

  factory ChangedAction.fromJson(Map<String, dynamic> json) =>
      _$ChangedActionFromJson(json);

  Map<String, dynamic> toJson() => _$ChangedActionToJson(this);
}
