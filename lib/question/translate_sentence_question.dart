/*
TranslateSentence
Instruction: Translate this sentence
Input: Phrase (User’s language), List of several words in disorder (Language the user is learning)
Result: Sub-list of one or more words (Language the user is learning)
Description: Users translate a sentence from their native language to the target language using a list of words.
* */

import 'package:json_annotation/json_annotation.dart';

import '../word/native_language_word.dart';
import '../word/target_language_word.dart';
import 'question.dart';

@JsonSerializable()
class TranslateSentence extends Question {
  @override
  final String instruction = "Translate this sentence";
  final NativeLanguageWord phrase;
  final List<TargetLanguageWord> words;

  TranslateSentence({required this.phrase, required this.words});

  factory TranslateSentence.fromJson(Map<String, dynamic> json) => _$TranslateSentenceFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$TranslateSentenceToJson(this);
}