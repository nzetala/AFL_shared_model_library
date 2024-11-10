import 'package:afl_model_library/word/target_language_text.dart';
import 'package:json_annotation/json_annotation.dart';

import '../metadata/metadata.dart';
import 'language_utils.dart';
import 'native_language_text.dart';

part 'lexicon_text.g.dart';

@JsonSerializable()
class LexiconText {
  final String textId;

  @JsonKey(toJson: targetLanguageTextToJson)
  final TargetLanguageText targetLanguageText;

  @JsonKey(toJson: nativeLanguageTextToJson)
  final NativeLanguageText nativeLanguageText;

  @JsonKey(toJson: metadataToJson)
  final BasicMetadata? metadata;

  LexiconText(
      {required this.targetLanguageText,
      required this.nativeLanguageText,
      required this.textId,
      this.metadata});

  factory LexiconText.fromJson(Map<String, dynamic> json) =>
      _$LexiconTextFromJson(json);

  Map<String, dynamic> toJson() => _$LexiconTextToJson(this);
}
