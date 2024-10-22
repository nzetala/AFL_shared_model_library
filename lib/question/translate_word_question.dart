/*
TranslateWord
Instruction: How do you say it?
Input: One word (User’s language), List of 3 words (Language the user is learning)
Result: One word (Language the user is learning)
Description: Users translate a given word from their native language to the target language.
* */

import 'package:json_annotation/json_annotation.dart';

import '../word/native_language_word.dart';
import '../word/target_language_word.dart';
import 'question.dart';

@JsonSerializable()
class TranslateWordQuestion extends Question {
  @override
  final String instruction = "How do you say it?";
  final NativeLanguageWord word;
  final List<TargetLanguageWord> options;

  TranslateWordQuestion({required this.word, required this.options});

  factory TranslateWordQuestion.fromJson(Map<String, dynamic> json) => _$TranslateWordQuestionJson(json);
  @override
  Map<String, dynamic> toJson() => _$TranslateWordQuestionToJson(this);
}