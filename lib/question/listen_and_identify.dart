/*
ListenAndIdentify
Instruction: What do you hear?
Input: Audio (Language the user is learning), List of 2 words with similar pronunciation (Language the user is learning)
Result: One word (Language the user is learning)
Description: Users listen to an audio clip and identify the correct word from a pair of similar-sounding words.
* */

import 'package:json_annotation/json_annotation.dart';

import '../constants/question_type.dart';
import '../word/target_language_text.dart';
import 'question.dart';

part 'listen_and_identify.g.dart';

@JsonSerializable()
class ListenAndIdentify extends Question {
  final String audioUrl;

  @JsonKey(toJson: _optionsToJson)
  final List<TargetLanguageText> options;

  @JsonKey(toJson: _answerToJson)
  final TargetLanguageText answer;

  const ListenAndIdentify({
    required super.questionId,
    super.questionType = QuestionType.listenAndIdentify,
    required this.audioUrl,
    required this.options,
    required this.answer,
  }) : super();

  factory ListenAndIdentify.fromJson(Map<String, dynamic> json) =>
      _$ListenAndIdentifyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ListenAndIdentifyToJson(this);

  static Map<String, dynamic> _answerToJson(TargetLanguageText answer) {
    return answer.toJson();
  }

  static List<Map<String, dynamic>> _optionsToJson(
      List<TargetLanguageText> options) {
    return options.map((option) => option.toJson()).toList();
  }
}
