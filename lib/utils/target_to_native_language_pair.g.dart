// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_to_native_language_pair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TargetToNativeLanguagePair _$TargetToNativeLanguagePairFromJson(
        Map<String, dynamic> json) =>
    TargetToNativeLanguagePair(
      targetLanguage: TargetLanguageText.fromJson(
          json['target_language'] as Map<String, dynamic>),
      nativeLanguage: NativeLanguageText.fromJson(
          json['native_language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TargetToNativeLanguagePairToJson(
        TargetToNativeLanguagePair instance) =>
    <String, dynamic>{
      'target_language': instance.targetLanguage,
      'native_language': instance.nativeLanguage,
    };
