// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUser _$AppUserFromJson(Map<String, dynamic> json) => AppUser(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      contactPhone: json['contactPhone'] as String,
      contactEmail: json['contactEmail'] as String,
      role: $enumDecode(_$UserRoleTypeEnumMap, json['role']),
      authorizedCourseIds: (json['authorizedCourseIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AppUserToJson(AppUser instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'name': instance.name,
      'contactPhone': instance.contactPhone,
      'contactEmail': instance.contactEmail,
      'role': _$UserRoleTypeEnumMap[instance.role]!,
      'authorizedCourseIds': instance.authorizedCourseIds,
    };

const _$UserRoleTypeEnumMap = {
  UserRoleType.admin: 'admin',
  UserRoleType.reviewer: 'reviewer',
  UserRoleType.editor: 'editor',
};
