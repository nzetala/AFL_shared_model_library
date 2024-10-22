// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_audio_to_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchAudioToImage _$MatchAudioToImageFromJson(Map<String, dynamic> json) =>
    MatchAudioToImage(
      questionId: json['questionId'] as String,
      wordToTranslate: TargetLanguageText.fromJson(
          json['wordToTranslate'] as Map<String, dynamic>),
      options: (json['options'] as List<dynamic>)
          .map((e) =>
              NativeLanguageToStringPair.fromJson(e as Map<String, dynamic>))
          .toList(),
      answer:
          TargetLanguageText.fromJson(json['answer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MatchAudioToImageToJson(MatchAudioToImage instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'wordToTranslate': instance.wordToTranslate,
      'options': instance.options,
      'answer': instance.answer,
    };
