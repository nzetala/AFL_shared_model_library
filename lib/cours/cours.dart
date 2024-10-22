import 'package:json_annotation/json_annotation.dart';

import '../constants/country_code.dart';
import '../quizzes/quizzes.dart';

part 'cours.g.dart';

@JsonSerializable()
class Course {
  final String id;
  final String name;
  final String info;
  final String description;
  final String imageUrl;
  final List<CountryCode> country;
  final String origin;
  final bool hasAudio;
  final bool isActive;
  final Quizzes quizzes;

const Course({
  required this.id,
  required this.name,
  required this.info,
  required this.description,
  required this.imageUrl,
  required this.country,
  required this.origin,
  required this.hasAudio,
  required this.isActive,
  required this.quizzes,
});

  factory Course.fromJson(Map<String, dynamic> json) =>
      _$CourseFromJson(json);

  Map<String, dynamic> toJson() => _$CourseToJson(this);
}