import 'package:json_annotation/json_annotation.dart';

import '../word/native_language_text.dart';
import '../word/target_language_text.dart';

part 'target_to_native_language_pair.g.dart';

@JsonSerializable()
class TargetToNativeLanguagePair {

  @JsonKey(toJson: _targetLanguageToJson)
  TargetLanguageText targetLanguage;

  @JsonKey(toJson: _nativeLanguageToJson)
  NativeLanguageText nativeLanguage;

  TargetToNativeLanguagePair({required this.targetLanguage, required this.nativeLanguage});

  factory TargetToNativeLanguagePair.fromJson(Map<String, dynamic> json) => _$TargetToNativeLanguagePairFromJson(json);
  Map<String, dynamic> toJson() => _$TargetToNativeLanguagePairToJson(this);

  static Map<String, dynamic> _targetLanguageToJson(TargetLanguageText targetLanguage) {
    return targetLanguage.toJson();
  }

  static Map<String, dynamic> _nativeLanguageToJson(NativeLanguageText nativeLanguage) {
    return nativeLanguage.toJson();
  }
}