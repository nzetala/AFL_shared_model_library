/*
TranslateFromImage
Instruction: Translate this word
Input: Image, Text describing the image (Language the user is learning)
Result: Text written by the user (User’s language)
Description: Users translate a word or phrase based on an image and its description.
* */

import 'package:afl_model_library/word/target_language_text.dart';
import 'package:json_annotation/json_annotation.dart';

import '../constants/question_type.dart';
import '../word/native_language_text.dart';
import 'question.dart';

part 'translate_from_image.g.dart';

@JsonSerializable()
class TranslateFromImage extends Question {
  final String imageUrl;

  @JsonKey(toJson: _wordToTranslateToJson)
  final TargetLanguageText wordToTranslate;

  @JsonKey(toJson: _answerToJson)
  final NativeLanguageText answer;

  TranslateFromImage(
      {required super.questionId,
      super.questionType = QuestionType.translateFromImage,
      required this.imageUrl,
      required this.wordToTranslate,
      required this.answer})
      : super();

  factory TranslateFromImage.fromJson(Map<String, dynamic> json) =>
      _$TranslateFromImageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TranslateFromImageToJson(this);

  static Map<String, dynamic> _wordToTranslateToJson(
      TargetLanguageText wordToTranslate) {
    return wordToTranslate.toJson();
  }

  static Map<String, dynamic> _answerToJson(NativeLanguageText answer) {
    return answer.toJson();
  }
}
