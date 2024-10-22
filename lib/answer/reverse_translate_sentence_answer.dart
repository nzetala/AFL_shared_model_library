/*
ReverseTranslateSentence
Instruction: Translate this sentence
Input: Phrase (Language the user is learning), List of several words in disorder (User’s language)
Result: Sub-list of one or more words (User’s language)
Description: Users translate a sentence from the target language to their native language using a list of words.
* */

import 'package:json_annotation/json_annotation.dart';

import 'question.dart';

@JsonSerializable()
class ReverseTranslateSentence extends Question {
  @override
  final String instruction = "Translate this sentence";
  final TargetLanguageWord phrase;
  final List<NativeLanguageWord> words;

  ReverseTranslateSentence({required this.phrase, required this.words});

  factory ReverseTranslateSentence.fromJson(Map<String, dynamic> json) => _$ReverseTranslateSentenceFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ReverseTranslateSentenceToJson(this);
}