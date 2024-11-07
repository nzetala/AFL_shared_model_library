// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lexicon_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LexiconText _$LexiconTextFromJson(Map<String, dynamic> json) => LexiconText(
      targetLanguageText: TargetLanguageText.fromJson(
          json['targetLanguageText'] as Map<String, dynamic>),
      nativeLanguageText: NativeLanguageText.fromJson(
          json['nativeLanguageText'] as Map<String, dynamic>),
      textId: json['textId'] as String,
    );

Map<String, dynamic> _$LexiconTextToJson(LexiconText instance) =>
    <String, dynamic>{
      'textId': instance.textId,
      'targetLanguageText':
          targetLanguageTextToJson(instance.targetLanguageText),
      'nativeLanguageText':
          nativeLanguageTextToJson(instance.nativeLanguageText),
    };
