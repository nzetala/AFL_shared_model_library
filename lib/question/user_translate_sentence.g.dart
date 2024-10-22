// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_translate_sentence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserTranslateSentence _$UserTranslateSentenceFromJson(
        Map<String, dynamic> json) =>
    UserTranslateSentence(
      questionId: json['questionId'] as String,
      sentenceToTranslate: TargetLanguageText.fromJson(
          json['sentenceToTranslate'] as Map<String, dynamic>),
      answer:
          TargetLanguageText.fromJson(json['answer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserTranslateSentenceToJson(
        UserTranslateSentence instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'sentenceToTranslate': instance.sentenceToTranslate,
      'answer': instance.answer,
    };
