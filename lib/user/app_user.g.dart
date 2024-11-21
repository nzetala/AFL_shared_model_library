// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUser _$AppUserFromJson(Map<String, dynamic> json) => AppUser(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      genderAgeCategory:
          $enumDecode(_$GenderAgeCategoryEnumMap, json['genderAgeCategory']),
      contactPhone: json['contactPhone'] as String?,
      contactEmail: json['contactEmail'] as String?,
      role: $enumDecodeNullable(_$UserRoleTypeEnumMap, json['role']),
      requestedCourseIds: (json['requestedCourseIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      authorizedCourseIds: (json['authorizedCourseIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      photoURL: json['photoURL'] as String?,
      createdAt: json['createdAt'] as String?,
      lastLogin: json['lastLogin'] as String?,
    );

Map<String, dynamic> _$AppUserToJson(AppUser instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'genderAgeCategory':
          _$GenderAgeCategoryEnumMap[instance.genderAgeCategory]!,
      'contactPhone': instance.contactPhone,
      'contactEmail': instance.contactEmail,
      'photoURL': instance.photoURL,
      'createdAt': instance.createdAt,
      'lastLogin': instance.lastLogin,
      'role': _$UserRoleTypeEnumMap[instance.role],
      'requestedCourseIds': instance.requestedCourseIds,
      'authorizedCourseIds': instance.authorizedCourseIds,
    };

const _$GenderAgeCategoryEnumMap = {
  GenderAgeCategory.man: 'man',
  GenderAgeCategory.woman: 'woman',
  GenderAgeCategory.boy: 'boy',
  GenderAgeCategory.girl: 'girl',
};

const _$UserRoleTypeEnumMap = {
  UserRoleType.admin: 'admin',
  UserRoleType.reviewer: 'reviewer',
  UserRoleType.editor: 'editor',
};
