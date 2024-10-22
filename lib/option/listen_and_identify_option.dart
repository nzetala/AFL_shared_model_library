/*
ListenAndIdentify
Instruction: What do you hear?
Input: Audio (Language the user is learning), List of 2 words with similar pronunciation (Language the user is learning)
Result: One word (Language the user is learning)
Description: Users listen to an audio clip and identify the correct word from a pair of similar-sounding words.
* */

import 'package:json_annotation/json_annotation.dart';

import 'question.dart';

@JsonSerializable()
class ListenAndIdentify extends Question {
  @override
  final String instruction = "What do you hear?";
  final String audio;
  final List<TargetLanguageWord> options;

  ListenAndIdentify({required this.audio, required this.options});

  factory ListenAndIdentify.fromJson(Map<String, dynamic> json) => _$ListenAndIdentifyFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ListenAndIdentifyToJson(this);
}