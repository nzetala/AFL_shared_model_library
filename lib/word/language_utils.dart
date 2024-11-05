import 'package:afl_model_library/word/target_language_text.dart';

import 'native_language_text.dart';

Map<String, dynamic> nativeLanguageTextToJson(
    NativeLanguageText? nativeLanguageText) {
  if (nativeLanguageText == null) {
    return {};
  }
  return nativeLanguageText.toJson();
}

Map<String, dynamic> targetLanguageTextToJson(
    TargetLanguageText? targetLanguageText) {
  if (targetLanguageText == null) {
    return {};
  }
  return targetLanguageText.toJson();
}
