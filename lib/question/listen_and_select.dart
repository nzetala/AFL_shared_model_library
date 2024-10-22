/*
ListenAndSelect
Instruction: Press what you hear
Input: Audio (Language user is learning), List of several words in disorder (User’s language)
Result: Ordered sub-list of one or more words (User’s language)
Description: Users listen to an audio clip and select the correct words from a list in their native language.
* */

import 'package:json_annotation/json_annotation.dart';

import '../constants/question_type.dart';
import '../word/native_language_text.dart';
import 'question.dart';

part 'listen_and_select.g.dart';

@JsonSerializable()
class ListenAndSelect extends Question {
  final String audioUrl;
  final List<NativeLanguageText> answer;
  final List<NativeLanguageText> options;


  ListenAndSelect(
      {required super.questionId,
      required this.audioUrl,
      required this.options,
      required this.answer})
      : super(questionType: QuestionType.listenAndIdentify);

  factory ListenAndSelect.fromJson(Map<String, dynamic> json) =>
      _$ListenAndSelectFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ListenAndSelectToJson(this);
}