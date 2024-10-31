// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listen_and_identify.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListenAndIdentify _$ListenAndIdentifyFromJson(Map<String, dynamic> json) =>
    ListenAndIdentify(
      questionId: json['questionId'] as String,
      questionType:
          $enumDecodeNullable(_$QuestionTypeEnumMap, json['questionType']) ??
              QuestionType.listenAndIdentify,
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
      'questionType': _$QuestionTypeEnumMap[instance.questionType]!,
      'audioUrl': instance.audioUrl,
      'options': ListenAndIdentify._optionsToJson(instance.options),
      'answer': ListenAndIdentify._answerToJson(instance.answer),
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
