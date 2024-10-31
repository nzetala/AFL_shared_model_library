// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translate_sentence_reverse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranslateSentenceReverse _$TranslateSentenceReverseFromJson(
        Map<String, dynamic> json) =>
    TranslateSentenceReverse(
      questionId: json['questionId'] as String,
      phrase:
          TargetLanguageText.fromJson(json['phrase'] as Map<String, dynamic>),
      options: (json['options'] as List<dynamic>)
          .map((e) => NativeLanguageText.fromJson(e as Map<String, dynamic>))
          .toList(),
      answer: (json['answer'] as List<dynamic>)
          .map((e) => NativeLanguageText.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TranslateSentenceReverseToJson(
        TranslateSentenceReverse instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'phrase': TranslateSentenceReverse._phraseToJson(instance.phrase),
      'options': TranslateSentenceReverse._optionsToJson(instance.options),
      'answer': TranslateSentenceReverse._answerToJson(instance.answer),
    };
