/*
TranslateSentence
Instruction: Translate this sentence
Input: Phrase (User’s language), List of several words in disorder (Language the user is learning)
Result: Sub-list of one or more words (Language the user is learning)
Description: Users translate a sentence from their native language to the target language using a list of words.
* */

import 'package:json_annotation/json_annotation.dart';

import '../constants/question_type.dart';
import '../word/native_language_text.dart';
import '../word/target_language_text.dart';
import 'question.dart';

part 'translate_sentence.g.dart';

@JsonSerializable()
class TranslateSentence extends Question {
  @JsonKey(toJson: _phraseToJson)
  final NativeLanguageText phrase;

  @JsonKey(toJson: _optionsToJson)
  final List<TargetLanguageText> options;

  @JsonKey(toJson: _answerToJson)
  final List<TargetLanguageText> answer;

  TranslateSentence(
      {required super.questionId,
      super.questionType = QuestionType.translateSentence,
      required this.phrase,
      required this.options,
      required this.answer})
      : super();

  factory TranslateSentence.fromJson(Map<String, dynamic> json) =>
      _$TranslateSentenceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TranslateSentenceToJson(this);

  static Map<String, dynamic> _phraseToJson(NativeLanguageText phrase) {
    return phrase.toJson();
  }

  static List<Map<String, dynamic>> _answerToJson(
      List<TargetLanguageText> answer) {
    return answer.map((answer) => answer.toJson()).toList();
  }

  static List<Map<String, dynamic>> _optionsToJson(
      List<TargetLanguageText> options) {
    return options.map((option) => option.toJson()).toList();
  }
}
