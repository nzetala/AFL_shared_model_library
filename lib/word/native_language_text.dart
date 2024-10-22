import 'package:json_annotation/json_annotation.dart';

import '../constants/supported_language.dart';

part 'native_language_text.g.dart';

@JsonSerializable()
class NativeLanguageText {
  final String value;
  final Map<SupportedLanguage, String> translations;

  NativeLanguageText({required this.value, required this.translations});

  factory NativeLanguageText.fromJson(Map<String, dynamic> json) => _$NativeLanguageTextFromJson(json);
  Map<String, dynamic> toJson() => _$NativeLanguageTextToJson(this);
}