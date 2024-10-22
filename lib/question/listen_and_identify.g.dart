// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listen_and_identify.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListenAndIdentify _$ListenAndIdentifyFromJson(Map<String, dynamic> json) =>
    ListenAndIdentify(
      questionId: json['questionId'] as String,
      audioUrl: json['audioUrl'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => TargetLanguageText.fromJson(e as Map<String, dynamic>))
          .toList(),
      answer:
          TargetLanguageText.fromJson(json['answer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListenAndIdentifyToJson(ListenAndIdentify instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'audioUrl': instance.audioUrl,
      'options': instance.options,
      'answer': instance.answer,
    };
