import 'package:json_annotation/json_annotation.dart';

part 'lesson.g.dart';


@JsonSerializable()
class Lesson {
  final String lessonNumber;

  const Lesson(this.lessonNumber);

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
  Map<String, dynamic> toJson() => _$LessonToJson(this);
}