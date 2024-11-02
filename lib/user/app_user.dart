import 'package:afl_model_library/constants/language_type.dart';
import 'package:afl_model_library/constants/user_role_type.dart';

class AppUser {
  final String id;
  final String username;
  final String email;
  final UserRoleType role;
  final List<LanguageType> languages;

  const AppUser({
    required this.id,
    required this.username,
    required this.email,
    required this.role,
    required this.languages,
  });
}
