import 'package:afl_model_library/constants/user_role_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_user.g.dart';

@JsonSerializable()
class AppUser {
  final String id;
  final String username;
  final String email;
  final String name;
  final String contactPhone;
  final String contactEmail;
  final UserRoleType role;
  final List<String> authorizedCourseIds;

  const AppUser({
    required this.id,
    required this.username,
    required this.email,
    required this.name,
    required this.contactPhone,
    required this.contactEmail,
    required this.role,
    required this.authorizedCourseIds,
  });

  factory AppUser.fromJson(Map<String, dynamic> json) => _$AppUserFromJson(json);
  Map<String, dynamic> toJson() => _$AppUserToJson(this);
}
