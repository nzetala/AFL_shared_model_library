enum ContributorUserRoleType
{
  admin,
  reviewer,
  editor,
  speaker,
  viewer,
  guest
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
      case 'speaker':
        return ContributorUserRoleType.speaker;
      case 'viewer':
        return ContributorUserRoleType.viewer;
      default:
        return ContributorUserRoleType.guest;
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
      case ContributorUserRoleType.speaker:
        return 'speaker';
      case ContributorUserRoleType.viewer:
        return 'viewer';
      default:
        return 'guest';
    }
  }
}