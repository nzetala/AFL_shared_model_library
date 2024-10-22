/*
MatchPairs
Instruction: Combine pairs
Input: 2 lists of 5 words in disorder (one list in each language)
Result: 2 lists of ordered words (one list in each language)
Description: Users match pairs of words from two lists, one in each language.
* */

import 'package:json_annotation/json_annotation.dart';

import '../constants/question_type.dart';
import '../utils/target_to_native_language_pair.dart';
import 'question.dart';

part 'match_pairs.g.dart';

@JsonSerializable()
class MatchPairs extends Question {
  @JsonKey(name: 'correct_pairs')
  List<TargetToNativeLanguagePair> options;
  List<TargetToNativeLanguagePair> answer;
  
  MatchPairs(
     {required super.questionId,
      required  this.options,
      required  this.answer})
      : super(questionType: QuestionType.listenAndIdentify);

  factory MatchPairs.fromJson(Map<String, dynamic> json) => _$MatchPairsFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$MatchPairsToJson(this);
}