// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listen_and_select.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListenAndSelect _$ListenAndSelectFromJson(Map<String, dynamic> json) =>
    ListenAndSelect(
      questionId: json['questionId'] as String,
      questionType:
          $enumDecodeNullable(_$QuestionTypeEnumMap, json['questionType']) ??
              QuestionType.listenAndSelect,
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
      'questionType': _$QuestionTypeEnumMap[instance.questionType]!,
      'audioUrl': instance.audioUrl,
      'answer': ListenAndSelect._answerToJson(instance.answer),
      'options': ListenAndSelect._optionsToJson(instance.options),
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
