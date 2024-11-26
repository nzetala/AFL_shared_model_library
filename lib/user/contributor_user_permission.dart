import 'package:json_annotation/json_annotation.dart';
import '../constants/user_role_type.dart';

part 'contributor_user_permission.g.dart';

@JsonSerializable()
class ContributorUserPermission {
  final UserRoleType? role;
  final List<String>? requestedCourseIds;
  final List<String>? authorizedCourseIds;
  final DateTime? permissionEndDate;

  ContributorUserPermission({
    this.role,
    this.requestedCourseIds,
    this.authorizedCourseIds,
    this.permissionEndDate
  });

  factory ContributorUserPermission.fromJson(Map<String, dynamic> json) => _$ContributorUserPermissionFromJson(json);

  Map<String, dynamic> toJson() => _$ContributorUserPermissionToJson(this);
}