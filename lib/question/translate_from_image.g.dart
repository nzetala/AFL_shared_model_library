// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translate_from_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranslateFromImage _$TranslateFromImageFromJson(Map<String, dynamic> json) =>
    TranslateFromImage(
      questionId: json['questionId'] as String,
      imageUrl: json['imageUrl'] as String,
      wordToTranslate: TargetLanguageText.fromJson(
          json['wordToTranslate'] as Map<String, dynamic>),
      answer:
          NativeLanguageText.fromJson(json['answer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TranslateFromImageToJson(TranslateFromImage instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'imageUrl': instance.imageUrl,
      'wordToTranslate': instance.wordToTranslate,
      'answer': instance.answer,
    };
