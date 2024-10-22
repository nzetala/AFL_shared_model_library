// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'native_language_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NativeLanguageText _$NativeLanguageTextFromJson(Map<String, dynamic> json) =>
    NativeLanguageText(
      translations: (json['translations'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$SupportedLanguageEnumMap, k), e as String),
      ),
    );

Map<String, dynamic> _$NativeLanguageTextToJson(NativeLanguageText instance) =>
    <String, dynamic>{
      'translations': instance.translations
          .map((k, e) => MapEntry(_$SupportedLanguageEnumMap[k]!, e)),
    };

const _$SupportedLanguageEnumMap = {
  SupportedLanguage.en: 'en',
  SupportedLanguage.fr: 'fr',
};
