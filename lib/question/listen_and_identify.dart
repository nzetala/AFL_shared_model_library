/*
ListenAndIdentify
Instruction: What do you hear?
Input: Audio (Language the user is learning), List of 2 words with similar pronunciation (Language the user is learning)
Result: One word (Language the user is learning)
Description: Users listen to an audio clip and identify the correct word from a pair of similar-sounding words.
* */

import 'package:json_annotation/json_annotation.dart';

import '../constants/question_type.dart';
import '../word/target_language_word.dart';
import 'question.dart';

part 'listen_and_identify.g.dart';

@JsonSerializable()
class ListenAndIdentify extends Question {
  final String audioUrl;
  final List<TargetLanguageText> options;
  final TargetLanguageText answer;

  const ListenAndIdentify(
      {required super.questionId,
      required this.audioUrl,
      required this.options,
      required this.answer,})
      : super(questionType: QuestionType.listenAndIdentify);

  factory ListenAndIdentify.fromJson(Map<String, dynamic> json) =>
      _$ListenAndIdentifyFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ListenAndIdentifyToJson(this);
}
