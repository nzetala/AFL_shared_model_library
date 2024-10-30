/*
UserTranslateSentence
Instruction: Translate this sentence
Input: Text (Language the user is learning)
Result: Text written by the user (User’s language)
Description: Users translate a sentence from the target language to their native language.
* */

import 'package:afl_model_library/word/native_language_text.dart';
import 'package:afl_model_library/word/target_language_text.dart';
import 'package:json_annotation/json_annotation.dart';

import '../constants/question_type.dart';
import 'question.dart';

part 'user_translate_sentence.g.dart';

@JsonSerializable()
class UserTranslateSentence extends Question {
  @JsonKey(toJson: _sentenceToTranslateToJson)
  final TargetLanguageText sentenceToTranslate;

  @JsonKey(toJson: _answerToJson)
  final NativeLanguageText answer;

  UserTranslateSentence(
      {required super.questionId,
      required this.sentenceToTranslate,
      required this.answer})
      : super(questionType: QuestionType.userTranslateSentence);

  factory UserTranslateSentence.fromJson(Map<String, dynamic> json) =>
      _$UserTranslateSentenceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserTranslateSentenceToJson(this);

  static Map<String, dynamic> _answerToJson(NativeLanguageText answer) {
    return answer.toJson();
  }

  static Map<String, dynamic> _sentenceToTranslateToJson(
      TargetLanguageText sentenceToTranslate) {
    return sentenceToTranslate.toJson();
  }
}
