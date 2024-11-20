// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chapter _$ChapterFromJson(Map<String, dynamic> json) => Chapter(
      chapterNumber: json['chapterNumber'] as String,
      metadata: json['metadata'] == null
          ? null
          : BasicMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChapterToJson(Chapter instance) => <String, dynamic>{
      'chapterNumber': instance.chapterNumber,
      'metadata': metadataToJson(instance.metadata),
    };
