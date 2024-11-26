import 'package:afl_model_library/constants/gender_age_category.dart';
import 'package:afl_model_library/user/contributor_user_permission.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contributor_user.g.dart';

@JsonSerializable()
class ContributorUser {
  final String id;
  final String username;
  final String email;
  final GenderAgeCategory genderAgeCategory;
  final String? contactPhone;
  final String? contactEmail;
  final String? photoURL;
  final String? createdAt;
  final String? lastLogin;
  final String dateAcceptedTermsAndConditions;
  final String? ipAddressWhenAcceptedTermsAndConditions;

  @JsonKey(toJson: _permissionsToJson)
  final ContributorUserPermission? permissions;

  const ContributorUser(
      {required this.id,
      required this.username,
      required this.email,
      required this.genderAgeCategory,
      required this.dateAcceptedTermsAndConditions,
      this.ipAddressWhenAcceptedTermsAndConditions,
      this.contactPhone,
      this.contactEmail,
      this.photoURL,
      this.createdAt,
      this.lastLogin,
      this.permissions});

  factory ContributorUser.fromJson(Map<String, dynamic> json) =>
      _$ContributorUserFromJson(json);

  Map<String, dynamic> toJson() => _$ContributorUserToJson(this);

  static Map<String, dynamic> _permissionsToJson(
      ContributorUserPermission? permissions) {
    if (permissions == null) {
      return {};
    }
    return permissions.toJson();
  }
}
