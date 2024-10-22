// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_from_audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WriteFromAudio _$WriteFromAudioFromJson(Map<String, dynamic> json) =>
    WriteFromAudio(
      questionId: json['questionId'] as String,
      audioUrl: json['audioUrl'] as String,
      answer:
          NativeLanguageText.fromJson(json['answer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WriteFromAudioToJson(WriteFromAudio instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'audioUrl': instance.audioUrl,
      'answer': instance.answer,
    };
