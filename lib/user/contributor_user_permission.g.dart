// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contributor_user_permission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContributorUserPermission _$ContributorUserPermissionFromJson(
        Map<String, dynamic> json) =>
    ContributorUserPermission(
      role: $enumDecodeNullable(_$ContributorUserRoleTypeEnumMap, json['role']),
      requestedCourseIds: (json['requestedCourseIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      authorizedCourseIds: (json['authorizedCourseIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      permissionEndDate: json['permissionEndDate'] == null
          ? null
          : DateTime.parse(json['permissionEndDate'] as String),
    );

Map<String, dynamic> _$ContributorUserPermissionToJson(
        ContributorUserPermission instance) =>
    <String, dynamic>{
      'role': _$ContributorUserRoleTypeEnumMap[instance.role],
      'requestedCourseIds': instance.requestedCourseIds,
      'authorizedCourseIds': instance.authorizedCourseIds,
      'permissionEndDate': instance.permissionEndDate?.toIso8601String(),
    };

const _$ContributorUserRoleTypeEnumMap = {
  ContributorUserRoleType.admin: 'admin',
  ContributorUserRoleType.reviewer: 'reviewer',
  ContributorUserRoleType.editor: 'editor',
};
