/*
MatchAudioToImage
Instruction: Select the correct image
Input: Audio (Language the user is learning), Text (Language the user is learning), List of 4 images with texts (User’s language)
Result: One image and its text (Language the user is learning)
Description: Users listen to an audio clip and select the correct image that matches the description.
* */

import 'package:afl_model_library/to_delete_draft/question_answer.dart';
import 'package:json_annotation/json_annotation.dart';

import 'question.dart';

@JsonSerializable()
class MatchAudioToImage extends Question {
  @override
  final String audio;
  final String text;
  final List<String> images;

  MatchAudioToImage({required this.audio, required this.text, required this.images});

  factory MatchAudioToImage.fromJson(Map<String, dynamic> json) => _$MatchAudioToImageFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$MatchAudioToImageToJson(this);

  @override
  bool validate(QuestionAnswer answer) {
    // TODO: implement validate
    throw UnimplementedError();
  }
}