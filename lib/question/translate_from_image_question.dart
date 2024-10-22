/*
TranslateFromImage
Instruction: Translate this word
Input: Image, Text describing the image (Language the user is learning)
Result: Text written by the user (User’s language)
Description: Users translate a word or phrase based on an image and its description.
* */

import 'package:json_annotation/json_annotation.dart';

import '../word/target_language_word.dart';
import 'question.dart';

@JsonSerializable()
class TranslateFromImage extends Question {
  @override
  final String instruction = "Translate this word";
  final String image;
  final TargetLanguageWord description;

  TranslateFromImage({required this.image, required this.description});

  factory TranslateFromImage.fromJson(Map<String, dynamic> json) => _$TranslateFromImageFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$TranslateFromImageToJson(this);
}