// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_audio_to_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchAudioToImage _$MatchAudioToImageFromJson(Map<String, dynamic> json) =>
    MatchAudioToImage(
      questionId: json['questionId'] as String,
      questionType:
          $enumDecodeNullable(_$QuestionTypeEnumMap, json['questionType']) ??
              QuestionType.matchAudioToImage,
      wordToTranslate: TargetLanguageText.fromJson(
          json['wordToTranslate'] as Map<String, dynamic>),
      options: (json['options'] as List<dynamic>)
          .map((e) =>
              NativeLanguageToStringPair.fromJson(e as Map<String, dynamic>))
          .toList(),
      answer:
          NativeLanguageText.fromJson(json['answer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MatchAudioToImageToJson(MatchAudioToImage instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'questionType': _$QuestionTypeEnumMap[instance.questionType]!,
      'wordToTranslate':
          MatchAudioToImage._wordToTranslateToJson(instance.wordToTranslate),
      'options': MatchAudioToImage._optionsToJson(instance.options),
      'answer': MatchAudioToImage._answerToJson(instance.answer),
    };

const _$QuestionTypeEnumMap = {
  QuestionType.listenAndSelect: 'listenAndSelect',
  QuestionType.translateWord: 'translateWord',
  QuestionType.translateWordReverse: 'translateWordReverse',
  QuestionType.translateSentence: 'translateSentence',
  QuestionType.translateSentenceReverse: 'translateSentenceReverse',
  QuestionType.listenAndIdentify: 'listenAndIdentify',
  QuestionType.fillInTheBlanks: 'fillInTheBlanks',
  QuestionType.matchAudioToImage: 'matchAudioToImage',
  QuestionType.matchPairs: 'matchPairs',
  QuestionType.translateFromImage: 'translateFromImage',
  QuestionType.userTranslateSentence: 'userTranslateSentence',
  QuestionType.writeFromAudio: 'writeFromAudio',
};
