// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'native_language_to_string_pair .dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NativeLanguageToStringPair _$NativeLanguageToStringPairFromJson(
        Map<String, dynamic> json) =>
    NativeLanguageToStringPair(
      nativeLanguage: NativeLanguageText.fromJson(
          json['nativeLanguage'] as Map<String, dynamic>),
      image: json['image'] as String,
    );

Map<String, dynamic> _$NativeLanguageToStringPairToJson(
        NativeLanguageToStringPair instance) =>
    <String, dynamic>{
      'nativeLanguage': instance.nativeLanguage,
      'image': instance.image,
    };
