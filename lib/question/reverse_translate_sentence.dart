/*
ReverseTranslateSentence
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

part 'reverse_translate_sentence.g.dart';

@JsonSerializable()
class ReverseTranslateSentence extends Question {

  @JsonKey(toJson: _phraseToJson)
  final TargetLanguageText phrase;

  @JsonKey(toJson: _optionsToJson)
  final List<NativeLanguageText> options;

  @JsonKey(toJson: _answerToJson)
  final List<NativeLanguageText> answer;

  ReverseTranslateSentence(
      {required super.questionId,
      required this.phrase,
      required  this.options,
      required  this.answer})
      : super(questionType: QuestionType.reverseTranslateSentence);

  factory ReverseTranslateSentence.fromJson(
          Map<String, dynamic> json) =>
      _$ReverseTranslateSentenceFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ReverseTranslateSentenceToJson(this);

  static List<Map<String, dynamic>> _answerToJson(List<NativeLanguageText> answer) {
    return answer.map((answer) => answer.toJson()).toList();
  }

  static List<Map<String, dynamic>> _optionsToJson(List<NativeLanguageText> options) {
    return options.map((option) => option.toJson()).toList();
  }

  static Map<String, dynamic> _phraseToJson(TargetLanguageText phrase) {
    return phrase.toJson();
  }
}
