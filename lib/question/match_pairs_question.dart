/*
MatchPairs
Instruction: Combine pairs
Input: 2 lists of 5 words in disorder (one list in each language)
Result: 2 lists of ordered words (one list in each language)
Description: Users match pairs of words from two lists, one in each language.
* */

import 'package:json_annotation/json_annotation.dart';

import 'question.dart';

@JsonSerializable()
class MatchPairs extends Question {
  @override
  final String instruction = "Combine pairs";
  final List<TargetLanguageWord> list1;
  final List<NativeLanguageWord> list2;

  MatchPairs({required this.list1, required this.list2});

  factory MatchPairs.fromJson(Map<String, dynamic> json) => _$MatchPairsFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$MatchPairsToJson(this);
}