/*
TranslateWord
Instruction: How do you say it?
Input: One word (User’s language), List of 3 words (Language the user is learning)
Result: One word (Language the user is learning)
Description: Users translate a given word from their native language to the target language.
* */

import 'package:afl_model_library/word/native_language_text.dart';
import 'package:json_annotation/json_annotation.dart';

import '../constants/question_type.dart';
import '../word/target_language_text.dart';
import 'question.dart';

part 'translate_word.g.dart';

@JsonSerializable()
class TranslateWord extends Question {

  @JsonKey(toJson: _wordToTranslateToJson)
  final NativeLanguageText wordToTranslate;

  @JsonKey(toJson: _optionsToJson)
  final List<TargetLanguageText> options;

  @JsonKey(toJson: _answerToJson)
  final TargetLanguageText answer;

  TranslateWord(
      {required super.questionId,
      required this.wordToTranslate,
      required this.options,
      required this.answer})
      : super(questionType: QuestionType.translateWord);

  factory TranslateWord.fromJson(Map<String, dynamic> json) =>
      _$TranslateWordFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$TranslateWordToJson(this);

  static Map<String, dynamic> _wordToTranslateToJson(NativeLanguageText wordToTranslate) {
    return wordToTranslate.toJson();
  }

  static List<Map<String, dynamic>> _optionsToJson(List<TargetLanguageText> options) {
    return options.map((option) => option.toJson()).toList();
  }

  static Map<String, dynamic> _answerToJson(TargetLanguageText answer) {
    return answer.toJson();
  }
}
