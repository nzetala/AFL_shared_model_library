/*
FillInTheBlanks
Instruction: Complete the sentence
Input: Sentence with one or more gaps (Language the user is learning), List of several words in disorder (Language the user is learning)
Result: Sub-list of one or more ordered words (Language the user is learning)
Description: Users fill in the blanks in a sentence using a list of words.
* */

import 'package:json_annotation/json_annotation.dart';

import '../constants/question_type.dart';
import '../word/target_language_word.dart';
import 'question.dart';

part 'fill_in_the_blanks.g.dart';

@JsonSerializable()
class FillInTheBlanks extends Question {
  final String sentence;
  final List<TargetLanguageText> options;
  final List<TargetLanguageText> answer;

  const FillInTheBlanks(
      {required super.questionId,
      required this.sentence,
      required this.options,
      required this.answer})
      : super(questionType: QuestionType.listenAndIdentify);

  factory FillInTheBlanks.fromJson(Map<String, dynamic> json) =>
      _$FillInTheBlanksFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$FillInTheBlanksToJson(this);
}
