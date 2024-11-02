enum LanguageType
{
  yemba,
  nguemba,
  bulu,
}

extension LanguageTypeExtension on LanguageType {
  static LanguageType? fromString(String value) {
    switch (value) {
      case 'yemba':
        return LanguageType.yemba;
      case 'nguemba':
        return LanguageType.nguemba;
      case 'bulu':
        return LanguageType.bulu;
      default:
        return null;
    }
  }

  String get stringValue {
    switch (this) {
      case LanguageType.yemba:
        return 'yemba';
      case LanguageType.nguemba:
        return 'nguemba';
      case LanguageType.bulu:
        return 'bulu';
      default:
        return '';
    }
  }
}