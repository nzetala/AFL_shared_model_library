// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lesson _$LessonFromJson(Map<String, dynamic> json) => Lesson(
      json['lessonId'] as String,
      Lesson._questionsFromJson(json['questions'] as List),
      json['avatar'] as String,
      json['name'] as String,
    );

Map<String, dynamic> _$LessonToJson(Lesson instance) => <String, dynamic>{
      'lessonId': instance.lessonId,
      'avatar': instance.avatar,
      'name': instance.name,
      'questions': Lesson._questionsToJson(instance.questions),
    };
