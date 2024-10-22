// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fill_in_the_blanks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FillInTheBlanks _$FillInTheBlanksFromJson(Map<String, dynamic> json) =>
    FillInTheBlanks(
      questionId: json['questionId'] as String,
      sentence: json['sentence'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => TargetLanguageText.fromJson(e as Map<String, dynamic>))
          .toList(),
      answer: (json['answer'] as List<dynamic>)
          .map((e) => TargetLanguageText.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FillInTheBlanksToJson(FillInTheBlanks instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'sentence': instance.sentence,
      'options': instance.options,
      'answer': instance.answer,
    };
