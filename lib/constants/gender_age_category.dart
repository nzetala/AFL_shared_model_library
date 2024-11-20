enum GenderAgeCategory
{
  man,
  woman,
  boy,
  girl,
}

extension GenderAgeCategoryExtension on GenderAgeCategory {
  static GenderAgeCategory? fromString(String value) {
    switch (value) {
      case 'man':
        return GenderAgeCategory.man;
      case 'woman':
        return GenderAgeCategory.woman;
      case 'boy':
        return GenderAgeCategory.boy;
      case 'girl':
        return GenderAgeCategory.girl;
      default:
        return null;
    }
  }

  String get stringValue {
    switch (this) {
      case GenderAgeCategory.man:
        return 'man';
      case GenderAgeCategory.woman:
        return 'woman';
      case GenderAgeCategory.boy:
        return 'boy';
      case GenderAgeCategory.girl:
        return 'girl';
      default:
        return '';
    }
  }
}