// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translate_sentence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranslateSentence _$TranslateSentenceFromJson(Map<String, dynamic> json) =>
    TranslateSentence(
      questionId: json['questionId'] as String,
      phrase:
          NativeLanguageText.fromJson(json['phrase'] as Map<String, dynamic>),
      options: (json['options'] as List<dynamic>)
          .map((e) => TargetLanguageText.fromJson(e as Map<String, dynamic>))
          .toList(),
      answer: (json['answer'] as List<dynamic>)
          .map((e) => TargetLanguageText.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TranslateSentenceToJson(TranslateSentence instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'phrase': instance.phrase,
      'options': instance.options,
      'answer': instance.answer,
    };
