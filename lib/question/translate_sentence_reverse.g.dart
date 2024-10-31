// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translate_sentence_reverse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranslateSentenceReverse _$TranslateSentenceReverseFromJson(
        Map<String, dynamic> json) =>
    TranslateSentenceReverse(
      questionId: json['questionId'] as String,
      questionType:
          $enumDecodeNullable(_$QuestionTypeEnumMap, json['questionType']) ??
              QuestionType.translateSentenceReverse,
      phrase:
          TargetLanguageText.fromJson(json['phrase'] as Map<String, dynamic>),
      options: (json['options'] as List<dynamic>)
          .map((e) => NativeLanguageText.fromJson(e as Map<String, dynamic>))
          .toList(),
      answer: (json['answer'] as List<dynamic>)
          .map((e) => NativeLanguageText.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TranslateSentenceReverseToJson(
        TranslateSentenceReverse instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'questionType': _$QuestionTypeEnumMap[instance.questionType]!,
      'phrase': TranslateSentenceReverse._phraseToJson(instance.phrase),
      'options': TranslateSentenceReverse._optionsToJson(instance.options),
      'answer': TranslateSentenceReverse._answerToJson(instance.answer),
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
