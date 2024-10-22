enum SupportedLanguage {
  en, // English
  fr, // Francais
}

extension SupportedLanguageExtension on SupportedLanguage {
  static SupportedLanguage? fromString(String value) {
    switch (value) {
      case 'en':
        return SupportedLanguage.en;
      case 'fr':
        return SupportedLanguage.fr;
      default:
        return null;
    }
  }

  String get stringValue {
    switch (this) {
      case SupportedLanguage.en:
        return 'en';
      case SupportedLanguage.fr:
        return 'fr';
      default:
        return '';
    }
  }
}
