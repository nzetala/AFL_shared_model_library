enum ContributorUserRoleType
{
  admin,
  reviewer,
  editor,
}

extension UserRoleTypeExtension on ContributorUserRoleType {
  static ContributorUserRoleType? fromString(String value) {
    switch (value) {
      case 'admin':
        return ContributorUserRoleType.admin;
      case 'reviewer':
        return ContributorUserRoleType.reviewer;
      case 'editor':
        return ContributorUserRoleType.editor;
      default:
        return null;
    }
  }

  String get stringValue {
    switch (this) {
      case ContributorUserRoleType.admin:
        return 'admin';
      case ContributorUserRoleType.reviewer:
        return 'reviewer';
      case ContributorUserRoleType.editor:
        return 'editor';
      default:
        return '';
    }
  }
}