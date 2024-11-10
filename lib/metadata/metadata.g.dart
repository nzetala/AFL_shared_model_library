// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
      creator: json['creator'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      changedHistory: (json['changedHistory'] as List<dynamic>?)
          ?.map((e) => ChangedAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'creator': instance.creator,
      'changedHistory': Metadata._changedHistoryToJson(instance.changedHistory),
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
