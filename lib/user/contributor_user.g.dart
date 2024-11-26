// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contributor_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContributorUser _$ContributorUserFromJson(Map<String, dynamic> json) =>
    ContributorUser(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      genderAgeCategory:
          $enumDecode(_$GenderAgeCategoryEnumMap, json['genderAgeCategory']),
      dateAcceptedTermsAndConditions:
          json['dateAcceptedTermsAndConditions'] as String,
      ipAddressWhenAcceptedTermsAndConditions:
          json['ipAddressWhenAcceptedTermsAndConditions'] as String?,
      contactPhone: json['contactPhone'] as String?,
      contactEmail: json['contactEmail'] as String?,
      photoURL: json['photoURL'] as String?,
      createdAt: json['createdAt'] as String?,
      lastLogin: json['lastLogin'] as String?,
      permissions: json['permissions'] == null
          ? null
          : ContributorUserPermission.fromJson(
              json['permissions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContributorUserToJson(ContributorUser instance) =>
    <String, dynamic>{
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
      'dateAcceptedTermsAndConditions': instance.dateAcceptedTermsAndConditions,
      'ipAddressWhenAcceptedTermsAndConditions':
          instance.ipAddressWhenAcceptedTermsAndConditions,
      'permissions': ContributorUser._permissionsToJson(instance.permissions),
    };

const _$GenderAgeCategoryEnumMap = {
  GenderAgeCategory.man: 'man',
  GenderAgeCategory.woman: 'woman',
  GenderAgeCategory.boy: 'boy',
  GenderAgeCategory.girl: 'girl',
};
