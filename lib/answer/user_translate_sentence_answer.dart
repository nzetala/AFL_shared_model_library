/*
UserTranslateSentence
Instruction: Translate this sentence
Input: Text (Language the user is learning)
Result: Text written by the user (User’s language)
Description: Users translate a sentence from the target language to their native language.
* */

import 'package:json_annotation/json_annotation.dart';

import '../word/target_language_word.dart';
import 'question.dart';

@JsonSerializable()
class UserTranslateSentence extends Question {
  @override
  final String instruction = "Translate this sentence";
  final TargetLanguageWord text;

  UserTranslateSentence({required this.text});

  factory UserTranslateSentence.fromJson(Map<String, dynamic> json) => _$UserTranslateSentenceFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$UserTranslateSentenceToJson(this);
}