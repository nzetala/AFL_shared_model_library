enum UserRoleType
{
  admin,
  reviewer,
  editor,
}

extension UserRoleTypeExtension on UserRoleType {
  static UserRoleType? fromString(String value) {
    switch (value) {
      case 'admin':
        return UserRoleType.admin;
      case 'reviewer':
        return UserRoleType.reviewer;
      case 'editor':
        return UserRoleType.editor;
      default:
        return null;
    }
  }

  String get stringValue {
    switch (this) {
      case UserRoleType.admin:
        return 'admin';
      case UserRoleType.reviewer:
        return 'reviewer';
      case UserRoleType.editor:
        return 'editor';
      default:
        return '';
    }
  }
}