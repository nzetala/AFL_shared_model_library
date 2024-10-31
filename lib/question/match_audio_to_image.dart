/*
MatchAudioToImage
Instruction: Select the correct image
Input: Audio (Language the user is learning), Text (Language the user is learning), List of 4 images with texts (User’s language)
Result: One image and its text (Language the user is learning)
Description: Users listen to an audio clip and select the correct image that matches the description.
* */

import 'package:afl_model_library/word/native_language_text.dart';
import 'package:afl_model_library/word/target_language_text.dart';
import 'package:json_annotation/json_annotation.dart';

import '../constants/question_type.dart';
import '../utils/native_language_to_string_pair .dart';
import 'question.dart';

part 'match_audio_to_image.g.dart';

@JsonSerializable()
class MatchAudioToImage extends Question {
  @JsonKey(toJson: _wordToTranslateToJson)
  TargetLanguageText wordToTranslate;

  @JsonKey(toJson: _optionsToJson)
  final List<NativeLanguageToStringPair> options;

  @JsonKey(toJson: _answerToJson)
  final NativeLanguageText answer;

  MatchAudioToImage(
      {required super.questionId,
      super.questionType = QuestionType.matchAudioToImage,
      required this.wordToTranslate,
      required this.options,
      required this.answer})
      : super();

  factory MatchAudioToImage.fromJson(Map<String, dynamic> json) =>
      _$MatchAudioToImageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MatchAudioToImageToJson(this);

  static Map<String, dynamic> _answerToJson(NativeLanguageText answer) {
    return answer.toJson();
  }

  static List<Map<String, dynamic>> _optionsToJson(
      List<NativeLanguageToStringPair> options) {
    return options.map((option) => option.toJson()).toList();
  }

  static Map<String, dynamic> _wordToTranslateToJson(
      TargetLanguageText wordToTranslate) {
    return wordToTranslate.toJson();
  }
}
