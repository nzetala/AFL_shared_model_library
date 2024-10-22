/*
TranslateWord
Instruction: How do you say it?
Input: One word (User’s language), List of 3 words (Language the user is learning)
Result: One word (Language the user is learning)
Description: Users translate a given word from their native language to the target language.
* */

import 'package:afl_model_library/word/native_language_word.dart';
import 'package:json_annotation/json_annotation.dart';

import '../constants/question_type.dart';
import '../word/target_language_word.dart';
import 'question.dart';

part 'translate_word.g.dart';

@JsonSerializable()
class TranslateWord extends Question {
  NativeLanguageText wordToTranslate;

  List<TargetLanguageText> options;
  TargetLanguageText answer;

  TranslateWord(
      {required super.questionId,
      required this.wordToTranslate,
      required this.options,
      required this.answer})
      : super(questionType: QuestionType.listenAndIdentify);

  factory TranslateWord.fromJson(Map<String, dynamic> json) =>
      _$TranslateWordFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$TranslateWordToJson(this);
}
