import 'package:json_annotation/json_annotation.dart';

import '../word/native_language_text.dart';
import '../word/target_language_text.dart';

part 'target_to_native_language_pair.g.dart';

@JsonSerializable()
class TargetToNativeLanguagePair {
  @JsonKey(name: 'target_language')
  TargetLanguageText targetLanguage;

  @JsonKey(name: 'native_language')
  NativeLanguageText nativeLanguage;

  TargetToNativeLanguagePair({required this.targetLanguage, required this.nativeLanguage});

  factory TargetToNativeLanguagePair.fromJson(Map<String, dynamic> json) => _$TargetToNativeLanguagePairFromJson(json);
  Map<String, dynamic> toJson() => _$TargetToNativeLanguagePairToJson(this);
}