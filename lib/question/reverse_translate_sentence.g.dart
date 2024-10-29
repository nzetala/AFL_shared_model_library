// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reverse_translate_sentence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReverseTranslateSentence _$ReverseTranslateSentenceFromJson(
        Map<String, dynamic> json) =>
    ReverseTranslateSentence(
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

Map<String, dynamic> _$ReverseTranslateSentenceToJson(
        ReverseTranslateSentence instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'phrase': ReverseTranslateSentence._phraseToJson(instance.phrase),
      'options': ReverseTranslateSentence._optionsToJson(instance.options),
      'answer': ReverseTranslateSentence._answerToJson(instance.answer),
    };
