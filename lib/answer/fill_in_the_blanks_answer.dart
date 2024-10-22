/*
FillInTheBlanks
Instruction: Complete the sentence
Input: Sentence with one or more gaps (Language the user is learning), List of several words in disorder (Language the user is learning)
Result: Sub-list of one or more ordered words (Language the user is learning)
Description: Users fill in the blanks in a sentence using a list of words.
* */

import 'package:json_annotation/json_annotation.dart';

import '../word/target_language_word.dart';
import 'question.dart';

@JsonSerializable()
class FillInTheBlanksQuestion extends Question {
  final String sentence;
  final List<TargetLanguageWord> words;

  FillInTheBlanksQuestion({required this.sentence, required this.words}) : super(questionType: QuetionType.fillInTheBlanks);

  const FillInTheBlanksQuestion(
      {required String questionId,
        required this.sentence,
        required FillInTheBlanksAnswer answer,
        required FillInTheBlanksOption options})
      : super(
      questionId: questionId,
      questionType: QuestionType.textQuestion,
      answer: answer,
      choices: optionsﬂ);

  factory FillInTheBlanksQuestion.fromJson(Map<String, dynamic> json) => _$FillInTheBlanksQuestionFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$FillInTheBlanksQuestionToJson(this);
}