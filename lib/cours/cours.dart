import 'package:json_annotation/json_annotation.dart';

import 'quizzes.dart';
import 'shared/enum.dart';

part 'language.g.dart';

@JsonSerializable()
class Language {
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

const Language({
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

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageToJson(this);
}