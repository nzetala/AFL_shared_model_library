/*
TranslateSentenceReverse
Instruction: Translate this sentence
Input: Phrase (Language the user is learning), List of several words in disorder (User’s language)
Result: Sub-list of one or more words (User’s language)
Description: Users translate a sentence from the target language to their native language using a list of words.
* */

import 'package:afl_model_library/word/target_language_text.dart';
import 'package:json_annotation/json_annotation.dart';

import '../constants/question_type.dart';
import '../word/native_language_text.dart';
import 'question.dart';

part 'translate_sentence_reverse.g.dart';

@JsonSerializable()
class TranslateSentenceReverse extends Question {
  @JsonKey(toJson: _phraseToJson)
  final TargetLanguageText phrase;

  @JsonKey(toJson: _optionsToJson)
  final List<NativeLanguageText> options;

  @JsonKey(toJson: _answerToJson)
  final List<NativeLanguageText> answer;

  TranslateSentenceReverse(
      {required super.questionId,
      super.questionType = QuestionType.translateSentenceReverse,
      required this.phrase,
      required this.options,
      required this.answer})
      : super();

  factory TranslateSentenceReverse.fromJson(Map<String, dynamic> json) =>
      _$TranslateSentenceReverseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TranslateSentenceReverseToJson(this);

  static List<Map<String, dynamic>> _answerToJson(
      List<NativeLanguageText> answer) {
    return answer.map((answer) => answer.toJson()).toList();
  }

  static List<Map<String, dynamic>> _optionsToJson(
      List<NativeLanguageText> options) {
    return options.map((option) => option.toJson()).toList();
  }

  static Map<String, dynamic> _phraseToJson(TargetLanguageText phrase) {
    return phrase.toJson();
  }
}
