// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_language_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TargetLanguageText _$TargetLanguageTextFromJson(Map<String, dynamic> json) =>
    TargetLanguageText(
      text: json['text'] as String,
      audioUrl: json['audioUrl'] as String,
      romanizedText: json['romanizedText'] as String?,
    );

Map<String, dynamic> _$TargetLanguageTextToJson(TargetLanguageText instance) =>
    <String, dynamic>{
      'text': instance.text,
      'romanizedText': instance.romanizedText,
      'audioUrl': instance.audioUrl,
    };