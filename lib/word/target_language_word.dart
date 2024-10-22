import 'package:json_annotation/json_annotation.dart';

part 'target_language_word.g.dart';

@JsonSerializable()
class TargetLanguageText {
  final String text;
  final String audioUrl;

  TargetLanguageText({required this.text, required this.audioUrl});

  factory TargetLanguageText.fromJson(Map<String, dynamic> json) => _$TargetLanguageTextFromJson(json);
  Map<String, dynamic> toJson() => _$TargetLanguageTextToJson(this);
}