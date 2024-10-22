// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learn.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Learn _$LearnFromJson(Map<String, dynamic> json) => Learn(
      courses: (json['courses'] as List<dynamic>)
          .map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LearnToJson(Learn instance) => <String, dynamic>{
      'courses': instance.courses.map((e) => e.toJson()).toList(),
    };
