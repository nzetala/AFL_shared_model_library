// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translate_word_reverse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranslateWordReverse _$TranslateWordReverseFromJson(
        Map<String, dynamic> json) =>
    TranslateWordReverse(
      questionId: json['questionId'] as String,
      wordToTranslate: TargetLanguageText.fromJson(
          json['wordToTranslate'] as Map<String, dynamic>),
      options: (json['options'] as List<dynamic>)
          .map((e) => NativeLanguageText.fromJson(e as Map<String, dynamic>))
          .toList(),
      answer:
          NativeLanguageText.fromJson(json['answer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TranslateWordReverseToJson(
        TranslateWordReverse instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'wordToTranslate':
          TranslateWordReverse._wordToTranslateToJson(instance.wordToTranslate),
      'options': TranslateWordReverse._optionsToJson(instance.options),
      'answer': TranslateWordReverse._answerToJson(instance.answer),
    };
