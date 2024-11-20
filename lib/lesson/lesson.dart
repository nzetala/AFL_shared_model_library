import 'package:json_annotation/json_annotation.dart';

import '../metadata/metadata.dart';

part 'lesson.g.dart';

@JsonSerializable()
class Lesson {
  final String lessonNumber;

  @JsonKey(toJson: metadataToJson)
  final BasicMetadata? metadata;

  const Lesson(this.lessonNumber, this.metadata);

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);

  Map<String, dynamic> toJson() => _$LessonToJson(this);
}
