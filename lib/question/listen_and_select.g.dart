// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listen_and_select.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListenAndSelect _$ListenAndSelectFromJson(Map<String, dynamic> json) =>
    ListenAndSelect(
      questionId: json['questionId'] as String,
      audioUrl: json['audioUrl'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => NativeLanguageText.fromJson(e as Map<String, dynamic>))
          .toList(),
      answer: (json['answer'] as List<dynamic>)
          .map((e) => NativeLanguageText.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListenAndSelectToJson(ListenAndSelect instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'audioUrl': instance.audioUrl,
      'answer': instance.answer,
      'options': instance.options,
    };
