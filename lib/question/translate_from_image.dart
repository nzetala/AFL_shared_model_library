/*
TranslateFromImage
Instruction: Translate this word
Input: Image, Text describing the image (Language the user is learning)
Result: Text written by the user (User’s language)
Description: Users translate a word or phrase based on an image and its description.
* */

import 'package:afl_model_library/word/target_language_word.dart';
import 'package:json_annotation/json_annotation.dart';

import '../constants/question_type.dart';
import '../word/native_language_word.dart';
import 'question.dart';

part 'translate_from_image.g.dart';

@JsonSerializable()
class TranslateFromImage extends Question {
  String imageUrl;
  TargetLanguageText wordToTranslate;

  List<TargetLanguageText> options;
  NativeLanguageText answer;

  TranslateFromImage(
      {required super.questionId,
      required this.imageUrl,
      required this.wordToTranslate,
      required this.options,
      required this.answer})
      : super(questionType: QuestionType.listenAndIdentify);

  factory TranslateFromImage.fromJson(Map<String, dynamic> json) =>
      _$TranslateFromImageFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$TranslateFromImageToJson(this);
}
