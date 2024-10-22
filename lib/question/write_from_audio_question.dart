/*
WriteFromAudio
Instruction: Write what you hear
Input: Audio (Language the user is learning)
Result: Text written by the user (User’s language)
Description: Users listen to an audio clip and write down what they hear in their native language.
* */

import 'package:json_annotation/json_annotation.dart';

import 'question.dart';

@JsonSerializable()
class WriteFromAudioQuestion extends Question {
  final String audio;

  WriteFromAudioQuestion({required this.audio, required super.questionId, required super.questionType, required super.correctAnswer, required super.option});

  factory WriteFromAudio.fromJson(Map<String, dynamic> json) => _$WriteFromAudioQuestionFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$WriteFromAudioQuestionToJson(this);
}