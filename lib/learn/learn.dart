import 'package:json_annotation/json_annotation.dart';

import '../cours/cours.dart';

part 'learn.g.dart';

@JsonSerializable(explicitToJson: true)
class Learn {
  final List<Course> courses;

const Learn({required this.courses});

  factory Learn.fromJson(Map<String, dynamic> json) =>
      _$LearnFromJson(json);

  Map<String, dynamic> toJson() => _$LearnToJson(this);
}
