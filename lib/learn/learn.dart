import 'package:json_annotation/json_annotation.dart';

import '../cours/cours.dart';

part '../learn_content.g.dart';

@JsonSerializable(explicitToJson: true)
class LearnContent {
  final List<Course> languages;

const LearnContent({required this.languages});

  factory LearnContent.fromJson(Map<String, dynamic> json) =>
      _$LearnContentFromJson(json);

  Map<String, dynamic> toJson() => _$LearnContentToJson(this);
}
