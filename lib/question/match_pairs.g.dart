// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_pairs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchPairs _$MatchPairsFromJson(Map<String, dynamic> json) => MatchPairs(
      questionId: json['questionId'] as String,
      answer: (json['answer'] as List<dynamic>)
          .map((e) =>
              TargetToNativeLanguagePair.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MatchPairsToJson(MatchPairs instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'answer': MatchPairs._answerToJson(instance.answer),
    };
