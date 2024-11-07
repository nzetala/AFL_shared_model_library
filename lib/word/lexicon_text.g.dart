// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lexicon_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LexiconText _$LexiconTextFromJson(Map<String, dynamic> json) => LexiconText(
      textToTranslate: TargetLanguageText.fromJson(
          json['textToTranslate'] as Map<String, dynamic>),
      translatedText: NativeLanguageText.fromJson(
          json['translatedText'] as Map<String, dynamic>),
      textId: json['textId'] as String,
    );

Map<String, dynamic> _$LexiconTextToJson(LexiconText instance) =>
    <String, dynamic>{
      'textId': instance.textId,
      'textToTranslate': targetLanguageTextToJson(instance.textToTranslate),
      'translatedText': nativeLanguageTextToJson(instance.translatedText),
    };
