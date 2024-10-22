/*
ListenAndSelect
Instruction: Press what you hear
Input: Audio (Language user is learning), List of several words in disorder (User’s language)
Result: Ordered sub-list of one or more words (User’s language)
Description: Users listen to an audio clip and select the correct words from a list in their native language.
* */

import 'package:json_annotation/json_annotation.dart';

import 'question.dart';

@JsonSerializable()
class ListenAndSelectQuestion extends Question {
  final String questionText;

  const ListenAndSelectQuestion(
      {required String questionId,
        required this.questionText,
        required ListenAndSelectQuestionAnswer correctAnswer,
        required ListenAndSelectQuestionChoices choices})
      : super(
      questionId: questionId,
      questionType: QuestionType.textQuestion,
      correctAnswer: correctAnswer,
      choices: choices);

  factory ListenAndSelectQuestion.fromJson(Map<String, dynamic> json) =>
      _$ListenAndSelectQuestionFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ListenAndSelectQuestionToJson(this);
}