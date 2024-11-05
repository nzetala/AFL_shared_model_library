// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryText _$DictionaryTextFromJson(Map<String, dynamic> json) =>
    DictionaryText(
      textToTranslate: TargetLanguageText.fromJson(
          json['textToTranslate'] as Map<String, dynamic>),
      translatedText: NativeLanguageText.fromJson(
          json['translatedText'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DictionaryTextToJson(DictionaryText instance) =>
    <String, dynamic>{
      'textToTranslate': targetLanguageTextToJson(instance.textToTranslate),
      'translatedText': nativeLanguageTextToJson(instance.translatedText),
    };
