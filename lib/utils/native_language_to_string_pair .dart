import 'package:json_annotation/json_annotation.dart';

import '../word/native_language_text.dart';

part 'native_language_to_string_pair .g.dart';

@JsonSerializable()
class NativeLanguageToStringPair {

  @JsonKey(toJson: _nativeLanguageToJson)
  final NativeLanguageText nativeLanguage;
  final String image;

  NativeLanguageToStringPair({required this.nativeLanguage, required this.image});

  factory NativeLanguageToStringPair.fromJson(Map<String, dynamic> json) => _$NativeLanguageToStringPairFromJson(json);
  Map<String, dynamic> toJson() => _$NativeLanguageToStringPairToJson(this);

  static Map<String, dynamic> _nativeLanguageToJson(NativeLanguageText nativeLanguage) {
    return nativeLanguage.toJson();
  }
}