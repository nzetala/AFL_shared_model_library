import 'package:json_annotation/json_annotation.dart';

import 'lesson.dart';

part 'level.g.dart';

@JsonSerializable(explicitToJson: true)
class Level {
  final String levelId;
  final List<Lesson> lessons;

const Level({required this.levelId, required this.lessons});

  factory Level.fromJson(Map<String, dynamic> json) =>
      _$LevelFromJson(json);

  Map<String, dynamic> toJson() => _$LevelToJson(this);
}
