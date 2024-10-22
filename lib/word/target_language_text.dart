import 'package:json_annotation/json_annotation.dart';

part 'target_language_text.g.dart';

@JsonSerializable()
class TargetLanguageText {
  final String text;
  final String? romanizedText;
  final String audioUrl;

  TargetLanguageText({required this.text, required this.audioUrl, this.romanizedText});

  factory TargetLanguageText.fromJson(Map<String, dynamic> json) => _$TargetLanguageTextFromJson(json);
  Map<String, dynamic> toJson() => _$TargetLanguageTextToJson(this);
}