import 'package:afl_model_library/word/native_language_text.dart';
import 'package:json_annotation/json_annotation.dart';

import '../constants/country_code.dart';

part 'course.g.dart';

@JsonSerializable()
class Course {
  final String id;
  final NativeLanguageText name;
  final NativeLanguageText? info;
  final NativeLanguageText description;
  final String imageUrl;
  final List<CountryCode> country;
  final NativeLanguageText? origin;
  final bool hasAudio;
  final bool isActive;
  final CourseMetaData? metadata;

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
}

@JsonSerializable()
class CourseMetaData {
  final DateTime createdAt;
  final String creator;
  final List<ChangedAction> changedHistory;

  const CourseMetaData(
    this.creator, {
    required this.createdAt,
    required this.changedHistory,
  });

  factory CourseMetaData.fromJson(Map<String, dynamic> json) =>
      _$CourseMetaDataFromJson(json);

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
