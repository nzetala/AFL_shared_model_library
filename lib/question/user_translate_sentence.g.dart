// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_translate_sentence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserTranslateSentence _$UserTranslateSentenceFromJson(
        Map<String, dynamic> json) =>
    UserTranslateSentence(
      questionId: json['questionId'] as String,
      questionType:
          $enumDecodeNullable(_$QuestionTypeEnumMap, json['questionType']) ??
              QuestionType.userTranslateSentence,
      sentenceToTranslate: TargetLanguageText.fromJson(
          json['sentenceToTranslate'] as Map<String, dynamic>),
      answer:
          NativeLanguageText.fromJson(json['answer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserTranslateSentenceToJson(
        UserTranslateSentence instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'questionType': _$QuestionTypeEnumMap[instance.questionType]!,
      'sentenceToTranslate': UserTranslateSentence._sentenceToTranslateToJson(
          instance.sentenceToTranslate),
      'answer': UserTranslateSentence._answerToJson(instance.answer),
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
