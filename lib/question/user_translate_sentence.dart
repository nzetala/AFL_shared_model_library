/*
UserTranslateSentence
Instruction: Translate this sentence
Input: Text (Language the user is learning)
Result: Text written by the user (User’s language)
Description: Users translate a sentence from the target language to their native language.
* */

import 'package:afl_model_library/word/target_language_text.dart';
import 'package:json_annotation/json_annotation.dart';

import '../constants/question_type.dart';
import 'question.dart';

part 'user_translate_sentence.g.dart';

@JsonSerializable()
class UserTranslateSentence extends Question {
  TargetLanguageText sentenceToTranslate;

  TargetLanguageText answer;

  UserTranslateSentence(
      {required super.questionId,
      required this.sentenceToTranslate,
      required this.answer})
      : super(questionType: QuestionType.listenAndIdentify);

  factory UserTranslateSentence.fromJson(Map<String, dynamic> json) =>
      _$UserTranslateSentenceFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$UserTranslateSentenceToJson(this);
}
