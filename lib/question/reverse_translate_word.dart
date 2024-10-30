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

part 'reverse_translate_word.g.dart';

@JsonSerializable()
class ReverseTranslateWord extends Question {

  @JsonKey(toJson: _wordToTranslateToJson)
  final TargetLanguageText wordToTranslate;

  @JsonKey(toJson: _optionsToJson)
  final List<NativeLanguageText> options;

  @JsonKey(toJson: _answerToJson)
  final NativeLanguageText answer;

  ReverseTranslateWord(
      {required super.questionId,
      required this.wordToTranslate,
      required this.options,
      required this.answer})
      : super(questionType: QuestionType.listenAndIdentify);

  factory ReverseTranslateWord.fromJson(Map<String, dynamic> json) =>
      _$ReverseTranslateWordFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ReverseTranslateWordToJson(this);

  static Map<String, dynamic> _wordToTranslateToJson(TargetLanguageText wordToTranslate) {
    return wordToTranslate.toJson();
  }

  static List<Map<String, dynamic>> _optionsToJson(List<NativeLanguageText> options) {
    return options.map((option) => option.toJson()).toList();
  }

  static Map<String, dynamic> _answerToJson(NativeLanguageText answer) {
    return answer.toJson();
  }
}
