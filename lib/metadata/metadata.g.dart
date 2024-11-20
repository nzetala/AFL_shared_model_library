// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicMetadata _$BasicMetadataFromJson(Map<String, dynamic> json) =>
    BasicMetadata(
      creator: json['creator'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      changedHistory: (json['changedHistory'] as List<dynamic>?)
          ?.map((e) => ChangedAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BasicMetadataToJson(BasicMetadata instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'creator': instance.creator,
      'changedHistory':
          BasicMetadata._changedHistoryToJson(instance.changedHistory),
    };

ChangedAction _$ChangedActionFromJson(Map<String, dynamic> json) =>
    ChangedAction(
      author: json['author'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      changes: Map<String, String>.from(json['changes'] as Map),
    );

Map<String, dynamic> _$ChangedActionToJson(ChangedAction instance) =>
    <String, dynamic>{
      'author': instance.author,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'changes': instance.changes,
    };

AudioMetadata _$AudioMetadataFromJson(Map<String, dynamic> json) =>
    AudioMetadata(
      creator: json['creator'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      courseId: json['courseId'] as String?,
      wordId: json['wordId'] as String?,
      wordText: json['wordText'] as String,
    );

Map<String, dynamic> _$AudioMetadataToJson(AudioMetadata instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'creator': instance.creator,
      'courseId': instance.courseId,
      'wordId': instance.wordId,
      'wordText': instance.wordText,
    };
