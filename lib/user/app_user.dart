import 'package:afl_model_library/constants/gender_age_category.dart';
import 'package:afl_model_library/constants/user_role_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_user.g.dart';

@JsonSerializable()
class AppUser {
  final String id;
  final String username;
  final String email;
  final String displayName;
  final GenderAgeCategory genderAgeCategory;
  final String? contactPhone;
  final String? contactEmail;
  final String? photoURL;
  final String? createdAt;
  final String? lastLogin;
  final UserRoleType? role;
  final List<String>? authorizedCourseIds;

  const AppUser({
    required this.id,
    required this.username,
    required this.email,
    required this.displayName,
    required this.genderAgeCategory,
    this.contactPhone,
    this.contactEmail,
    this.role,
    this.authorizedCourseIds,
    this.photoURL,
    this.createdAt,
    this.lastLogin,
  });

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);

  Map<String, dynamic> toJson() => _$AppUserToJson(this);
}
