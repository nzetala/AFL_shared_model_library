// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translate_word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranslateWord _$TranslateWordFromJson(Map<String, dynamic> json) =>
    TranslateWord(
      questionId: json['questionId'] as String,
      wordToTranslate: NativeLanguageText.fromJson(
          json['wordToTranslate'] as Map<String, dynamic>),
      options: (json['options'] as List<dynamic>)
          .map((e) => TargetLanguageText.fromJson(e as Map<String, dynamic>))
          .toList(),
      answer:
          TargetLanguageText.fromJson(json['answer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TranslateWordToJson(TranslateWord instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'wordToTranslate':
          TranslateWord._wordToTranslateToJson(instance.wordToTranslate),
      'options': TranslateWord._optionsToJson(instance.options),
      'answer': TranslateWord._answerToJson(instance.answer),
    };
