import 'package:json_annotation/json_annotation.dart';

import 'level.dart';

part 'quizzes.g.dart';

@JsonSerializable(explicitToJson: true)
class Quizzes {
  final String quizzesId;
  final List<Level> levels;

  const Quizzes({required this.quizzesId, required this.levels});

  factory Quizzes.fromJson(Map<String, dynamic> json) =>
      _$QuizzesFromJson(json);

  Map<String, dynamic> toJson() => _$QuizzesToJson(this);
}
