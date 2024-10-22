import 'package:json_annotation/json_annotation.dart';

import '../question/question.dart';

part 'lesson.g.dart';


@JsonSerializable()
class Lesson {
  final String lessonId;
  final String avatar;
  final String name;

  @JsonKey(fromJson: _questionsFromJson, toJson: _questionsToJson)
  final List<Question> questions;

  const Lesson(this.lessonId, this.questions, this.avatar, this.name);

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
  Map<String, dynamic> toJson() => _$LessonToJson(this);

  static List<Question> _questionsFromJson(List<dynamic> json) =>
      json.map((e) => Question.fromJson(e as Map<String, dynamic>)).toList();

  static List<Map<String, dynamic>> _questionsToJson(List<Question> questions) =>
      questions.map((e) => e.toJson()).toList();
}