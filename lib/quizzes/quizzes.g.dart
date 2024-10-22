// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quizzes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quizzes _$QuizzesFromJson(Map<String, dynamic> json) => Quizzes(
      quizzesId: json['quizzesId'] as String,
      levels: (json['levels'] as List<dynamic>)
          .map((e) => Level.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuizzesToJson(Quizzes instance) => <String, dynamic>{
      'quizzesId': instance.quizzesId,
      'levels': instance.levels.map((e) => e.toJson()).toList(),
    };
