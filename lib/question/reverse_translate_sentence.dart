/*
ReverseTranslateSentence
Instruction: Translate this sentence
Input: Phrase (Language the user is learning), List of several words in disorder (User’s language)
Result: Sub-list of one or more words (User’s language)
Description: Users translate a sentence from the target language to their native language using a list of words.
* */

import 'package:afl_model_library/word/target_language_word.dart';
import 'package:json_annotation/json_annotation.dart';

import '../constants/question_type.dart';
import '../word/native_language_word.dart';
import 'question.dart';

part 'reverse_translate_sentence.g.dart';

@JsonSerializable()
class ReverseTranslateSentence extends Question {
  TargetLanguageText phrase;
  List<NativeLanguageText> options;
  List<NativeLanguageText> answer;

  ReverseTranslateSentence(
      {required super.questionId,
      required this.phrase,
      required  this.options,
      required  this.answer})
      : super(questionType: QuestionType.listenAndIdentify);

  factory ReverseTranslateSentence.fromJson(
          Map<String, dynamic> json) =>
      _$ReverseTranslateSentenceFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ReverseTranslateSentenceToJson(this);
}
