import 'package:afl_model_library/word/target_language_text.dart';
import 'package:json_annotation/json_annotation.dart';

import 'language_utils.dart';
import 'native_language_text.dart';

part 'dictionary_text.g.dart';

@JsonSerializable()
class DictionaryText {
  @JsonKey(toJson: targetLanguageTextToJson)
  final TargetLanguageText textToTranslate;

  @JsonKey(toJson: nativeLanguageTextToJson)
  final NativeLanguageText translatedText;

  DictionaryText({required this.textToTranslate, required this.translatedText});

  factory DictionaryText.fromJson(Map<String, dynamic> json) =>
      _$DictionaryTextFromJson(json);

  Map<String, dynamic> toJson() => _$DictionaryTextToJson(this);
}
