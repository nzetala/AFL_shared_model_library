// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_pairs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchPairs _$MatchPairsFromJson(Map<String, dynamic> json) => MatchPairs(
      questionId: json['questionId'] as String,
      questionType:
          $enumDecodeNullable(_$QuestionTypeEnumMap, json['questionType']) ??
              QuestionType.matchPairs,
      answer: (json['answer'] as List<dynamic>)
          .map((e) =>
              TargetToNativeLanguagePair.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MatchPairsToJson(MatchPairs instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'questionType': _$QuestionTypeEnumMap[instance.questionType]!,
      'answer': MatchPairs._answerToJson(instance.answer),
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
