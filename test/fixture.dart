import 'package:afl_model_library/constants/supported_language.dart';
import 'package:afl_model_library/question/listen_and_select.dart';
import 'package:afl_model_library/word/native_language_text.dart';

ListenAndSelect listenAndSelect = ListenAndSelect(
  answer: [
    NativeLanguageText(translations: {
      SupportedLanguage.fr: 'option_fr_2',
      SupportedLanguage.en: 'option_en_2',
    }),
    NativeLanguageText(translations: {
      SupportedLanguage.fr: 'option_fr_3',
      SupportedLanguage.en: 'option_en_3',
    }),
  ],
  options: [
    NativeLanguageText(translations: {
      SupportedLanguage.fr: 'option_fr_1',
      SupportedLanguage.en: 'option_en_1',
    }),
    NativeLanguageText(translations: {
      SupportedLanguage.fr: 'option_fr_2',
      SupportedLanguage.en: 'option_en_2',
    }),
    NativeLanguageText(translations: {
      SupportedLanguage.fr: 'option_fr_3',
      SupportedLanguage.en: 'option_en_3',
    }),
  ],
  questionId: '68198aa8-f139-4459-86ce-f4c94ff8033d',
  audioUrl: 'audio.mp3.com',
);
