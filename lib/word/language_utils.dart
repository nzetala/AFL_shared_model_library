import 'native_language_text.dart';

Map<String, dynamic> nativeLanguageTextToJson(
    NativeLanguageText? nativeLanguageText) {
  if (nativeLanguageText == null) {
    return {};
  }
  return nativeLanguageText.toJson();
}
